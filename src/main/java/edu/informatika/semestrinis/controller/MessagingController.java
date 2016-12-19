package edu.informatika.semestrinis.controller;

import edu.informatika.semestrinis.entity.ChatGroupEntity;
import edu.informatika.semestrinis.entity.MessageEntity;
import edu.informatika.semestrinis.entity.ParticipantEntity;
import edu.informatika.semestrinis.entity.UserEntity;
import edu.informatika.semestrinis.helper.AuthenticationHelper;
import edu.informatika.semestrinis.repository.BaseRepository;
import edu.informatika.semestrinis.repository.ParticipantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("messages")
public class MessagingController {

    private final AuthenticationHelper authenticationHelper;
    private final BaseRepository<UserEntity> userRepository;
    private final BaseRepository<MessageEntity> messageRepository;
    private final BaseRepository<ChatGroupEntity> chatGroupRepository;
    private final ParticipantRepository participantRepository;

    @Autowired
    public MessagingController(AuthenticationHelper authenticationHelper, BaseRepository<UserEntity> userRepository, BaseRepository<MessageEntity> messageRepository, BaseRepository<ChatGroupEntity> chatGroupRepository, ParticipantRepository participantRepository) {
        this.authenticationHelper = authenticationHelper;
        this.userRepository = userRepository;
        this.messageRepository = messageRepository;
        this.chatGroupRepository = chatGroupRepository;
        this.participantRepository = participantRepository;
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public ModelAndView index() {

        List<ChatGroupEntity> groups = chatGroupRepository.getEntities(ChatGroupEntity.class);
        ModelAndView modelAndView = new ModelAndView("messaging/index");
        modelAndView.addObject("groups", groups);

        return modelAndView;
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = {"createNewChat"}, method = RequestMethod.GET)
    public ModelAndView createNewChat(@RequestParam String chatMessage) {

        ChatGroupEntity chatGroup = new ChatGroupEntity();
        chatGroup.setName("Pokalbis");
        chatGroup.setCreationDate(new Date());
        chatGroup.setLastMessageDate(new Date());
        chatGroup.setActive(true);

        int id = chatGroupRepository.insertEntity(chatGroup);
        List<UserEntity> users = userRepository.getEntities(UserEntity.class);
        users.removeIf(u -> u.getRole().getName().equals("ROLE_USER") || u.getRole().getName().equals("ROLE_ADMIN"));

        UserEntity currentUser = authenticationHelper.getCurrentUser();
        users.add(currentUser);

        ChatGroupEntity updatedChatGroup = chatGroupRepository.getEntity(ChatGroupEntity.class, id);
        for (UserEntity user : users) {
            ParticipantEntity participant = new ParticipantEntity();

            participant.setUser(user);
            participant.setIpAddress("Fake");
            participant.setEmail(user.getEmail());

            int participantId = participantRepository.insertEntity(participant);

            if (user.getUserId() == currentUser.getUserId()) {
                MessageEntity message = new MessageEntity();
                message.setParticipant(participantRepository.getEntity(ParticipantEntity.class, participantId));
                message.setSendDate(new Date());
                message.setText(chatMessage);

                messageRepository.insertEntity(message);

                updatedChatGroup.setLastMessageDate(new Date());
            }

            updatedChatGroup.getParticipants().add(participantRepository.getEntity(ParticipantEntity.class, participantId));
        }

        chatGroupRepository.updateEntity(updatedChatGroup);

        return new ModelAndView("redirect:/messages");
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = {"disableChatGroup"}, method = RequestMethod.POST)
    public ModelAndView disableChatGroup(@RequestBody MultiValueMap<String,String> formData){

        ChatGroupEntity chatGroupEntity = chatGroupRepository.getEntity(ChatGroupEntity.class , Integer.parseInt(formData.getFirst("chatGroupId")));
        chatGroupEntity.setActive(false);
        chatGroupRepository.updateEntity(chatGroupEntity);

        return new ModelAndView("redirect:/messages");
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = {"deleteChatGroup"}, method = RequestMethod.POST)
    public ModelAndView deleteChatGroup(@RequestBody MultiValueMap<String,String> formData) {
        chatGroupRepository.deleteEntity(ChatGroupEntity.class,  Integer.parseInt(formData.getFirst("chatGroupId")));

        return new ModelAndView("redirect:/messages");
    }

    @ResponseBody
    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = {"showChatGroupHistory"}, method = RequestMethod.GET)
    public ChatGroupEntity showChatGroupHistory(@RequestParam int chatGroupId) {
        return chatGroupRepository.getEntity(ChatGroupEntity.class , chatGroupId);
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = {"addChatParticipant"}, method = RequestMethod.GET)
    public ModelAndView addChatGroupHistory(@RequestParam int chatGroupId, @RequestParam int userId){
        ChatGroupEntity chatGroupEntity = chatGroupRepository.getEntity(ChatGroupEntity.class, chatGroupId);
        chatGroupEntity.getParticipants().add(participantRepository.getByUserId(userId));

        chatGroupRepository.updateEntity(chatGroupEntity);

        return new ModelAndView("redirect:/messages");
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = {"sendEmailEnable"}, method = RequestMethod.GET)
    public ModelAndView enableEmailMessages(@RequestParam int chatGroupId, @RequestParam String email){

        //suranda chat group pagal id ir i duota emaila issiuncia visus messagus

        return new ModelAndView("redirect:/messages");
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping(value = {"sendMessage"}, method = RequestMethod.GET)
    public ModelAndView sendMessage(@RequestParam int chatGroupId, @RequestParam String message) {

        ParticipantEntity participantEntity = participantRepository.getByUserId(authenticationHelper.getCurrentUserId());

        MessageEntity messageEntity = new MessageEntity();
        messageEntity.setText(message);
        messageEntity.setParticipant(participantEntity);
        messageEntity.setSendDate(new Date());

        messageRepository.insertEntity(messageEntity);

        return new ModelAndView("redirect:/messages");
    }
}
