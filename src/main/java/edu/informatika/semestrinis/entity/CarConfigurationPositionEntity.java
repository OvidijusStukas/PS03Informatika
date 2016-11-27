package edu.informatika.semestrinis.entity;

import javax.persistence.*;

@Table(name = "CarConfigurationPosition")
public class CarConfigurationPositionEntity {

  @Id
  @Column(name = "CarConfigurationPositionId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int carConfigurationPositionId;

  @OneToOne(fetch = FetchType.EAGER, mappedBy = "CarConfigurationIndexId")
  private CarConfigurationIndexEntity index;

  @Column(name = "Name")
  private String name;

  @Column(name = "Value")
  private String value;

  public int getCarConfigurationPositionId() {
    return carConfigurationPositionId;
  }

  public void setCarConfigurationPositionId(int carConfigurationPositionId) {
    this.carConfigurationPositionId = carConfigurationPositionId;
  }

  public CarConfigurationIndexEntity getIndex() {
    return index;
  }

  public void setIndex(CarConfigurationIndexEntity index) {
    this.index = index;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }
}
