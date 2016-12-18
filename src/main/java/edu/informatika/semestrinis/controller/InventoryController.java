package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.CarConfigurationPositionEntity;
import edu.informatika.semestrinis.entity.CarEntity;
import edu.informatika.semestrinis.entity.ShopEntity;
import edu.informatika.semestrinis.repository.BaseRepository;
import edu.informatika.semestrinis.repository.CarConfigurationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("inventory")
public class InventoryController {

  private final BaseRepository<CarEntity> carRepository;
  private final BaseRepository<ShopEntity> shopRepository;
  private final CarConfigurationRepository carConfigurationRepository;

  @Autowired
  public InventoryController(BaseRepository<CarEntity> carRepository, BaseRepository<ShopEntity> shopRepository, CarConfigurationRepository carConfigurationRepository) {
    this.carRepository = carRepository;
    this.shopRepository = shopRepository;
    this.carConfigurationRepository = carConfigurationRepository;
  }

  @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE')")
  @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
  public ModelAndView index() {
    List<CarEntity> cars = carRepository.getEntities(CarEntity.class);
    ModelAndView modelAndView = new ModelAndView("inventory/index");
    modelAndView.addObject("cars", cars);

    return modelAndView;
  }

  @PreAuthorize("hasRole('ROLE_ADMIN')")
  @RequestMapping(value = "add", method = RequestMethod.GET)
  public ModelAndView add() {
    List<ShopEntity> shops = shopRepository.getEntities(ShopEntity.class);
    List<CarConfigurationPositionEntity> brands = carConfigurationRepository.getPositions("brand");
    List<CarConfigurationPositionEntity> fuelTypes = carConfigurationRepository.getPositions("fuelType");
    List<CarConfigurationPositionEntity> chassisTypes = carConfigurationRepository.getPositions("chassisType");
    List<CarConfigurationPositionEntity> transmissionTypes = carConfigurationRepository.getPositions("transmissionType");
    List<CarConfigurationPositionEntity> wheelPositions = carConfigurationRepository.getPositions("wheelPosition");
    List<CarConfigurationPositionEntity> driveTypes = carConfigurationRepository.getPositions("driveType");

    ModelAndView modelAndView = new ModelAndView("inventory/add");
    modelAndView.addObject("model", new CarEntity());
    modelAndView.addObject("shops", shops);
    modelAndView.addObject("brands", brands);
    modelAndView.addObject("fuelTypes", fuelTypes);
    modelAndView.addObject("chassisTypes", chassisTypes);
    modelAndView.addObject("transmissionTypes", transmissionTypes);
    modelAndView.addObject("wheelPositions", wheelPositions);
    modelAndView.addObject("driveTypes", driveTypes);

    return modelAndView;
  }

  @PreAuthorize("hasRole('ROLE_ADMIN')")
  @RequestMapping(value = "add", method = RequestMethod.POST)
  public ModelAndView add(@ModelAttribute("model") CarEntity carEntity) {
    carRepository.insertEntity(carEntity);

    return new ModelAndView("redirect:/");
  }

  @ResponseBody
  @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE')")
  @RequestMapping(value = "getModels", method = RequestMethod.GET)
  public List<CarConfigurationPositionEntity> getModels(@RequestParam String brandValue) {
    return carConfigurationRepository.getPositions("model", brandValue);
  }

  @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE')")
  @RequestMapping(value = "edit", method = RequestMethod.GET)
  public ModelAndView edit(@RequestParam int id) {
    CarEntity car = carRepository.getEntity(CarEntity.class, id);
    ModelAndView modelAndView = new ModelAndView("inventory/edit");
    modelAndView.addObject("model", car);

    return modelAndView;
  }

  @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE')")
  @RequestMapping(value = "edit", method = RequestMethod.POST)
  public ModelAndView edit(@ModelAttribute("model") CarEntity car) {
    carRepository.updateEntity(car);

    return new ModelAndView("redirect:/");
  }
}
