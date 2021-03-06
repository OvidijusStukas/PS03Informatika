package edu.informatika.semestrinis.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Invoice")
public class InvoiceEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "InvoiceId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int invoiceId;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "InvoiceTypeId")
  private InvoiceTypeEntity type;

  @Transient
  private int typeId;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "CarId")
  private CarEntity car;

  @Transient
  private int carId;

  @Column(name = "Name")
  private String name;

  @Column(name = "Number")
  private String number;

  @Column(name = "SenderName")
  private String senderName;

  @Column(name = "ReceiverName")
  private String receiverName;

  @Column(name = "TotalPrice")
  private double totalPrice;

  @Column(name = "GenerationDate")
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date generationDate;

  @Column(name = "Status")
  private String status;

  public int getInvoiceId() {
    return invoiceId;
  }

  public void setInvoiceId(int invoiceId) {
    this.invoiceId = invoiceId;
  }

  public InvoiceTypeEntity getType() {
    return type;
  }

  public void setType(InvoiceTypeEntity type) {
    this.type = type;
  }

  public CarEntity getCar() {
    return car;
  }

  public void setCar(CarEntity car) {
    this.car = car;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getNumber() {
    return number;
  }

  public void setNumber(String number) {
    this.number = number;
  }

  public String getSenderName() {
    return senderName;
  }

  public void setSenderName(String senderName) {
    this.senderName = senderName;
  }

  public String getReceiverName() {
    return receiverName;
  }

  public void setReceiverName(String receiverName) {
    this.receiverName = receiverName;
  }

  public double getTotalPrice() {
    return totalPrice;
  }

  public void setTotalPrice(double totalPrice) {
    this.totalPrice = totalPrice;
  }

  public Date getGenerationDate() {
    return generationDate;
  }

  public void setGenerationDate(Date generationDate) {
    this.generationDate = generationDate;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public int getCarId() {
    return carId;
  }

  public void setCarId(int carId) {
    this.carId = carId;
  }

  public int getTypeId() {
    return typeId;
  }

  public void setTypeId(int typeId) {
    this.typeId = typeId;
  }
}
