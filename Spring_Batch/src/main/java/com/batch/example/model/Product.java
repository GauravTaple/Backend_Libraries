package com.batch.example.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product  {
    private int productId;
    private String title;
    private String description;
    private String price;
    private String discount;
    private String discountPrice;
}