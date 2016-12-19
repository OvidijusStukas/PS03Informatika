package edu.informatika.semestrinis.repository;

import edu.informatika.semestrinis.entity.ParticipantEntity;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ParticipantRepository extends BaseRepository<ParticipantEntity> {

  public ParticipantEntity getByUserId(int userId) {
    Criteria c = hibernateTemplate.getSessionFactory().getCurrentSession()
      .createCriteria(ParticipantEntity.class, "participant")
      .add(Restrictions.eq("participant.userId", userId));


    List list = c.list();

    return ((List<ParticipantEntity>) list).get(0);
  }
}
