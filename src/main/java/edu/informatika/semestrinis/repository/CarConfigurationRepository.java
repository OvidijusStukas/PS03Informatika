package edu.informatika.semestrinis.repository;

import edu.informatika.semestrinis.entity.CarConfigurationPositionEntity;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CarConfigurationRepository extends BaseRepository<CarConfigurationPositionEntity> {

  public List<CarConfigurationPositionEntity> getPositions(String indexName) {
    Criteria c = hibernateTemplate.getSessionFactory().getCurrentSession()
      .createCriteria(CarConfigurationPositionEntity.class, "position")
      .createAlias("position.index", "index")
      .add(Restrictions.eq("index.name", indexName));

    List list = c.list();

    return (List<CarConfigurationPositionEntity>) list;
  }

  public List<CarConfigurationPositionEntity> getModelPositions(String brand) {
    Criteria c = hibernateTemplate.getSessionFactory().getCurrentSession()
      .createCriteria(CarConfigurationPositionEntity.class, "position")
      .createAlias("position.index", "index")
      .add(Restrictions.eq("index.name", "model"))
      .add(Restrictions.eq("position.value", brand));

    List list = c.list();

    return (List<CarConfigurationPositionEntity>) list;
  }
}
