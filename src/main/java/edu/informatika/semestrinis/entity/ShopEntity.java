package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Shop")
public class ShopEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "ShopId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int shopId;

  @Column(name = "Country")
  private String country;

  @Column(name = "City")
  private String city;

  @Column(name = "Street")
  private String street;

  @Column(name = "StreetNumber")
  private String streetNumber;

  @Column(name = "ZipCode")
  private String zipCode;

  @Column(name = "Currency")
  private String currency;

  public int getShopId() {
    return shopId;
  }

  public void setShopId(int shopId) {
    this.shopId = shopId;
  }

  public String getCountry() {
    return country;
  }

  public void setCountry(String country) {
    this.country = country;
  }

  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

  public String getStreet() {
    return street;
  }

  public void setStreet(String street) {
    this.street = street;
  }

  public String getStreetNumber() {
    return streetNumber;
  }

  public void setStreetNumber(String streetNumber) {
    this.streetNumber = streetNumber;
  }

  public String getZipCode() {
    return zipCode;
  }

  public void setZipCode(String zipCode) {
    this.zipCode = zipCode;
  }

  public String getCurrency() {
    return currency;
  }

  public void setCurrency(String currency) {
    this.currency = currency;
  }
}
