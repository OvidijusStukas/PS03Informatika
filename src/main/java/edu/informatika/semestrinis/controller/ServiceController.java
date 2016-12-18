package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.ServiceEntity;
import edu.informatika.semestrinis.entity.ServiceTypeEntity;
import edu.informatika.semestrinis.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

@Controller
@RequestMapping(value = "service")
public class ServiceController {

  private final BaseRepository<ServiceTypeEntity> serviceTypeRepository;

  @Autowired
  public ServiceController(BaseRepository<ServiceTypeEntity> serviceTypeRepository) {
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

  private static double round(double unrounded, int roundingMode)
  {
    BigDecimal bd = new BigDecimal(unrounded);
    BigDecimal rounded = bd.setScale(2, roundingMode);
    return rounded.doubleValue();
  }
}
