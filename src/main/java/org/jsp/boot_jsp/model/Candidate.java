
package org.jsp.boot_jsp.model;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import lombok.Data;
import java.time.LocalDate;

@Data
@Document(collection = "candidates")
public class Candidate {
    @Id
    private String id;
    private String name;
    private long mobile;
    private LocalDate dob;

}

