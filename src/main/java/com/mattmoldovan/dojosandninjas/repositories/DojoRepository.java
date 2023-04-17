package com.mattmoldovan.dojosandninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.mattmoldovan.dojosandninjas.models.Dojo;

public interface DojoRepository extends CrudRepository<Dojo,Long>{
	List<Dojo> findAll();
}
