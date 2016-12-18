package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.InvoiceEntity;
import edu.informatika.semestrinis.helper.AuthenticationHelper;
import edu.informatika.semestrinis.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("invoices")
public class InvoiceController {

    private final AuthenticationHelper authenticationHelper;
    private final BaseRepository<InvoiceEntity> invoiceRepository;

    @Autowired
    public InvoiceController(BaseRepository<InvoiceEntity> invoiceRepository, AuthenticationHelper authenticationHelper) {
        this.invoiceRepository = invoiceRepository;
        this.authenticationHelper = authenticationHelper;
    }

    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public ModelAndView index() {
        List<InvoiceEntity> invoices = invoiceRepository.getEntities(InvoiceEntity.class);

        if (authenticationHelper.hasRole("ROLE_USER"))
            invoices.removeIf(invoice -> invoice.getCar().getUser().getUserId() == authenticationHelper.getCurrentUserId());

        ModelAndView modelAndView = new ModelAndView("invoice/index");
        modelAndView.addObject("invoices", invoices);

        return modelAndView;
    }
}
