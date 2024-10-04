import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  final List<Map<String, dynamic>> wishlist;

  WishlistPage({required this.wishlist});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
      body: widget.wishlist.isEmpty
          ? const Center(
        child: Text(
          "Your wishlist is empty.",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      )
          : ListView.builder(
        itemCount: widget.wishlist.length,
        itemBuilder: (context, index) {
          final item = widget.wishlist[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                item['img'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              item['title'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "\u{20B9}${item['discountedPrice']}",
              style: TextStyle(fontSize: 14, color: Colors.orange),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                setState(() {
                  widget.wishlist.removeAt(index);  // Remove the specific item from the wishlist
                });
              },
            ),
          );
        },
      ),
    );

  }
}


