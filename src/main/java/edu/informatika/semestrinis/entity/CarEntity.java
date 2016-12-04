package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Car")
public class CarEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "CarId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int carId;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "ShopId")
  private ShopEntity shop;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "BrandId")
  private CarConfigurationPositionEntity brand;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "ModelId")
  private CarConfigurationPositionEntity model;

  @Column(name = "Year")
  private Date year;

  @Column(name = "Price")
  private double price;

  @Column(name = "DistanceTraveled")
  private long distanceTraveled;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "FuelTypeId")
  private CarConfigurationPositionEntity fuel;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "ChassisTypeId")
  private CarConfigurationPositionEntity chassis;

  @Column(name = "WorkingCapacity")
  private double workingCapacity;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "TransmissionTypeId")
  private CarConfigurationPositionEntity transmission;

  @Column(name = "Power")
  private int power;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "WheelPositionId")
  private CarConfigurationPositionEntity wheelPosition;

  @Column(name = "SeatNumber")
  private int seatNumber;

  @Column(name = "DoorNumber")
  private int doorNumber;

  @Column(name = "Color")
  private String color;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "DriveTypeId")
  private CarConfigurationPositionEntity drive;

  @Column(name = "WithDefects")
  private boolean withDefects;

  @Column(name = "CentralLock")
  private boolean centralLock;

  @Column(name = "AirBags")
  private boolean airBags;

  @Column(name = "IsSold")
  private boolean isSold;

  public int getCarId() {
    return carId;
  }

  public void setCarId(int carId) {
    this.carId = carId;
  }

  public ShopEntity getShop() {
    return shop;
  }

  public void setShop(ShopEntity shop) {
    this.shop = shop;
  }

  public CarConfigurationPositionEntity getBrand() {
    return brand;
  }

  public void setBrand(CarConfigurationPositionEntity brand) {
    this.brand = brand;
  }

  public CarConfigurationPositionEntity getModel() {
    return model;
  }

  public void setModel(CarConfigurationPositionEntity model) {
    this.model = model;
  }

  public Date getYear() {
    return year;
  }

  public void setYear(Date year) {
    this.year = year;
  }

  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }

  public long getDistanceTraveled() {
    return distanceTraveled;
  }

  public void setDistanceTraveled(long distanceTraveled) {
    this.distanceTraveled = distanceTraveled;
  }

  public CarConfigurationPositionEntity getFuel() {
    return fuel;
  }

  public void setFuel(CarConfigurationPositionEntity fuel) {
    this.fuel = fuel;
  }

  public CarConfigurationPositionEntity getChassis() {
    return chassis;
  }

  public void setChassis(CarConfigurationPositionEntity chassis) {
    this.chassis = chassis;
  }

  public double getWorkingCapacity() {
    return workingCapacity;
  }

  public void setWorkingCapacity(double workingCapacity) {
    this.workingCapacity = workingCapacity;
  }

  public CarConfigurationPositionEntity getTransmission() {
    return transmission;
  }

  public void setTransmission(CarConfigurationPositionEntity transmission) {
    this.transmission = transmission;
  }

  public int getPower() {
    return power;
  }

  public void setPower(int power) {
    this.power = power;
  }

  public CarConfigurationPositionEntity getWheelPosition() {
    return wheelPosition;
  }

  public void setWheelPosition(CarConfigurationPositionEntity wheelPosition) {
    this.wheelPosition = wheelPosition;
  }

  public int getSeatNumber() {
    return seatNumber;
  }

  public void setSeatNumber(int seatNumber) {
    this.seatNumber = seatNumber;
  }

  public int getDoorNumber() {
    return doorNumber;
  }

  public void setDoorNumber(int doorNumber) {
    this.doorNumber = doorNumber;
  }

  public String getColor() {
    return color;
  }

  public void setColor(String color) {
    this.color = color;
  }

  public CarConfigurationPositionEntity getDrive() {
    return drive;
  }

  public void setDrive(CarConfigurationPositionEntity drive) {
    this.drive = drive;
  }

  public boolean isWithDefects() {
    return withDefects;
  }

  public void setWithDefects(boolean withDefects) {
    this.withDefects = withDefects;
  }

  public boolean isCentralLock() {
    return centralLock;
  }

  public void setCentralLock(boolean centralLock) {
    this.centralLock = centralLock;
  }

  public boolean isAirBags() {
    return airBags;
  }

  public void setAirBags(boolean airBags) {
    this.airBags = airBags;
  }

  public boolean isSold() {
    return isSold;
  }

  public void setSold(boolean sold) {
    isSold = sold;
  }
}
