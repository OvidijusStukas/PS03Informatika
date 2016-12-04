package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "ServiceRating")
public class ServiceRatingEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "ServiceRatingId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int serviceRatingId;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "ServiceId")
  private ServiceEntity service;

  @Column(name = "Rating")
  private int rating;

  @Column(name = "Description")
  private String description;

  @Column(name = "CreationDate")
  private Date creationDate;

  @Column(name = "IsActive")
  private boolean isActive;

  public int getServiceRatingId() {
    return serviceRatingId;
  }

  public void setServiceRatingId(int serviceRatingId) {
    this.serviceRatingId = serviceRatingId;
  }

  public ServiceEntity getService() {
    return service;
  }

  public void setService(ServiceEntity service) {
    this.service = service;
  }

  public int getRating() {
    return rating;
  }

  public void setRating(int rating) {
    this.rating = rating;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Date getCreationDate() {
    return creationDate;
  }

  public void setCreationDate(Date creationDate) {
    this.creationDate = creationDate;
  }

  public boolean isActive() {
    return isActive;
  }

  public void setActive(boolean active) {
    isActive = active;
  }
}
