// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:market_app/sceens/my_cart.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String _selectedImage =
      'asset/img/bananas_opt-removebg-preview.png'; // Image principale sélectionnée
  int _quantity = 1; // Quantité par défaut
  // ignore: prefer_final_fields
  double _pricePerItem = 2.50; // Prix par item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5F7), // Couleur de fond
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              // Boutons retour et panier
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Bouton retour
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // Retour à la page précédente
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child:
                            const Icon(Icons.arrow_back, color: Colors.black),
                      ),
                    ),
                    const Text(
                      "Product Details",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    // Icône panier avec badge
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyCart()),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: const Icon(Icons.shopping_cart,
                                color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          top: 4,
                          right: 4,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.yellow,
                            child: Text(
                              '1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // Image principale
              Center(
                child: Container(
                  height: 270,
                  width: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    _selectedImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Galerie d'images
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildGalleryImage(
                      'asset/img/bananas_opt-removebg-preview.png', true),
                  _buildGalleryImage('asset/img/BANANA2.png', true),
                  _buildGalleryImage('asset/img/Banana.png', true),
                  _buildGalleryImage(
                      'asset/img/BABANA-removebg-preview.png', true),
                ],
              ),
              const Icon(
                Icons.keyboard_control_sharp,
                color: Colors.grey,
                size: 30,
              ),
              const SizedBox(height: 10),
              // Infos sur le produit
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _buildLabel("Recommanded", const Color(0xFFEFEFF0)),
                        const SizedBox(width: 10),
                        _buildLabel("Fruit", const Color(0xFFF7B500)),
                        const Spacer(),
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Fresh Bananas',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const Text(
                      '250G',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(Icons.star, color: Color(0xFFE6AC00), size: 20),
                        Icon(Icons.star, color: Color(0xFFE6AC00), size: 20),
                        Icon(Icons.star, color: Color(0xFFE6AC00), size: 20),
                        Icon(Icons.star, color: Color(0xFFE6AC00), size: 20),
                        Icon(Icons.star, color: Color(0xFFE6AC00), size: 20),
                        SizedBox(width: 10),
                        Text(
                          '5K Reviews',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Bananas are a popular tropical fruit rich  vitamins vitami  tropical fruit rich  vitam C. vitami, potassium Vitamin B6 Known for potassium content,  health and muscle function.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        // Prix total
                        Text(
                          "\$${(_pricePerItem * _quantity).toStringAsFixed(2)}",
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 150),
                        // Contrôles de quantité
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 115,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xA99E9E9E),
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (_quantity > 1) {
                                        setState(() {
                                          _quantity--;
                                        });
                                      }
                                    },
                                    icon: const Icon(
                                        Icons.remove_circle_outline,
                                        color: Colors.green,
                                        size: 30),
                                  ),
                                  Text(
                                    "$_quantity",
                                    style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _quantity++;
                                      });
                                    },
                                    icon: const Icon(Icons.add_circle_rounded,
                                        color: Colors.green, size: 30),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xA99E9E9E),
                                width: 0.5,
                              ),
                            ),
                            child: const Center(
                                child: Text(
                              'Add items to Cart',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGalleryImage(String imagePath, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedImage = imagePath;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          border: Border.all(
            color: _selectedImage == imagePath
                ? const Color.fromARGB(158, 110, 111, 110)
                : const Color.fromARGB(0, 246, 243, 243),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text, Color color) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
