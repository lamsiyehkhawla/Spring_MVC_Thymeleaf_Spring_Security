package enset_bdcc.bdccensetspringmvc.repository;

import enset_bdcc.bdccensetspringmvc.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByNameContainsIgnoreCase(String name);

}
