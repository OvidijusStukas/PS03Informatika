package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.CarEntity;
import edu.informatika.semestrinis.entity.InvoiceEntity;
import edu.informatika.semestrinis.entity.ServiceEntity;
import edu.informatika.semestrinis.entity.ServiceTypeEntity;
import edu.informatika.semestrinis.helper.AuthenticationHelper;
import edu.informatika.semestrinis.model.ServiceModel;
import edu.informatika.semestrinis.repository.BaseRepository;
import edu.informatika.semestrinis.repository.InvoiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

@Controller
@RequestMapping(value = "service")
public class ServiceController {

  private final InvoiceRepository invoiceRepository;
  private final AuthenticationHelper authenticationHelper;
  private final BaseRepository<CarEntity> carRepository;
  private final BaseRepository<ServiceEntity> serviceRepository;
  private final BaseRepository<ServiceTypeEntity> serviceTypeRepository;

  @Autowired
  public ServiceController(InvoiceRepository invoiceRepository, AuthenticationHelper authenticationHelper, BaseRepository<CarEntity> carRepository, BaseRepository<ServiceEntity> serviceRepository, BaseRepository<ServiceTypeEntity> serviceTypeRepository) {
    this.invoiceRepository = invoiceRepository;
    this.authenticationHelper = authenticationHelper;
    this.carRepository = carRepository;
    this.serviceRepository = serviceRepository;
    this.serviceTypeRepository = serviceTypeRepository;
  }

  @ResponseBody
  @PreAuthorize("isAuthenticated()")
  @RequestMapping(value = "all", method = RequestMethod.GET)
  public List<ServiceEntity> all() {
    List<ServiceTypeEntity> serviceTypes = serviceTypeRepository.getEntities(ServiceTypeEntity.class);
    List<ServiceEntity> services = new ArrayList<>(serviceTypes.size());

    for (ServiceTypeEntity serviceType : serviceTypes) {
      ServiceEntity serviceEntity = new ServiceEntity();
      serviceEntity.setDescription(serviceType.getName());
      serviceEntity.setPrice(round(ThreadLocalRandom.current().nextDouble(100, 300), BigDecimal.ROUND_HALF_UP));
      serviceEntity.setTypeId(serviceType.getServiceTypeId());
      services.add(serviceEntity);
    }

    return services;
  }

  @PreAuthorize("isAuthenticated()")
  @RequestMapping(value = "order", method = RequestMethod.POST)
  public ModelAndView order(@ModelAttribute ServiceModel serviceModel) {
    ServiceEntity serviceEntity = serviceModel.getServices().stream().filter(ServiceEntity::isActive).findFirst().orElse(null);
    if (serviceEntity != null) {
      CarEntity carEntity = carRepository.getEntity(CarEntity.class, serviceEntity.getCarId());
      carEntity.setIsSold(true);
      carEntity.setUser(authenticationHelper.getCurrentUser());
      carRepository.updateEntity(carEntity);

      serviceModel.getServices().stream().filter(ServiceEntity::isActive).forEach(service -> {
        service.setType(serviceTypeRepository.getEntity(ServiceTypeEntity.class, service.getTypeId()));
        service.setCar(carRepository.getEntity(CarEntity.class, service.getCarId()));

        serviceRepository.insertEntity(service);
      });
    }

    return new ModelAndView("redirect:/inventory");
  }

  @ResponseBody
  @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE')")
  @RequestMapping(value = "get", method = RequestMethod.GET)
  public List<ServiceEntity> get(@RequestParam int invoiceId) {
    InvoiceEntity invoice = invoiceRepository.getEntity(InvoiceEntity.class, invoiceId);

    List<ServiceEntity> services = serviceRepository.getEntities(ServiceEntity.class);
    services.removeIf(service -> service.getCar().getCarId() != invoice.getCar().getCarId());

    return services;
  }

  private static double round(double unrounded, int roundingMode)
  {
    BigDecimal bd = new BigDecimal(unrounded);
    BigDecimal rounded = bd.setScale(2, roundingMode);
    return rounded.doubleValue();
  }
}
