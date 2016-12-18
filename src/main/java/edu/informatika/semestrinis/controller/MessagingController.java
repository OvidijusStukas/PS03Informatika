package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.ShopEntity;
import edu.informatika.semestrinis.entity.UserEntity;
import edu.informatika.semestrinis.entity.UserRoleEntity;
import edu.informatika.semestrinis.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("messages")
public class MessagingController {

    private final BaseRepository<UserEntity> userRepository;

    @Autowired
    public MessagingController(BaseRepository<UserEntity> userRepository) {
        this.userRepository = userRepository;
    }

    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public ModelAndView index() {

        List<UserEntity> users = userRepository.getEntities(UserEntity.class);
        ModelAndView modelAndView = new ModelAndView("messaging/index");
        modelAndView.addObject("users",users);

        return modelAndView;
    }

}
