package edu.informatika.semestrinis.repository;

import edu.informatika.semestrinis.entity.UserEntity;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserRepository extends BaseRepository<UserEntity> {

  public int getUserId(String username) {
    Criteria c = hibernateTemplate.getSessionFactory().getCurrentSession()
      .createCriteria(UserEntity.class, "user")
      .add(Restrictions.eq("user.userName", username));


    List list = c.list();

    return ((List<UserEntity>) list).get(0).getUserId();
  }

  public UserEntity getUser(String username) {
    Criteria c = hibernateTemplate.getSessionFactory().getCurrentSession()
      .createCriteria(UserEntity.class, "user")
      .add(Restrictions.eq("user.userName", username));


    List list = c.list();

    return ((List<UserEntity>) list).get(0);
  }
}
