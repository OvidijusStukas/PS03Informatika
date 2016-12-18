package edu.informatika.semestrinis.repository;

import edu.informatika.semestrinis.entity.InvoiceEntity;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

@Repository
public class InvoiceRepository extends BaseRepository<InvoiceEntity> {

  public void generateInvoices() {
    Session s = hibernateTemplate.getSessionFactory().openSession();
    s.createStoredProcedureCall("Usp__Generate_Invoices").getOutputs();
  }
}
