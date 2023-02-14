package com.example.dao.controllers;

import com.example.dao.repositories.DbWorker;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
public class Controller {

    DbWorker dbWorker;

    public Controller(DbWorker dbWorker) {
        this.dbWorker = dbWorker;
    }

    @GetMapping("/products/fetch-product")
    public List<String> fetchProduct(@RequestParam("name") String name) {
        return dbWorker.getProductName(name);
    }

}
