package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.ShopEntity;
import edu.informatika.semestrinis.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "shop")
public class ShopController {

  private final BaseRepository<ShopEntity> shopRepository;

  @Autowired
  public ShopController(BaseRepository<ShopEntity> shopRepository) {
    this.shopRepository = shopRepository;
  }

  @PreAuthorize("hasRole('ROLE_ADMIN')")
  @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
  public ModelAndView index() {
    List<ShopEntity> shops = shopRepository.getEntities(ShopEntity.class);
    ModelAndView modelAndView = new ModelAndView("shop/index");
    modelAndView.addObject("shops", shops);
    modelAndView.addObject("model", new ShopEntity());

    return modelAndView;
  }

  @PreAuthorize("hasRole('ROLE_ADMIN')")
  @RequestMapping(value = "add", method = RequestMethod.POST)
  public ModelAndView add(@ModelAttribute("model") ShopEntity shopEntity) {
    shopRepository.insertEntity(shopEntity);

    return new ModelAndView("redirect:/add");
  }
}
