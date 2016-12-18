package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.ShopEntity;
import edu.informatika.semestrinis.entity.UserEntity;
import edu.informatika.semestrinis.entity.UserRoleEntity;
import edu.informatika.semestrinis.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("user")
public class UserController {

  private final BCryptPasswordEncoder passwordEncoder;
  private final BaseRepository<ShopEntity> shopRepository;
  private final BaseRepository<UserEntity> userRepository;
  private final BaseRepository<UserRoleEntity> roleRepository;

  @Autowired
  public UserController(BCryptPasswordEncoder passwordEncoder, BaseRepository<ShopEntity> shopRepository, BaseRepository<UserEntity> userRepository, BaseRepository<UserRoleEntity> roleRepository) {
    this.passwordEncoder = passwordEncoder;
    this.shopRepository = shopRepository;
    this.userRepository = userRepository;
    this.roleRepository = roleRepository;
  }

  @PreAuthorize("isAnonymous()")
  @RequestMapping(value = {"", "/", "/login"}, method = RequestMethod.GET)
  public ModelAndView index() {
    return new ModelAndView("user/login");
  }

  @PreAuthorize("hasRole('ROLE_ADMIN')")
  @RequestMapping(value = "management", method = RequestMethod.GET)
  public ModelAndView management() {
    List<UserEntity> users = userRepository.getEntities(UserEntity.class);
    ModelAndView modelAndView = new ModelAndView("user/management");
    modelAndView.addObject("shops", shopRepository.getEntities(ShopEntity.class));
    modelAndView.addObject("model", new UserEntity());
    modelAndView.addObject("employees",
      users.stream()
        .filter(userEntity -> userEntity.getRole().getName().equalsIgnoreCase("ROLE_EMPLOYEE"))
        .collect(Collectors.toCollection(ArrayList::new)));

    return modelAndView;
  }

  @PreAuthorize("hasRole('ROLE_ADMIN')")
  @RequestMapping(value = {"employee/add"}, method = RequestMethod.POST)
  public ModelAndView addEmployee(@ModelAttribute("model") UserEntity userEntity) {
    userEntity.setActive(true);
    userEntity.setPassword(passwordEncoder.encode(userEntity.getPassword()));

    UserRoleEntity role = roleRepository.getEntity(UserRoleEntity.class, 2);
    userEntity.setRole(role);
    userEntity.setShopEntity(shopRepository.getEntity(ShopEntity.class, userEntity.getShopId()));
    userRepository.insertEntity(userEntity);

    return new ModelAndView("redirect:/user/management");
  }

  @PreAuthorize("isAnonymous()")
  @RequestMapping(value = {"registration"}, method = RequestMethod.GET)
  public ModelAndView registration() {
    ModelAndView modelAndView = new ModelAndView("user/registration");
    modelAndView.addObject("model", new UserEntity());
    return modelAndView;
  }

  @PreAuthorize("isAnonymous()")
  @RequestMapping(value = {"registration"}, method = RequestMethod.POST)
  public ModelAndView registration(@ModelAttribute("model") UserEntity userEntity) {
    userEntity.setActive(true);
    userEntity.setPassword(passwordEncoder.encode(userEntity.getPassword()));

    UserRoleEntity role = roleRepository.getEntity(UserRoleEntity.class, 3);
    userEntity.setRole(role);
    userRepository.insertEntity(userEntity);

    return new ModelAndView("user/login");
  }
}
