
package org.jsp.boot_jsp.repository;

import org.jsp.boot_jsp.model.Candidate;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CandidateRepository extends MongoRepository<Candidate, String> {
    // Define any custom query methods if needed
}
