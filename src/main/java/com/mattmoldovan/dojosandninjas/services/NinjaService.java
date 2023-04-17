package com.mattmoldovan.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mattmoldovan.dojosandninjas.models.Ninja;
import com.mattmoldovan.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	@Autowired
	private NinjaRepository ninjaRepo;
	
	public List<Ninja> allNinjas(){
		return ninjaRepo.findAll();
	}
	
	public Ninja createNinja(Ninja newNinja) {
		return ninjaRepo.save(newNinja);
	}
	
	public Ninja findNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
		if (optionalNinja.isPresent()) {
			return optionalNinja.get();
		}
		return null;
	}
	
	public void deleteNinja(Long id) {
		ninjaRepo.deleteById(id);
	}
	
	public Ninja updateNinja(Ninja oneNinja) {
		return ninjaRepo.save(oneNinja);
	}
}
