package com.eduardojreis.citiesapi.repositories;

import com.eduardojreis.citiesapi.entities.Country;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CountryRepository extends JpaRepository<Country, Long> {
    
}
