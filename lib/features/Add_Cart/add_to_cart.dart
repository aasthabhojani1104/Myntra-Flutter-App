import 'package:flutter/material.dart';

import '../Payment_Screen/payment_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // Sample cart items
  List<Map<String, dynamic>> cartItems = [
    {
      'title': 'Product 1',
      'imageUrl':
      'https://i.pinimg.com/736x/1d/8a/7f/1d8a7f9fcbdc92fe638cb49950b4a068.jpg',      'price': 299.99,
      'quantity': 1,
    },
    {
      'title': 'Product 2',
      'imageUrl':
      'https://i.pinimg.com/736x/1d/8a/7f/1d8a7f9fcbdc92fe638cb49950b4a068.jpg',
      'price': 499.99,
      'quantity': 3,
    },
    {
      'title': 'Product 2',
      'imageUrl':
      'https://i.pinimg.com/736x/1d/8a/7f/1d8a7f9fcbdc92fe638cb49950b4a068.jpg',
      'price': 499.99,
      'quantity': 5,
    },
    // Add more products if needed
  ];

  double getTotalPrice() {
    return cartItems.fold(
      0.0,
          (sum, item) => sum + (item['price'] * item['quantity']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pinkAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.delete_outline),
            color: Colors.white,
            onPressed: () {
              setState(() {
                cartItems.clear();
              });
            },
          ),
        ],
      ),
      body: cartItems.isEmpty
          ? Center(
        child: Text(
          'Your cart is empty!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 3,
                  child: ListTile(
                    leading: Image.network(
                      item['imageUrl'],
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                    title: Text(
                      item['title'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '\u{20B9}${item['price'].toStringAsFixed(2)}',
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (item['quantity'] > 1) {
                                item['quantity']--;
                              }
                            });
                          },
                        ),
                        Text(item['quantity'].toString()),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              item['quantity']++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\u{20B9}${getTotalPrice().toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Order Placed'),
                    content: Text('Your order has been placed successfully!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                          setState(() {
                            cartItems.clear(); // Clear the cart items
                          });

                          // Navigate to the payment screen
                          double totalPrice = getTotalPrice(); // Assuming you have a method to calculate the total price

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentScreen(totalPrice: totalPrice),
                            ),
                          );

                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );

              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.pinkAccent,
              ),
              child: Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

