package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.util.Date;

@Table(name = "Participant")
public class ParticipantEntity {

  @Id
  @Column(name = "ParticipantId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int participantId;

  @OneToOne(fetch = FetchType.EAGER, mappedBy = "ChatGroupId")
  private ChatGroupEntity chatGroup;

  @OneToOne(fetch = FetchType.EAGER, mappedBy = "UserId")
  private UserEntity user;

  @Column(name = "IpAddress")
  private String ipAddress;

  @Column(name = "LastMessageDate")
  private Date lastMessageDate;

  @Column(name = "IsBlocked")
  private boolean isBlocked;

  @Column(name = "Email")
  private String email;

  public int getParticipantId() {
    return participantId;
  }

  public void setParticipantId(int participantId) {
    this.participantId = participantId;
  }

  public ChatGroupEntity getChatGroup() {
    return chatGroup;
  }

  public void setChatGroup(ChatGroupEntity chatGroup) {
    this.chatGroup = chatGroup;
  }

  public UserEntity getUser() {
    return user;
  }

  public void setUser(UserEntity user) {
    this.user = user;
  }

  public String getIpAddress() {
    return ipAddress;
  }

  public void setIpAddress(String ipAddress) {
    this.ipAddress = ipAddress;
  }

  public Date getLastMessageDate() {
    return lastMessageDate;
  }

  public void setLastMessageDate(Date lastMessageDate) {
    this.lastMessageDate = lastMessageDate;
  }

  public boolean isBlocked() {
    return isBlocked;
  }

  public void setBlocked(boolean blocked) {
    isBlocked = blocked;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }
}
