package edu.informatika.semestrinis.controller;

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

@Controller
@RequestMapping("user")
public class UserController {

  private final BCryptPasswordEncoder passwordEncoder;
  private final BaseRepository<UserEntity> userRepository;
  private final BaseRepository<UserRoleEntity> roleRepository;

  @Autowired
  public UserController(BCryptPasswordEncoder passwordEncoder, BaseRepository<UserEntity> userRepository, BaseRepository<UserRoleEntity> roleRepository) {
    this.passwordEncoder = passwordEncoder;
    this.userRepository = userRepository;
    this.roleRepository = roleRepository;
  }

  @PreAuthorize("isAnonymous()")
  @RequestMapping(value = {"", "/", "/login"})
  public ModelAndView index() {
    return new ModelAndView("user/login");
  }

  @RequestMapping("management")
  public ModelAndView management() {
    return new ModelAndView("user/management");
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
