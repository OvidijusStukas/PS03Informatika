package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.CarEntity;
import edu.informatika.semestrinis.entity.InvoiceEntity;
import edu.informatika.semestrinis.entity.InvoiceTypeEntity;
import edu.informatika.semestrinis.helper.AuthenticationHelper;
import edu.informatika.semestrinis.repository.BaseRepository;
import edu.informatika.semestrinis.repository.InvoiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("invoices")
public class InvoiceController {

    private final InvoiceRepository invoiceRepository;
    private final BaseRepository<CarEntity> carRepository;
    private final AuthenticationHelper authenticationHelper;
    private final BaseRepository<InvoiceTypeEntity> invoiceTypeRepository;

    @Autowired
    public InvoiceController(InvoiceRepository invoiceRepository, AuthenticationHelper authenticationHelper, BaseRepository<CarEntity> carRepository, BaseRepository<InvoiceTypeEntity> invoiceTypeRepository) {
        this.invoiceRepository = invoiceRepository;
        this.authenticationHelper = authenticationHelper;
        this.carRepository = carRepository;
        this.invoiceTypeRepository = invoiceTypeRepository;
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public ModelAndView index() {
        List<InvoiceEntity> invoices = invoiceRepository.getEntities(InvoiceEntity.class);

        if (authenticationHelper.hasRole("ROLE_USER"))
            invoices.removeIf(invoice -> invoice.getCar().getUser() == null || invoice.getCar().getUser().getUserId() != authenticationHelper.getCurrentUserId());

        if (authenticationHelper.hasRole("ROLE_EMPLOYEE"))
            invoices.removeIf(invoice -> invoice.getCar().getShop().getShopId() != authenticationHelper.getCurrentUser().getShopEntity().getShopId());

        ModelAndView modelAndView = new ModelAndView("invoice/index");
        modelAndView.addObject("invoices", invoices);

        return modelAndView;
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE')")
    @RequestMapping(value = "generate", method = RequestMethod.GET)
    public ModelAndView generate() {
        invoiceRepository.generateInvoices();

        return new ModelAndView("redirect:/invoices");
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE')")
    @RequestMapping(value = "edit", method = RequestMethod.POST)
    public ModelAndView edit(@ModelAttribute InvoiceEntity invoiceEntity) {
        invoiceEntity.setCar(carRepository.getEntity(CarEntity.class, invoiceEntity.getCarId()));
        invoiceEntity.setType(invoiceTypeRepository.getEntity(InvoiceTypeEntity.class, invoiceEntity.getTypeId()));
        invoiceRepository.updateEntity(invoiceEntity);

        return new ModelAndView("redirect:/invoices");
    }
}
