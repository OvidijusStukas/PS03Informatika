package edu.informatika.semestrinis.entity;

import javax.persistence.*;

@Table(name = "CarPhoto")
public class CarPhotoEntity {

  @Id
  @Column(name = "CarPhotoId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int carPhotoId;

  @OneToOne(fetch = FetchType.EAGER, mappedBy = "CarId")
  private CarEntity car;

  @Column(name = "Name")
  private String name;

  @Column(name = "MimeType")
  private String mimeType;

  @Column(name = "Data")
  private byte[] data;

  @Column(name = "Description")
  private String description;

  public int getCarPhotoId() {
    return carPhotoId;
  }

  public void setCarPhotoId(int carPhotoId) {
    this.carPhotoId = carPhotoId;
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

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }
}
