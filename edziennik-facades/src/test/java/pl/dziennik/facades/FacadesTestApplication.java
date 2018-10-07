package pl.dziennik.facades;

import org.junit.runner.RunWith;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootApplication
@EntityScan(basePackages = "pl.dziennik.model")
public class FacadesTestApplication {

    public static void main(String[] args) {
        SpringApplication.run(FacadesTestApplication.class, args);
    }
}
