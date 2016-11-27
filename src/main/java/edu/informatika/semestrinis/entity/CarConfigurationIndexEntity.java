package edu.informatika.semestrinis.entity;

import javax.persistence.*;

@Table(name = "CarConfigurationIndex")
public class CarConfigurationIndexEntity {

  @Id
  @Column(name = "CarConfigurationIndexId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int carConfigurationIndexId;

  @Column(name = "Name")
  private String name;

  public int getCarConfigurationIndexId() {
    return carConfigurationIndexId;
  }

  public void setCarConfigurationIndexId(int carConfigurationIndexId) {
    this.carConfigurationIndexId = carConfigurationIndexId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}
