package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "User")
public class UserEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "UserId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int userId;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "UserRoleId")
  private UserRoleEntity role;

  @OneToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "ShopId")
  private ShopEntity shopEntity;

  @Transient
  private int shopId;

  @Column(name = "UserName")
  private String userName;

  @Column(name = "Password")
  private String password;

  @Column(name = "Email")
  private String email;

  @Column(name = "Name")
  private String name;

  @Column(name = "LastName")
  private String lastName;

  @Column(name = "Address")
  private String address;

  @Column(name = "IsActive")
  private boolean isActive;

  public int getShopId() {
    return shopId;
  }

  public void setShopId(int shopId) {
    this.shopId = shopId;
  }

  public int getUserId() {
    return userId;
  }

  public void setUserId(int userId) {
    this.userId = userId;
  }

  public UserRoleEntity getRole() {
    return role;
  }

  public void setRole(UserRoleEntity role) {
    this.role = role;
  }

  public ShopEntity getShopEntity() {
    return shopEntity;
  }

  public void setShopEntity(ShopEntity shopEntity) {
    this.shopEntity = shopEntity;
  }

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public boolean isActive() {
    return isActive;
  }

  public void setActive(boolean active) {
    isActive = active;
  }
}
