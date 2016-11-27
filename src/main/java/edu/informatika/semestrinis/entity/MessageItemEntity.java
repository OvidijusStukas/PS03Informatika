package edu.informatika.semestrinis.entity;

import javax.persistence.*;

@Table(name = "MessageItem")
public class MessageItemEntity {

  @Id
  @Column(name = "MessageItemId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int messageItemId;

  @OneToOne(fetch = FetchType.EAGER, mappedBy = "MessageId")
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
