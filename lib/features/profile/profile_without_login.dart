import 'package:flutter/material.dart';
import 'package:myntra_ui/features/Product_DetailPage/Wishlist_page.dart';
import 'package:myntra_ui/foundation/theme/colors.dart';

import '../Add_Cart/add_to_cart.dart';
import '../login_page/login_bottomsheet.dart';

// class ProfileWithoutLogin extends StatelessWidget {
//   const ProfileWithoutLogin({super.key});
//   final double topcontainerheight = 290;
//   @override
//   Widget build(BuildContext context) {
//     String name;
//     return Column(
//       children: [
//         Container(
//           height: topcontainerheight,
//           child: Stack(
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     height: topcontainerheight * .48,
//                     color: AppColor.dummyBgColor,
//                   ),
//                   Container(
//                     height: topcontainerheight * .52,
//                     color: AppColor.whiteColor,
//                   ),
//                 ],
//               ),
//               Positioned(
//                 top: 74,
//                 bottom: 74,
//                 left: 20,
//                 child: Container(
//                   height: 132,
//                   width: 132,
//                   child: Card(
//                     child: Container(
//                         padding: EdgeInsets.all(25),
//                         child: Image.asset('assets/images/profile.png')),
//                   ),
//                 ),
//               ),
//               Positioned(
//                   bottom: 74,
//                   left: 170,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         showModalBottomSheet(
//                           context: context,
//                           isScrollControlled: true, // This makes the bottom sheet full-screen
//                           builder: (context) => LoginBottomsheet(),
//                         );
//                       },
//                       style: ButtonStyle(
//                           backgroundColor:
//                               WidgetStateProperty.all(AppColor.buttonColor),
//                           textStyle: WidgetStateProperty.all(TextStyle(
//                             fontSize: 12.5,
//                             fontWeight: FontWeight.w600,
//                           ))),
//                       child: Container(
//                           width: MediaQuery.of(context).size.width - 240,
//                           height: 45,
//                           child: Center(
//                               child: Text(
//                             "LOG IN/SIGN UP",
//                             style: TextStyle(color: AppColor.whiteColor),
//                           )))))
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Container(
//           color: AppColor.whiteColor,
//           child: const Column(
//             children: [
//               ProfileItem(
//                 title: "Orders",
//                 subtitle: "Check Your Orders!",
//                 assetName:
//                     "assets/images/orders.png",
//                 isLast: false,
//               ),
//               ProfileItem(
//                 title: "Help-Center",
//                 subtitle: "Help Regarding Your Recent Purchase",
//                 assetName:
//                     "assets/images/orders.png",
//                 isLast: false,
//               ),
//               ProfileItem(
//                 title: "WishList",
//                 subtitle: "Your Most Loved Style!!!",
//                 assetName:
//                     "assets/images/orders.png",
//                 isLast: true,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Container(
//           color: AppColor.whiteColor,
//           child: Column(
//             children: [
//               ProfileItem(
//                 title: "Scane for Coupen",
//                 assetName:
//                     "assets/images/orders.png",
//                 isLast: false,
//               ),
//               ProfileItem(
//                 title: "Refer & Earn ",
//                 assetName:
//                     "assets/images/orders.png",
//                 isLast: true,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         FooterContent(),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class ProfileWithoutLogin extends StatefulWidget {
  const ProfileWithoutLogin({super.key});

  @override
  State<ProfileWithoutLogin> createState() => _ProfileWithoutLoginState();
}

class _ProfileWithoutLoginState extends State<ProfileWithoutLogin> {
  get wishlist => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _buildHeader(context),
          const SizedBox(height: 20),
          _buildProfileOptions(context),
          const Spacer(),
          _buildFooter(),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(

      title: Text(
        'Profile',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.pinkAccent,
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white, // Set the icon color to white
          ),
          onPressed: () {
            // Add search functionality here
          },
        ),

        PopupMenuButton<String>(
          icon: Icon(
            Icons.more_vert, // The default icon for the menu button
            color: Colors.white, // Set the icon color to white
          ),
          onSelected: (value) {
            // Handle menu item selections
            if (value == 'Settings') {
              Navigator.pushNamed(context, '/settings');
            } else if (value == 'Logout') {
              // Handle logout
            }
          },
          itemBuilder: (BuildContext context) {
            return {'Settings', 'Logout'}.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        )

      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      color: Colors.pinkAccent,
      width: double.infinity,
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            child: Image.asset('assets/images/profile.png'),
          ),
          const SizedBox(height: 20),
          Text(
            'Welcome, Guest!',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => LoginBottomsheet(),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              "LOG IN/SIGN UP",
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOptions(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ProfileItem(
            icon: Icons.shopping_bag_outlined,
            title: "Orders",
            subtitle: "Check Your Orders!",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
          Divider(),
          ProfileItem(
            icon: Icons.help_outline,
            title: "Help-Center",
            subtitle: "Help Regarding Your Recent Purchase",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
          Divider(),
          ProfileItem(
            icon: Icons.favorite_outline,
            title: "Wishlist",
            subtitle: "Your Most Loved Styles",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WishlistPage(wishlist: [],)),
              );
            },
          ),
          Divider(),
          ProfileItem(
            icon: Icons.qr_code_scanner,
            title: "Scan for Coupon",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
          Divider(),
          ProfileItem(
            icon: Icons.card_giftcard,
            title: "Refer & Earn",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        'Powered by MyApp',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final bool isLast;
  final VoidCallback onTap;

  const ProfileItem({
    required this.icon,
    required this.title,
    this.subtitle,
    this.isLast = false,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.pinkAccent),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }
}


