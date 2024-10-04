import 'package:flutter/material.dart';

import 'catagory_detail.dart';

class CategoryPage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      'imageUrl':
      'https://i.pinimg.com/736x/7d/3d/15/7d3d1518b8323cbed1f6f41f93fa5362.jpg',
      'label': 'KURTIS',

    },
    {
      'imageUrl':
      'https://i.pinimg.com/1200x/e6/1c/38/e61c38c41e559c583ae0775f0aad97f8.jpg',
      'label': 'DRESSES',
    },
    {
      'imageUrl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSuJ1M7LFPLYjmitcqKXGO8VE6IrRpbHeZEw&s',
      'label': 'BOTTOMS',
    },
    {
      'imageUrl':
      'https://i.pinimg.com/736x/41/7b/cd/417bcd4b9aa5b61c96ac8f07d56fb3f5.jpg',
      'label': 'CO-ORDS',
    },
    {
      'imageUrl':
      'https://i.pinimg.com/736x/fe/53/9c/fe539c97e076db3cda3e9f8742801cde.jpg',
      'label': 'BAGS',
    },
    {
      'imageUrl':
      'https://i.pinimg.com/736x/62/06/59/620659bbec625fe0440b5025ee71180e.jpg',
      'label': 'JEWELLERY',
    },
    {
      'imageUrl': 'https://i.ebayimg.com/images/g/qU0AAOSwo9FjTvnS/s-l1200.jpg',
      'label': 'BOOTS',
    },
    {
      'imageUrl':
      'https://i.pinimg.com/736x/80/0f/b5/800fb51a5d45a979c30a81069ee888a2.jpg',
      'label': 'SUNGLASSES',
    },
    {
      'imageUrl':
      'https://i.pinimg.com/736x/39/3d/3f/393d3f70152b68184f70fcd736427d22.jpg',
      'label': 'FOOTWEAR',
    },
    // Add more categories as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Categories',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
             // fontFamily: 'Montserrat',
            ),
          ),
        ),
        centerTitle: true, // Center the title
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryDetailPage(label: 'Notifications', imageUrl: 'https://hist1.latestly.com/wp-content/uploads/2023/11/Myntra-Sale.jpg'),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 1.0,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetailPage(
                      label: category['label']!,
                      imageUrl: category['imageUrl']!,
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.0),
                        ),
                        child: Image.network(
                          category['imageUrl']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        category['label']!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),

    );
  }
}
