package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "ChatGroup")
public class ChatGroupEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "ChatGroupId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int chatGroupId;

  @Column(name = "Name")
  private String name;

  @Column(name = "CreationDate")
  private Date creationDate;

  @Column(name = "LastMessageDate")
  private Date lastMessageDate;

  @Column(name = "IsActive")
  private boolean isActive;

  public int getChatGroupId() {
    return chatGroupId;
  }

  public void setChatGroupId(int chatGroupId) {
    this.chatGroupId = chatGroupId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Date getCreationDate() {
    return creationDate;
  }

  public void setCreationDate(Date creationDate) {
    this.creationDate = creationDate;
  }

  public Date getLastMessageDate() {
    return lastMessageDate;
  }

  public void setLastMessageDate(Date lastMessageDate) {
    this.lastMessageDate = lastMessageDate;
  }

  public boolean isActive() {
    return isActive;
  }

  public void setActive(boolean active) {
    isActive = active;
  }
}
