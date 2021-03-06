package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.CarConfigurationPositionEntity;
import edu.informatika.semestrinis.entity.CarEntity;
import edu.informatika.semestrinis.entity.ShopEntity;
import edu.informatika.semestrinis.helper.AuthenticationHelper;
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

  private final AuthenticationHelper authenticationHelper;
  private final BaseRepository<CarEntity> carRepository;
  private final BaseRepository<ShopEntity> shopRepository;
  private final CarConfigurationRepository carConfigurationRepository;

  @Autowired
  public InventoryController(AuthenticationHelper authenticationHelper, BaseRepository<CarEntity> carRepository, BaseRepository<ShopEntity> shopRepository, CarConfigurationRepository carConfigurationRepository) {
    this.authenticationHelper = authenticationHelper;
    this.carRepository = carRepository;
    this.shopRepository = shopRepository;
    this.carConfigurationRepository = carConfigurationRepository;
  }

  @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE', 'ROLE_USER')")
  @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
  public ModelAndView index() {
    List<CarEntity> cars = carRepository.getEntities(CarEntity.class);
    List<ShopEntity> shops = shopRepository.getEntities(ShopEntity.class);
    List<CarConfigurationPositionEntity> brands = carConfigurationRepository.getPositions("brand");
    List<CarConfigurationPositionEntity> fuelTypes = carConfigurationRepository.getPositions("fuelType");
    List<CarConfigurationPositionEntity> chassisTypes = carConfigurationRepository.getPositions("chassisType");
    List<CarConfigurationPositionEntity> transmissionTypes = carConfigurationRepository.getPositions("transmissionType");
    List<CarConfigurationPositionEntity> wheelPositions = carConfigurationRepository.getPositions("wheelPosition");
    List<CarConfigurationPositionEntity> driveTypes = carConfigurationRepository.getPositions("driveType");

    if (authenticationHelper.hasRole("ROLE_USER")) {
      cars.removeIf(CarEntity::getIsSold);
    }

    if (authenticationHelper.hasRole("ROLE_EMPLOYEE")) {
      cars.removeIf(car -> car.getShop().getShopId() != authenticationHelper.getCurrentUser().getShopEntity().getShopId());
    }

    ModelAndView modelAndView = new ModelAndView("inventory/index");
    modelAndView.addObject("cars", cars);
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

  @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE')")
  @RequestMapping(value = "add", method = RequestMethod.POST)
  public ModelAndView add(@ModelAttribute CarEntity carEntity) {
    carEntity.setShop(shopRepository.getEntity(ShopEntity.class, carEntity.getShopId()));
    carEntity.setBrand(carConfigurationRepository.getEntity(CarConfigurationPositionEntity.class, carEntity.getBrandId()));
    carEntity.setModel(carConfigurationRepository.getEntity(CarConfigurationPositionEntity.class, carEntity.getModelId()));
    carEntity.setFuel(carConfigurationRepository.getEntity(CarConfigurationPositionEntity.class, carEntity.getFuelId()));
    carEntity.setChassis(carConfigurationRepository.getEntity(CarConfigurationPositionEntity.class, carEntity.getChassisId()));
    carEntity.setTransmission(carConfigurationRepository.getEntity(CarConfigurationPositionEntity.class, carEntity.getTransmissionId()));
    carEntity.setWheelPosition(carConfigurationRepository.getEntity(CarConfigurationPositionEntity.class, carEntity.getWheelPositionId()));
    carEntity.setDrive(carConfigurationRepository.getEntity(CarConfigurationPositionEntity.class, carEntity.getDriveId()));

    if (carEntity.getCarId() == 0)
      carRepository.insertEntity(carEntity);
    else
      carRepository.updateEntity(carEntity);

    return new ModelAndView("redirect:/inventory");
  }

  @ResponseBody
  @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE')")
  @RequestMapping(value = "getModels", method = RequestMethod.GET)
  public List<CarConfigurationPositionEntity> getModels(@RequestParam String brand) {
    return carConfigurationRepository.getModelPositions(brand);
  }

  @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_EMPLOYEE', 'ROLE_USER')")
  @RequestMapping(value = "order", method = RequestMethod.GET)
  public ModelAndView order(@RequestParam int id) {
    CarEntity car = carRepository.getEntity(CarEntity.class, id);
    ModelAndView modelAndView = new ModelAndView("inventory/order");
    modelAndView.addObject("model", car);

    return modelAndView;
  }
}
