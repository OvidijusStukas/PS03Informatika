package edu.informatika.semestrinis.entity;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "EmailMessage")
public class EmailMessageEntity {
  @OneToOne(fetch = FetchType.EAGER, mappedBy = "MessageId")
  private MessageEntity message;

  @Column(name = "SentDate")
  private Date sentDate;

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
