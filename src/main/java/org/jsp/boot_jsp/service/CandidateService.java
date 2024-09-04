
package org.jsp.boot_jsp.service;

import java.util.List;

import org.jsp.boot_jsp.dataacess.CandidateDataacess;
import org.jsp.boot_jsp.model.Candidate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;

@Component
public class CandidateService {

    @Autowired
    CandidateDataacess dao;

    public String save(Candidate candidate, ModelMap map) {


        dao.save(candidate);
        map.put("pass", "Record Saved Successfully");
        return "Main";
    }

    public String fetchAll(ModelMap map) {
        List<Candidate> list = dao.fetchAll();
        if (list.isEmpty()) {
            map.put("fail", "No Records Found");
            return "Main";
        } else {
            map.put("list", list);
            return "Fetch";
        }
    }

    public String delete(String id, ModelMap map) {
        dao.delete(id);
        map.put("pass", "Data Deleted Successfully");

        return fetchAll(map);
    }

    public String edit(String id, ModelMap map) {
        Candidate candidate = dao.fetchById(id);
        map.put("candidate", candidate);
        return "Edit";
    }

    public String update(Candidate candidate, ModelMap map) {


        dao.save(candidate);
        map.put("pass", "Record Updated Successfully");
        return fetchAll(map);
    }
}

