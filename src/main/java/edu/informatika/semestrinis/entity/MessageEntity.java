package edu.informatika.semestrinis.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Message")
public class MessageEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "MessageId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int messageId;

  @JsonIgnore
  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "ParticipantId")
  private ParticipantEntity participant;

  @Column(name = "Text")
  private String text;

  @Column(name = "SendDate")
  private Date sendDate;

  @Column(name = "IsDeleted")
  private boolean isDeleted;

  public int getMessageId() {
    return messageId;
  }

  public void setMessageId(int messageId) {
    this.messageId = messageId;
  }

  public ParticipantEntity getParticipant() {
    return participant;
  }

  public void setParticipant(ParticipantEntity participant) {
    this.participant = participant;
  }

  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public Date getSendDate() {
    return sendDate;
  }

  public void setSendDate(Date sendDate) {
    this.sendDate = sendDate;
  }

  public boolean isDeleted() {
    return isDeleted;
  }

  public void setDeleted(boolean deleted) {
    isDeleted = deleted;
  }
}
