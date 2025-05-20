package enset_bdcc.bdccensetspringmvc.repository;

import enset_bdcc.bdccensetspringmvc.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
