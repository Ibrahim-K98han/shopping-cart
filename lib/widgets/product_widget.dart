import 'package:flutter/material.dart';

import '../model/product_model.dart';

Container productWidgets(Product product, onTap, click) {
    return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            product.image,
                            width: 100,
                            height: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text.rich(
                                    TextSpan(text: 'Colors:', children: [
                                      TextSpan(
                                        text: ' ${product.color}',
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text.rich(
                                    TextSpan(text: 'Size:', children: [
                                      TextSpan(
                                        text: ' ${product.size}',
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                      ),
                                      onPressed: () {
                                        onTap(product);
                                      },
                                      child: const Icon(Icons.add),
                                    ),
                                    Text(product.quantity.toString()),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                      ),
                                      onPressed: () {
                                        click(product);
                                      },
                                      child: const Icon(Icons.remove),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30),
                                      child: Text(
                                        '${product.price.toString()}\$',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
  }