import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // AppBar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 170,
              color: const Color.fromARGB(255, 31, 188, 110),
              padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Online Soft Sell",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Hello, Admin",
                    style: TextStyle(
                      color: Color.fromARGB(179, 255, 255, 255),
                      fontSize: 16,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.qr_code_scanner,
                          color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),

          // GridView positioned over AppBar
          Positioned.fill(
            top: 130, // Move grid up to overlap AppBar
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable GridView's internal scrolling
                  children: [
                    // Customers Card
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/customers.jpg',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            "CUSTOMERS",
                            style: TextStyle(
                              color: Color.fromARGB(255, 58, 189, 115),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Suppliers Card
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/supplier.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            "SUPPLIERS",
                            style: TextStyle(
                              color: Color.fromARGB(255, 58, 189, 115),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Products Card
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/product.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            "PRODUCTS",
                            style: TextStyle(
                              color: Color.fromARGB(255, 58, 189, 115),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // POS Card
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/POS.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            "POS",
                            style: TextStyle(
                              color: Color.fromARGB(255, 58, 189, 115),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Expenses Card
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/expense.png',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            "EXPENSES",
                            style: TextStyle(
                              color: Color.fromARGB(255, 58, 189, 115),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Orders Card
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/order.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            "ORDERS",
                            style: TextStyle(
                              color: Color.fromARGB(255, 58, 189, 115),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
