package com.eduardojreis.citiesapi.repositories;

import com.eduardojreis.citiesapi.entities.State;

import org.springframework.data.jpa.repository.JpaRepository;

public interface StateRepository extends JpaRepository<State, Long>{
    
}
