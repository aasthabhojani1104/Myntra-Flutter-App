import 'package:flutter/material.dart';

class CategoryDetailPage extends StatelessWidget {
  final String label;
  final String imageUrl;

  CategoryDetailPage({required this.label, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Image with Subtle Shadow
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  top: 16.0,
                  left: 16.0,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Category Label
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2, // Increased letter spacing
                  color: Colors.black87, // Darker text for better contrast
                ),
              ),
            ),
            SizedBox(height: 8),

            // Description Text with Slight Line Height Increase
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Explore more about the $label category. This section gives you an in-depth look into the features, benefits, and offerings of this category.Explore more about the $label category.'
    ' This section gives you an in-depth look into the features, benefits, and offerings of this category.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700], // Lighter color for secondary text
                  height: 1.5, // Increased line height for readability
                ),
              ),
            ),
            SizedBox(height: 16),

            // Explore Button with Ripple Effect and Shadow
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Implement navigation or operation
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3, // Added shadow for a raised button effect
                ),
                child: Text(
                  'Explore $label',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.1, // Add slight letter spacing for modern look
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),

            // Clean Divider Section
            Divider(
              height: 32,
              thickness: 1.5,
              color: Colors.grey[300],
            ),

            // Related Items Section Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Related Items',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 12),

            // Horizontal List of Related Items with Subtle Card Effect
            Container(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Number of related items
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Related Item Image with Card Effect
                        Material(
                          elevation: 2, // Subtle shadow for material effect
                          borderRadius: BorderRadius.circular(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://i.pinimg.com/736x/1d/2a/33/1d2a33c915cd46f5c3e7431c7c01e39c.jpg',
                              width: 150,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Related Item Title
                        Text(
                          'Item $index',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87, // Emphasize item title
                          ),
                        ),

                        // Related Item Price
                        Text(
                          '\$99.99',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600], // Subtle for secondary info
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24), // Added space after the related items section
          ],
        ),
      ),
    );
  }
}
