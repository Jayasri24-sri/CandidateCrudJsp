
package org.jsp.boot_jsp.dataacess;

import java.util.List;

import org.jsp.boot_jsp.model.Candidate;
import org.jsp.boot_jsp.repository.CandidateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CandidateDataacess {

    @Autowired
    CandidateRepository repository;

    public void save(Candidate candidate) {
        repository.save(candidate);
    }

    public List<Candidate> fetchAll() {
        return repository.findAll();
    }

    public void delete(String id) {
        repository.deleteById(id);
    }

    public Candidate fetchById(String id) {
        return repository.findById(id).orElse(null);
    }
}
