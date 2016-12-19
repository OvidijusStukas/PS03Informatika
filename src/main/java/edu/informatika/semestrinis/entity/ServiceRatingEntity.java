package edu.informatika.semestrinis.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.format.annotation.DateTimeFormat;

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

  @JsonIgnore
  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "ServiceId")
  private ServiceEntity service;

  @Column(name = "Rating")
  private int rating;

  @Column(name = "Description")
  private String description;

  @Column(name = "CreationDate")
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
  @DateTimeFormat(pattern = "yyyy-MM-dd")
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

  public boolean getIsActive() {
    return isActive;
  }

  public void setIsActive(boolean active) {
    isActive = active;
  }
}
