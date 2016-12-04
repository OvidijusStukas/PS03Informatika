package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Service")
public class ServiceEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "ServiceId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int serviceId;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "ServiceTypeId")
  private ServiceTypeEntity type;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "CarId")
  private CarEntity car;

  @Column(name = "Price")
  private double price;

  @Column(name = "Description")
  private String description;

  @Column(name = "IsActive")
  private boolean isActive;

  public int getServiceId() {
    return serviceId;
  }

  public void setServiceId(int serviceId) {
    this.serviceId = serviceId;
  }

  public ServiceTypeEntity getType() {
    return type;
  }

  public void setType(ServiceTypeEntity type) {
    this.type = type;
  }

  public CarEntity getCar() {
    return car;
  }

  public void setCar(CarEntity car) {
    this.car = car;
  }

  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public boolean isActive() {
    return isActive;
  }

  public void setActive(boolean active) {
    isActive = active;
  }
}
