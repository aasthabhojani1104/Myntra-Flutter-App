import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myntra_ui/features/category/category.dart';
import 'package:myntra_ui/features/profile/profile_without_login.dart';
import 'package:myntra_ui/foundation/theme/colors.dart';

import '../../Add_Cart/add_to_cart.dart';
import '../../Product_DetailPage/Wishlist_page.dart';
import '../../Product_DetailPage/product_detail.dart';
import '../../Setting_Page/setting_page.dart';
import '../home_page.dart';

class ProductGrid extends StatefulWidget {
  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  List<Map<String, dynamic>> wishlist = [];
  final List<Map<String, dynamic>> products = [
    {
      'img':
          'https://i.pinimg.com/736x/f3/3b/d1/f33bd1b5eec5e25cff3ff2e3a8876153.jpg',
      'title': 'T-shirt',
      'description': 'Graphic Cotton Half Sleeve T',
      'originalPrice': 3999.0,
      'discountedPrice': 399.0,
      'discountPercentage': 65,
      'rating': '4',
      'ratingCount': '4.2K'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH65nBtlsvrpHpDIU2zGQ7EZVii35NjKvemA&s',
      'title': 'shirt',
      'description': 'Graphic Cotton Half Sleeve T',
      'originalPrice': 3999.0,
      'discountedPrice': 399.0,
      'discountPercentage': 65,
      'rating': '4',
      'ratingCount': '4.2K'
    },
    {
      'img':
          'https://i.pinimg.com/736x/f3/3b/d1/f33bd1b5eec5e25cff3ff2e3a8876153.jpg',
      'title': 'T-shirt',
      'description': 'Graphic Cotton Half Sleeve T',
      'originalPrice': 3999.0,
      'discountedPrice': 399.0,
      'discountPercentage': 65,
      'rating': '4',
      'ratingCount': '4.2K'
    },
    {
      'img':
          'https://i.pinimg.com/736x/1d/2a/33/1d2a33c915cd46f5c3e7431c7c01e39c.jpg',
      'title': 'SUNGLASSES',
      'description': 'Trending Women Sunglasses',
      'originalPrice': 999.0,
      'discountedPrice': 699.0,
      'discountPercentage': 65,
      'rating': '4',
      'ratingCount': '4.2K'
    },
    {
      'img':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ2r9h5pJO_w1F9lMfuOc657kT-n6OLuYDoQ&s',
      'title': 'TOTEBAG',
      'description': 'Do What Makes You Happy Tote Bag ',
      'originalPrice': 2999.0,
      'discountedPrice': 899.0,
      'discountPercentage': 65,
      'rating': '4',
      'ratingCount': '4.2K'
    },
    {
      'img':
          'https://i.pinimg.com/736x/bc/2e/0e/bc2e0e1d137ad2e37bddf35761a3a344.jpg',
      'title': 'BAG',
      'description': 'College Stylish Bag',
      'originalPrice': 4999.0,
      'discountedPrice': 999.0,
      'discountPercentage': 65,
      'rating': '4',
      'ratingCount': '4.2K'
    },
    {
      'img':
          'https://www.bocage.eu/media/catalog/product/W/W/WWWBOC_20386050411_10.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=1820&width=1560&canvas=1560:1820',
      'title': 'BOOTS',
      'description': 'Furry Low Boots ',
      'originalPrice': 3999.0,
      'discountedPrice': 899.0,
      'discountPercentage': 65,
      'rating': '4',
      'ratingCount': '4.2K'
    },
    {
      'img':
          'https://5.imimg.com/data5/SELLER/Default/2021/3/TY/TP/BB/124561807/perfume-bottle-3d-model-.jpg',
      'title': 'PERFUME',
      'description': 'Vanila Fragrance',
      'originalPrice': 2999.0,
      'discountedPrice': 999.0,
      'discountPercentage': 65,
      'rating': '4',
      'ratingCount': '4.2K'
    },
  ];

  final List<Map<String, String>> categories = [
    {
      'imageUrl':
          'https://i.pinimg.com/736x/1d/8a/7f/1d8a7f9fcbdc92fe638cb49950b4a068.jpg',
      'label': 'SKINCARE',
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIsknrsw46ObUFGmH-kbE7KAqK1Q-toa2FhA&s',
      'label': 'HAIRCARE',
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlpeS9ih4BH_Ws13prv4gH9AqAeQaLUl6Cxg&s',
      'label': 'FRAGRANCE',
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSakNJt_J_dp0eZDZ8XTkBXmwHamVU5tDkQnQ&s',
      'label': 'BATH&BODY',
    },
    {
      'imageUrl':
          'https://i.pinimg.com/564x/ba/74/26/ba742637ced8aeebd4b1001801c37d28.jpg',
      'label': 'BEAUTY',
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
          'https://i.pinimg.com/736x/60/90/2b/60902b194514e1172b664ccc5178536d.jpg',
      'label': 'SUNGLASSES',
    },
    {
      'imageUrl':
          'https://i.pinimg.com/736x/39/3d/3f/393d3f70152b68184f70fcd736427d22.jpg',
      'label': 'FOOTWEAR',
    },
    {
      'imageUrl':
          'https://i.pinimg.com/originals/ad/a1/08/ada1089e4162eb934399e121475532a3.jpg',
      'label': 'LUGGAGE',
    },

    // Add more categories as needed
  ];

  final List<String> imgList = [
    'https://pbs.twimg.com/media/E4oMVHeVcAMRve0.jpg',
    'https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2022/06/07/185105-myntra.jpg?itok=W43PDyBr',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW3wI1koF_VW8enO9Za_h5jNOl5zknoPguuw&s',
    'https://www.adgully.com/img/400/67451_1.png.jpg',
    'https://img.clasf.in/2022/06/17/MYNTRA-SUMMER-SEASON-SALE-20220617234412.7543480015.jpg',
    'https://gobeep.in/wp-content/uploads/2022/04/myntra-end-of-reason-sale-beep-agency-marketing-event-management-square.png'
  ];

  final List<String> trendingItems = [
    '🔥 Hot Deals',
    '“Upgrade your wardrobe without breaking the bank! 💸👖 #FashionFiesta”',
    '📈 Latest Trends',
    '“Shop till you drop! 🛍️✨ #MyntraSale #FashionFrenzy”',
    '🌟 Popular Picks',
    '“Unleash your style with unbeatable deals! 💃🕺 #MyntraMagic #SaleSeason”'
        '🎉 Special Offers',
    '“Get ready to slay with Myntra’s mega sale! 🔥👠 #MyntraMadness #StyleSteals”',
  ];
  bool isFavorite = false; // Tracks if the item is favorited

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/myntra.png',
              height: 40,
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WishlistPage(wishlist: wishlist),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.shopping_cart_outlined),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CartScreen(), // Navigate to WishlistPage
                      ),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pink, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(''),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage()), // Replace with your actual HomePage widget
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProfileWithoutLogin()), // Replace with your actual HomePage widget
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SettingsPage()), // Replace with your actual HomePage widget
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Implement logout functionality
                Navigator.pop(context); // Close drawer
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search for products, brands, and more',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categories.map((category) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              // Navigate to the desired page when tapped
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryPage(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      NetworkImage(category['imageUrl']!),
                                ),
                                SizedBox(
                                    height:
                                        5), // Space between avatar and label
                                Text(
                                  category[
                                      'label']!, // Label outside the CircleAvatar
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                      height:
                          16), // Space between CircleAvatar and trending quotes

                  const SizedBox(height: 16),
                  Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true, // Enables automatic sliding
                          autoPlayInterval: const Duration(seconds: 4),
                          enlargeCenterPage: true, // Enlarge the center item
                          aspectRatio: 16 / 9,
                          onPageChanged: (index, reason) {
                            // Handle page change if needed
                          },
                        ),
                        items: imgList
                            .map((item) => Container(
                                  child: Center(
                                    child: Image.network(
                                      item,
                                      fit: BoxFit.cover,
                                      width: 1000,
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Trending Now',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            CarouselSlider(
                              options: CarouselOptions(
                                height: 80.0, // Adjust height as needed
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 3),
                                enlargeCenterPage: true,
                                aspectRatio: 16 / 9,
                                onPageChanged: (index, reason) {
                                  // Handle page change if needed
                                },
                              ),
                              items: trendingItems
                                  .map((item) => Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        alignment: Alignment.center,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap:
                        true, // Added to handle the GridView inside a ScrollView
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 3.0, // Spacing between rows
                      crossAxisSpacing: 1.0, // Spacing between columns
                      childAspectRatio: 0.5, // Aspect ratio for larger height
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetailPage(products: product),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 5, // Elevation for a shadow effect
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10.0), // Rounded corners
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      product['img'], // Image URL
                                      fit: BoxFit.fill,
                                      height: 260, // Increased image height
                                      width: double.infinity,
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      product['title'], // Product title
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      product[
                                          'description'], // Product description
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Text(
                                          "\u{20B9}${product['originalPrice']},", // Original price
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "\u{20B9}${product['discountedPrice']},", // Discounted price
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "${product['discountPercentage']}% Off", // Discount percentage
                                          style: const TextStyle(
                                            color: Colors.orange,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              // Toggle favorite status
                                              isFavorite = !isFavorite;
                                            });
                                          },
                                          icon: Icon(
                                            isFavorite
                                                ? Icons.favorite
                                                : Icons
                                                    .favorite_outline, // Change icon based on state
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors
                                                    .grey, // Change color based on state
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
