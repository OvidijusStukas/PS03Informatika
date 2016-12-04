package edu.informatika.semestrinis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = {"", "/"})
public class HomeController {

  @RequestMapping(value = {"", "/"})
  public ModelAndView index() {
    return new ModelAndView("home/index");
  }
}
