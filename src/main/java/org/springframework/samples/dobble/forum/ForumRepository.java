package org.springframework.samples.dobble.forum;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ForumRepository extends CrudRepository<Forum,Long> {

	Forum findByName(String nombre);

}
