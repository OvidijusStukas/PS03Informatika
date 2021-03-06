package edu.informatika.semestrinis.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "InvoiceType")
public class InvoiceTypeEntity implements Serializable {
  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "InvoiceTypeId")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int invoiceTypeId;

  @Column(name = "Name")
  private String name;

  public int getInvoiceTypeId() {
    return invoiceTypeId;
  }

  public void setInvoiceTypeId(int invoiceTypeId) {
    this.invoiceTypeId = invoiceTypeId;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}
