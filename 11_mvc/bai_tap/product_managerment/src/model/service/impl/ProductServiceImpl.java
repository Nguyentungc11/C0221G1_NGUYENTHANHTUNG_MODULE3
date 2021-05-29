package model.service.impl;

import model.bean.Product;
import model.repository.ProductRepository;
import model.service.ProductService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    ProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void save(Product product) {
        productRepository.save(product);
    }

    @Override
    public Product findById(String id) {
        return productRepository.findById(id);
    }

    @Override
    public void update(String id, Product product) {
        productRepository.update(id, product);
    }

    @Override
    public void remove(String id) {
        productRepository.remove(id);
    }

    @Override
    public Product search(String id) {
        return null;
    }
}
