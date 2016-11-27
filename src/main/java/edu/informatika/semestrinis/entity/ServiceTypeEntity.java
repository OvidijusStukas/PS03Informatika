package edu.informatika.semestrinis.entity;

import javax.persistence.*;

@Table(name = "ServiceType")
public class ServiceTypeEntity {
  @Id
  @Column(name = "ServiceTypeId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int serviceTypeId;

  @Column(name = "ServiceName")
  private String name;

  public int getServiceTypeId() {
    return serviceTypeId;
  }

  public void setServiceTypeId(int serviceTypeId) {
    this.serviceTypeId = serviceTypeId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}
