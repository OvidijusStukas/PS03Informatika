package edu.informatika.semestrinis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("invoices")
public class InvoiceController {

    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public ModelAndView index() {

        ModelAndView modelAndView = new ModelAndView("invoice/index");

        return modelAndView;
    }
}
