package edu.informatika.semestrinis.model;

import edu.informatika.semestrinis.entity.ServiceEntity;

import java.util.List;

public class ServiceModel {
  private List<ServiceEntity> services;

  public List<ServiceEntity> getServices() {
    return services;
  }

  public void setServices(List<ServiceEntity> services) {
    this.services = services;
  }
}
