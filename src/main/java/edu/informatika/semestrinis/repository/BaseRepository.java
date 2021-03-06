package edu.informatika.semestrinis.repository;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public class BaseRepository<T extends Serializable> implements IRepository<T> {

  @Autowired
  protected HibernateTemplate hibernateTemplate;

  @Override
  public Integer insertEntity(T entity) throws HibernateException {
    return (Integer) hibernateTemplate.save(entity);
  }

  @Override
  public void updateEntity(T entity) throws HibernateException {
    hibernateTemplate.merge(entity);
  }

  @Override
  public void deleteEntity(Class<T> clazz, int id) throws HibernateException {
    hibernateTemplate.delete(hibernateTemplate.load(clazz, id));
  }

  @Override
  public T getEntity(Class<T> clazz, int id) throws HibernateException {
    return hibernateTemplate.get(clazz, id);
  }

  @Override
  public List<T> getEntities(Class<T> clazz) throws HibernateException {
    return hibernateTemplate.loadAll(clazz);
  }
}