package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "UserRole")
public class UserRoleEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "UserRoleId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int userRoleId;

  @Column(name = "UserRoleName")
  private String name;

  public int getUserRoleId() {
    return userRoleId;
  }

  public void setUserRoleId(int userRoleId) {
    this.userRoleId = userRoleId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}
