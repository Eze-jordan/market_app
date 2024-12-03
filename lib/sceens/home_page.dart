import 'package:flutter/material.dart';
import 'package:market_app/sceens/Product_Details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Nombre d'onglets
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F5F7),
        body: Padding(
          padding: const EdgeInsets.only(
              top: 40, left: 16, right: 16), // Marges globales pour la colonne
          child: Column(
            children: [
              Row(
                children: [
                  // Image circulaire
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('asset/img/eze_image.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                      width:
                          16), // Espacement entre l'image et le champ de recherche
                  // Champ de recherche
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search_rounded,
                            color: Color(0xBE9E9E9E)),
                        hintText: "Search here.....",
                        hintStyle: const TextStyle(
                          color: Color(0xB99E9E9E),
                          fontFamily: "Roboto",
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 16), // Espacement entre le champ et l'icône
                  // Icône de flèche
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFF34A853),
                      shape: BoxShape.circle,
                    ),
                    child:
                        const Icon(Icons.place_outlined, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 16), // Espacement après la recherche
              // TabBar avec style personnalisé
              const TabBar(
                labelColor: Color(0xFF34A853),
                unselectedLabelColor: Colors.grey,
                indicatorColor:
                    Color(0xFF34A853), // Couleur de l'indicateur actif
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13, // Taille du texte des onglets actifs
                  fontFamily: "Roboto",
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12, // Taille du texte des onglets inactifs
                  fontFamily: "Roboto",
                ),
                tabs: [
                  Tab(text: "POPULAIR"),
                  Tab(text: "GROCERY"),
                  Tab(text: "VEGETABLES"),
                  Tab(text: "Flash Sale"),
                ],
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    // Contenu de chaque onglet
                    Center(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 190,
                                    width: 300,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFDCDCDC),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 20),
                                                          child: Text(
                                                              'Save Big on Dairy Essentials',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'Get 10% off',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 30,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'All fresh produce this week',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: const Color(
                                                            0xFFFFFFFF),
                                                        width: 1,
                                                      ),
                                                      color: const Color(
                                                          0xFFdcdcdc),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Center(
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'asset/img/fruit3.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFF1E263B),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                                child: const Text(
                                                  "This Week Only",
                                                  style: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              const Text('Grab Offer Now',
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  )),
                                              const SizedBox(width: 10),
                                              const Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Colors.black,
                                                size: 10,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Container(
                                    height: 190,
                                    width: 300,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFDCDCDC),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 20),
                                                          child: Text(
                                                              'Save Big on Dairy Essentials',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'Get 10% off',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 30,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'All fresh produce this week',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: const Color(
                                                            0xFFFFFFFF),
                                                        width: 1,
                                                      ),
                                                      color: const Color(
                                                          0xFFdcdcdc),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Center(
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'asset/img/fruit.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFF1E263B),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                                child: const Text(
                                                  "This Week Only",
                                                  style: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              const Text('Grab Offer Now',
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  )),
                                              const SizedBox(width: 10),
                                              const Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Colors.black,
                                                size: 10,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text('Recommendations',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: "Roboto",
                                        )),
                                    Spacer(),
                                    Text('View All',
                                        style: TextStyle(
                                          color: Color(0xFF34A853),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto",
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 266,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 130,
                                        width: 130,
                                        margin: const EdgeInsets.only(top: 16),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'asset/img/fraise.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      const Text(
                                        'fraise',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                      const Text(
                                        '250g',
                                        style: TextStyle(
                                          color: Color(0xDA9E9999),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      // Prix et icônes
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(width: 4),
                                                    Text(
                                                      "\$6 USD",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Roboto",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0xDA9E9999),
                                                        size: 15),
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0xDA9E9999),
                                                        size: 15),
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0xDA9E9999),
                                                        size: 15),
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0xDA9E9999),
                                                        size: 15),
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0x81858282),
                                                        size: 15),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.add_circle_outlined,
                                              color: Colors.black,
                                              size: 35,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductDetails()),
                                    );
                                  },
                                  child: Container(
                                    height: 266,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 130,
                                          width: 130,
                                          margin:
                                              const EdgeInsets.only(top: 16),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/img/dragon.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        const Text(
                                          'Fruit of Dragon',
                                          style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        const Text(
                                          '250g',
                                          style: TextStyle(
                                            color: Color(0xDA9E9999),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        // Prix et icônes
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      SizedBox(width: 4),
                                                      Text(
                                                        "\$6 USD",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: "Roboto",
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0xDA9E9999),
                                                          size: 15),
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0xDA9E9999),
                                                          size: 15),
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0xDA9E9999),
                                                          size: 15),
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0xDA9E9999),
                                                          size: 15),
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0x81858282),
                                                          size: 15),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.add_circle_outlined,
                                                color: Colors.black,
                                                size: 35,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text('Categories',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: "Roboto",
                                        )),
                                    Spacer(),
                                    Text('View All',
                                        style: TextStyle(
                                          color: Color(0xFF34A853),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto",
                                        ))
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:
                                                100, // Augmenté pour inclure le texte
                                            width: 115,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFFdcdcdc),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xFFFFFFFF),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween, // Pour espacer image et texte
                                              children: [
                                                // Image en haut à gauche
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(
                                                        8.0), // Ajoute un espace autour de l'image
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration:
                                                          // ignore: unnecessary_const
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'asset/img/fraise.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                // Texte centré en bas
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 8.0),
                                                  child: Text(
                                                    'Fruits',
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            height:
                                                100, // Augmenté pour inclure le texte
                                            width: 115,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFFdcdcdc),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xFFFFFFFF),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween, // Pour espacer image et texte
                                              children: [
                                                // Image en haut à gauche
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(
                                                        8.0), // Ajoute un espace autour de l'image
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'asset/img/dragon.jpg'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                // Texte centré en bas
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 8.0),
                                                  child: Center(
                                                    child: Text(
                                                      'Fruit Dragon',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Roboto",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            height:
                                                100, // Augmenté pour inclure le texte
                                            width: 115,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFFdcdcdc),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xFFFFFFFF),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween, // Pour espacer image et texte
                                              children: [
                                                // Image en haut à gauche
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(
                                                        8.0), // Ajoute un espace autour de l'image
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'asset/img/viande.jpg'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                // Texte centré en bas
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 8.0),
                                                  child: Text(
                                                    'Viande',
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height:
                                            100, // Augmenté pour inclure le texte
                                        width: 115,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFdcdcdc),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween, // Pour espacer image et texte
                                          children: [
                                            // Image en haut à gauche
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0), // Ajoute un espace autour de l'image
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/img/dragon.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Texte centré en bas
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8.0),
                                              child: Text(
                                                'dragon',
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Roboto",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height:
                                            100, // Augmenté pour inclure le texte
                                        width: 115,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFdcdcdc),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween, // Pour espacer image et texte
                                          children: [
                                            // Image en haut à gauche
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0), // Ajoute un espace autour de l'image
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/img/mangue thai.jpeg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Texte centré en bas
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8.0),
                                              child: Center(
                                                child: Text(
                                                  'mangue Thai',
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height:
                                            100, // Augmenté pour inclure le texte
                                        width: 115,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFdcdcdc),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween, // Pour espacer image et texte
                                          children: [
                                            // Image en haut à gauche
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0), // Ajoute un espace autour de l'image
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/img/goyave.png'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Texte centré en bas
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8.0),
                                              child: Text(
                                                'goyave',
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Roboto",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                    Center(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 190,
                                    width: 300,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFDCDCDC),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 20),
                                                          child: Text(
                                                              'Save Big on Dairy Essentials',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'Get 10% off',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 30,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'All fresh produce this week',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: const Color(
                                                            0xFFFFFFFF),
                                                        width: 1,
                                                      ),
                                                      color: const Color(
                                                          0xFFdcdcdc),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Center(
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'asset/img/fruit3.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFF1E263B),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                                child: const Text(
                                                  "This Week Only",
                                                  style: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              const Text('Grab Offer Now',
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  )),
                                              const SizedBox(width: 10),
                                              const Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Colors.black,
                                                size: 10,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Container(
                                    height: 190,
                                    width: 300,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF1E263B),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 20),
                                                          child: Text(
                                                              'Save Big on Dairy Essentials',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xB8FFFFFF),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'Get 10% off',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 30,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'All fresh produce this week',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xBBFFFFFF),
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: const Color
                                                            .fromARGB(
                                                            147, 255, 255, 255),
                                                        width: 1,
                                                      ),
                                                      color: const Color(
                                                          0xFF1E263B), // Optionnel : couleur de fond du conteneur
                                                      shape: BoxShape
                                                          .circle, // Forme circulaire du conteneur
                                                    ),
                                                    child: Center(
                                                      child: Container(
                                                        height:
                                                            50, // Taille de l'image
                                                        width: 50,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape: BoxShape
                                                              .circle, // Forme circulaire de l'image
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'asset/img/pommes.png'),
                                                            fit: BoxFit
                                                                .cover, // L'image remplit le cercle
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFFFFFFFF),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                                child: const Text(
                                                  "This Week Only",
                                                  style: TextStyle(
                                                    color: Color(0xFF1E263B),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              const Text('Grab Offer Now',
                                                  style: TextStyle(
                                                    color: Color(0xD1FFFFFF),
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  )),
                                              const SizedBox(width: 10),
                                              const Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Colors.white,
                                                size: 10,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Container(
                                    height: 190,
                                    width: 300,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFDCDCDC),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 20),
                                                          child: Text(
                                                              'Save Big on Dairy Essentials',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'Get 10% off',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 30,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                              'All fresh produce this week',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF000000),
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontFamily:
                                                                    "Roboto",
                                                              )),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: const Color(
                                                            0xFFFFFFFF),
                                                        width: 1,
                                                      ),
                                                      color: const Color(
                                                          0xFFdcdcdc),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Center(
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'asset/img/fruit.png'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 10),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFF1E263B),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                                child: const Text(
                                                  "This Week Only",
                                                  style: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              const Text('Grab Offer Now',
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  )),
                                              const SizedBox(width: 10),
                                              const Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: Colors.black,
                                                size: 10,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text('Recommendations',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: "Roboto",
                                        )),
                                    Spacer(),
                                    Text('View All',
                                        style: TextStyle(
                                          color: Color(0xFF34A853),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto",
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 266,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 130,
                                        width: 130,
                                        margin: const EdgeInsets.only(top: 16),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'asset/img/KIWI.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      const Text(
                                        'Avocado',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                      const Text(
                                        '250g',
                                        style: TextStyle(
                                          color: Color(0xDA9E9999),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      // Prix et icônes
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(width: 4),
                                                    Text(
                                                      "\$6 USD",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Roboto",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0xDA9E9999),
                                                        size: 15),
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0xDA9E9999),
                                                        size: 15),
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0xDA9E9999),
                                                        size: 15),
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0xDA9E9999),
                                                        size: 15),
                                                    Icon(Icons.star,
                                                        color:
                                                            Color(0x81858282),
                                                        size: 15),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.add_circle_outlined,
                                              color: Colors.black,
                                              size: 35,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductDetails()),
                                    );
                                  },
                                  child: Container(
                                    height: 266,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 130,
                                          width: 130,
                                          margin:
                                              const EdgeInsets.only(top: 16),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/img/bananas_opt.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 6),
                                        const Text(
                                          'Fresh Bananas',
                                          style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        const Text(
                                          '250g',
                                          style: TextStyle(
                                            color: Color(0xDA9E9999),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Roboto",
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        // Prix et icônes
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      SizedBox(width: 4),
                                                      Text(
                                                        "\$6 USD",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: "Roboto",
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0xDA9E9999),
                                                          size: 15),
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0xDA9E9999),
                                                          size: 15),
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0xDA9E9999),
                                                          size: 15),
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0xDA9E9999),
                                                          size: 15),
                                                      Icon(Icons.star,
                                                          color:
                                                              Color(0x81858282),
                                                          size: 15),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                Icons.add_circle_outlined,
                                                color: Colors.black,
                                                size: 35,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text('Categories',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: "Roboto",
                                        )),
                                    Spacer(),
                                    Text('View All',
                                        style: TextStyle(
                                          color: Color(0xFF34A853),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Roboto",
                                        ))
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height:
                                                100, // Augmenté pour inclure le texte
                                            width: 115,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFFdcdcdc),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xFFFFFFFF),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween, // Pour espacer image et texte
                                              children: [
                                                // Image en haut à gauche
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(
                                                        8.0), // Ajoute un espace autour de l'image
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'asset/img/fraise.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                // Texte centré en bas
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 8.0),
                                                  child: Text(
                                                    'Fruits',
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            height:
                                                100, // Augmenté pour inclure le texte
                                            width: 115,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFFdcdcdc),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xFFFFFFFF),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween, // Pour espacer image et texte
                                              children: [
                                                // Image en haut à gauche
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(
                                                        8.0), // Ajoute un espace autour de l'image
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'asset/img/dragon.jpg'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                // Texte centré en bas
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 8.0),
                                                  child: Center(
                                                    child: Text(
                                                      'Fruit Dragon',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: "Roboto",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            height:
                                                100, // Augmenté pour inclure le texte
                                            width: 115,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFFdcdcdc),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xFFFFFFFF),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween, // Pour espacer image et texte
                                              children: [
                                                // Image en haut à gauche
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .all(
                                                        8.0), // Ajoute un espace autour de l'image
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'asset/img/viande.jpg'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                // Texte centré en bas
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 8.0),
                                                  child: Text(
                                                    'Viande',
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Roboto",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height:
                                            100, // Augmenté pour inclure le texte
                                        width: 115,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFdcdcdc),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween, // Pour espacer image et texte
                                          children: [
                                            // Image en haut à gauche
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0), // Ajoute un espace autour de l'image
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/img/dragon.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Texte centré en bas
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8.0),
                                              child: Text(
                                                'dragon',
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Roboto",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height:
                                            100, // Augmenté pour inclure le texte
                                        width: 115,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFdcdcdc),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween, // Pour espacer image et texte
                                          children: [
                                            // Image en haut à gauche
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0), // Ajoute un espace autour de l'image
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/img/mangue thai.jpeg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Texte centré en bas
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8.0),
                                              child: Center(
                                                child: Text(
                                                  'mangue Thai',
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: "Roboto",
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height:
                                            100, // Augmenté pour inclure le texte
                                        width: 115,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFdcdcdc),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween, // Pour espacer image et texte
                                          children: [
                                            // Image en haut à gauche
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0), // Ajoute un espace autour de l'image
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'asset/img/goyave.png'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // Texte centré en bas
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8.0),
                                              child: Text(
                                                'goyave',
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "Roboto",
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                    const Center(child: Text("VEGETABLES content here")),
                    const Center(child: Text("Flash Sale content here")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
