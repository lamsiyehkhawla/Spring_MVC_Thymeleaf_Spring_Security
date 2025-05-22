package enset_bdcc.bdccensetspringmvc;

import enset_bdcc.bdccensetspringmvc.entities.Product;
import enset_bdcc.bdccensetspringmvc.repository.ProductRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.Bean;

@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
public class BdccEnsetSpringMvcApplication {

    public static void main(String[] args) {
        SpringApplication.run(BdccEnsetSpringMvcApplication.class, args);
    }

    @Bean
    public CommandLineRunner start(ProductRepository repository, ProductRepository productRepository) {
        return args -> {
            productRepository.save(Product.builder()
                            .name("Computer")
                            .price(5487.0)
                            .quantity(12)
                    .build());
            productRepository.save(Product.builder()
                            .name("Printer")
                            .price(5000.0)
                            .quantity(10)
                    .build());

            productRepository.save(Product.builder()
                            .name("Smartphone")
                            .price(8000.0)
                            .quantity(20)
                    .build());
            productRepository.findAll().forEach(product -> {
                System.out.println(product.toString());
            });
        };

    }
}
