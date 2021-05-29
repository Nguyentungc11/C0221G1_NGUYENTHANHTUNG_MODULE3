package model.repository;

import model.bean.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository {
    static Map<String, Product> map = new HashMap<>();

    static {
        map.put("1", new Product("Sony", "1", 100));
        map.put("2", new Product("Honda", "2", 200));
        map.put("3", new Product("Iphone", "3", 300));
        map.put("4", new Product("Bmw", "4", 400));
        map.put("5", new Product("Sam", "5", 500));
        map.put("6", new Product("No", "6", 600));
    }

    public List<Product> findAll() {

        return new ArrayList<>(map.values());
    }

    public void save(Product product) {

        map.put(product.getId(), product);
    }

    public Product findById(String id) {

        return map.get(id);
    }

    public void update(String id, Product product) {
        map.put(id, product);
    }

    public void add(Product product) {
    }

    public void remove(String id) {
        map.remove(id);
    }

    Product search(String name) {
        return null;
    }

}
