package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "MessageItem")
public class MessageItemEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "MessageItemId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int messageItemId;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "MessageId")
  private MessageEntity message;

  @Column(name = "MimeType")
  private String mimeType;

  @Column(name = "Data")
  private byte[] data;

  @Column(name = "Name")
  private String name;

  public int getMessageItemId() {
    return messageItemId;
  }

  public void setMessageItemId(int messageItemId) {
    this.messageItemId = messageItemId;
  }

  public MessageEntity getMessage() {
    return message;
  }

  public void setMessage(MessageEntity message) {
    this.message = message;
  }

  public String getMimeType() {
    return mimeType;
  }

  public void setMimeType(String mimeType) {
    this.mimeType = mimeType;
  }

  public byte[] getData() {
    return data;
  }

  public void setData(byte[] data) {
    this.data = data;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}
