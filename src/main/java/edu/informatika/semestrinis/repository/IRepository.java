package edu.informatika.semestrinis.repository;

import org.hibernate.HibernateException;

import java.io.Serializable;
import java.util.List;

public interface IRepository<T extends Serializable> {
  Integer insertEntity(T entity) throws HibernateException;

  void updateEntity(T entity) throws HibernateException;

  void deleteEntity(Class<T> clazz, int id) throws HibernateException;

  T getEntity(Class<T> clazz, int id) throws HibernateException;

  List<T> getEntities(Class<T> clazz) throws HibernateException;
}