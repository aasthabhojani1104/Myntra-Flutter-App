import 'package:flutter/material.dart';

import '../Add_Cart/add_to_cart.dart';
import 'Wishlist_page.dart';

class ProductDetailPage extends StatefulWidget {
  final Map<String, dynamic> products;

  ProductDetailPage({required this.products});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  List<Map<String, dynamic>> wishlist = [];
  List<Map<String, dynamic>> cartItems = [];

  void _handleWishlistAction() {
    if (wishlist.any((item) => item['title'] == widget.products['title'])) {
      // If item exists in wishlist, remove it
      wishlist.removeWhere((item) => item['title'] == widget.products['title']);
    } else {
      // If item does not exist in wishlist, add it
      wishlist.add(widget.products);
    }
    setState(() {});
  }

  void _handleAddToCartAction() {
    setState(() {
      cartItems.add(widget.products);
    });

    // Navigate to Cart Page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isInWishlist =
        wishlist.any((item) => item['title'] == widget.products['title']);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.products['title']),
        actions: [
          IconButton(
            icon: Icon(
              isInWishlist ? Icons.favorite : Icons.favorite_border,
              color: isInWishlist ? Colors.red : null,
            ),
            onPressed: _handleWishlistAction,
          ),
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WishlistPage(wishlist: wishlist),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  widget.products['img'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                widget.products['title'],
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\u{20B9}${widget.products['discountedPrice']}",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${widget.products['discountPercentage']}% Off",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                widget.products['description'],
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              SizedBox(height: 16.0),
              Divider(color: Colors.grey[300]),
              SizedBox(height: 8.0),
              Text(
                'Specifications:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '• Material: ${widget.products['material']}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '• Size: ${widget.products['size']}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '• Color: ${widget.products['color']}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16.0),
              Text(
                'Customer Reviews:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 24),
                  Icon(Icons.star, color: Colors.yellow, size: 24),
                  Icon(Icons.star, color: Colors.yellow, size: 24),
                  Icon(Icons.star, color: Colors.yellow, size: 24),
                  Icon(Icons.star_border, color: Colors.yellow, size: 24),
                  SizedBox(width: 8.0),
                  Text(
                    '4.0 (200 reviews)',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _handleAddToCartAction,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfffe416c),
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: _handleWishlistAction,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isInWishlist ? Colors.red : Colors.white,
                      side: BorderSide(color: Color(0xfffe416c)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Icon(
                      isInWishlist ? Icons.favorite : Icons.favorite_border,
                      color: isInWishlist ? Colors.white : Color(0xfffe416c),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
