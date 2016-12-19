package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.ChatGroupEntity;
import edu.informatika.semestrinis.entity.UserEntity;
import edu.informatika.semestrinis.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("messages")
public class MessagingController {

    private final BaseRepository<UserEntity> userRepository;
    private final BaseRepository<ChatGroupEntity> chatGroupRepository;

    @Autowired
    public MessagingController(BaseRepository<UserEntity> userRepository, BaseRepository<ChatGroupEntity> chatGroupRepository) {
        this.userRepository = userRepository;
        this.chatGroupRepository = chatGroupRepository;
    }

    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public ModelAndView index() {

        List<UserEntity> users = userRepository.getEntities(UserEntity.class);
        ModelAndView modelAndView = new ModelAndView("messaging/index");
        modelAndView.addObject("users",users);

        return modelAndView;
    }

    @RequestMapping(value = {"createNewChat"}, method = RequestMethod.GET)
    public ModelAndView createNewChat(@RequestParam String chatMessage) {

        //chat group pakurimas ir message prisegimas kartu su visais darbuotojais kaip participant ir dabartiniu useriu

        return new ModelAndView("redirect:/messages");
    }

    @RequestMapping(value = {"disableChatGroup"}, method = RequestMethod.GET)
    public ModelAndView disableChatGroup(@RequestParam int chatGroupId){

        //suranda chat groupa pagal id ir isActive = false;

        return new ModelAndView("redirect:/messages");
    }

    @RequestMapping(value = {"deleteChatGroup"}, method = RequestMethod.GET)
    public ModelAndView deleteChatGroup(@RequestParam int chatGroupId){

        //suranda chat groupa pagal id delete

        return new ModelAndView("redirect:/messages");
    }

    @RequestMapping(value = {"showChatGroupHistory"}, method = RequestMethod.GET)
    public ModelAndView showChatGroupHistory(@RequestParam int chatGroupId){

        //suranda chat groupa pagal id ir gražina visas message

        return new ModelAndView("redirect:/messages");
    }

    @RequestMapping(value = {"addChatParticipant"}, method = RequestMethod.GET)
    public ModelAndView showChatGroupHistory(@RequestParam int chatGroupId, @RequestParam int userId){

        //suranda chat group pagal id ir prikabina participanta su tokiu useriu

        return new ModelAndView("redirect:/messages");
    }

    @RequestMapping(value = {"sendEmailEnable"}, method = RequestMethod.GET)
    public ModelAndView enableEmailMessages(@RequestParam int chatGroupId, @RequestParam String email){

        //suranda chat group pagal id ir i duota emaila issiuncia visus messagus

        return new ModelAndView("redirect:/messages");
    }

}
