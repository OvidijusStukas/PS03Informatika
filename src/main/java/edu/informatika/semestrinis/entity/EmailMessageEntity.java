package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "EmailMessage")
public class EmailMessageEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "EmailMessageId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int emailMessageId;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "MessageId")
  private MessageEntity message;

  @Column(name = "SentDate")
  private Date sentDate;

  public int getEmailMessageId() {
    return emailMessageId;
  }

  public void setEmailMessageId(int emailMessageId) {
    this.emailMessageId = emailMessageId;
  }

  public MessageEntity getMessage() {
    return message;
  }

  public void setMessage(MessageEntity message) {
    this.message = message;
  }

  public Date getSentDate() {
    return sentDate;
  }

  public void setSentDate(Date sentDate) {
    this.sentDate = sentDate;
  }
}
