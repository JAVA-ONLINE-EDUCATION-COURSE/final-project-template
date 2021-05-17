package com.epam.rd.izh.dao;

import java.util.List;
import java.util.Optional;

public interface Dao<K, V> {

    List<V> findAll();

    Optional<V> findById(K id);

    void delete(K id);

    void update(V entity);

    V save(V entity);
}
