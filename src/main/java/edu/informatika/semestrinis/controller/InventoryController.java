package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.CarConfigurationPositionEntity;
import edu.informatika.semestrinis.entity.CarEntity;
import edu.informatika.semestrinis.repository.BaseRepository;
import edu.informatika.semestrinis.repository.CarConfigurationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("inventory")
public class InventoryController {

  private final BaseRepository<CarEntity> carRepository;
  private final CarConfigurationRepository carConfigurationRepository;

  @Autowired
  public InventoryController(BaseRepository<CarEntity> carRepository, CarConfigurationRepository carConfigurationRepository) {
    this.carRepository = carRepository;
    this.carConfigurationRepository = carConfigurationRepository;
  }

  @PreAuthorize("hasRole('ROLE_ADMIN')")
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
    List<CarConfigurationPositionEntity> brandPositions = carConfigurationRepository.getPositions("brand");

    ModelAndView modelAndView = new ModelAndView("inventory/add");
    modelAndView.addObject("model", new CarEntity());

    return modelAndView;
  }

  @PreAuthorize("hasRole('ROLE_ADMIN')")
  @RequestMapping(value = "add", method = RequestMethod.POST)
  public ModelAndView add(@ModelAttribute("model") CarEntity carEntity) {
    carRepository.insertEntity(carEntity);

    return new ModelAndView("redirect:/add");
  }

}
