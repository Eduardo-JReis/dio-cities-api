package com.eduardojreis.citiesapi.resources;

import java.util.List;
import java.util.Optional;

import com.eduardojreis.citiesapi.entities.State;
import com.eduardojreis.citiesapi.repositories.StateRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/states")
public class StateResource {

    @Autowired
    private StateRepository repository;

    @GetMapping
    public List<State> findAll(){
        List<State> states = repository.findAll();

        return states;
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<State> findById(@PathVariable Long id){

        Optional<State> state = repository.findById(id);

        if(state.isPresent()){
            return ResponseEntity.ok().body(state.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }
    
}
