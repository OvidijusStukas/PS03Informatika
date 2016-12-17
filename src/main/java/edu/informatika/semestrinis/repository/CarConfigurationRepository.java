package edu.informatika.semestrinis.repository;

import edu.informatika.semestrinis.entity.CarConfigurationPositionEntity;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

@Repository
public class CarConfigurationRepository extends BaseRepository<CarConfigurationPositionEntity> {

  public List<CarConfigurationPositionEntity> getPositions(String indexName) {
    Session session = hibernateTemplate.getSessionFactory().openSession();
    Query query = session.createQuery("SELECT P FROM CarConfigurationPositionEntity P INNER JOIN P.index I WHERE I.Name = " + indexName);
    return (List<CarConfigurationPositionEntity>) query.getResultList();
  }
}
