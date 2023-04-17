package com.mattmoldovan.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mattmoldovan.dojosandninjas.models.Dojo;
import com.mattmoldovan.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {

	@Autowired
	private DojoRepository dojoRepo;
	
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	
	public Dojo createDojo(Dojo newDojo) {
		return dojoRepo.save(newDojo);
	}
	
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		}
		return null;
	}
	
	public void deleteDojo(Long id) {
		dojoRepo.deleteById(id);
	}
	
	public Dojo updateDojo(Dojo oneDojo) {
		return dojoRepo.save(oneDojo);
	}
	
}
