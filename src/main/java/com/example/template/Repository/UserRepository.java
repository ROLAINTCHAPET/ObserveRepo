package com.example.template.Repository;

import com.example.template.Entity.User;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends ReactiveCrudRepository<User, Long> {
    // Méthodes personnalisées si besoin (ex: findByEmail)
}
