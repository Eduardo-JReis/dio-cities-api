package com.eduardojreis.citiesapi.resources;

import java.util.Optional;

import com.eduardojreis.citiesapi.entities.Country;
import com.eduardojreis.citiesapi.repositories.CountryRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/countries")
public class CountryResource {


    @Autowired
    private CountryRepository repository;

    @GetMapping
    public Page<Country> listAll(Pageable page){

        Page<Country> countries = repository.findAll(page);

        return countries;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Country> findById(@PathVariable Long id){

        Optional<Country> country = repository.findById(id);

        if(country.isPresent()){
            return ResponseEntity.ok().body(country.get());
        } else {
            return ResponseEntity.notFound().build();
        }

    }
    
}
