
package org.jsp.boot_jsp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class CandidateCrudJspApplication {

    public static void main(String[] args) {
        SpringApplication.run(CandidateCrudJspApplication.class, args);
    }
}

