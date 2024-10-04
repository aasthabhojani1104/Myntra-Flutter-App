import 'package:flutter/material.dart';
import 'package:myntra_ui/foundation/theme/colors.dart';

import '../../foundation/ab_solidbutton/ab-solid_button.dart';

class LoginBottomsheet extends StatefulWidget {
  const LoginBottomsheet({super.key});

  @override
  State<LoginBottomsheet> createState() => _LoginBottomsheetState();
}

class _LoginBottomsheetState extends State<LoginBottomsheet> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/myntra.png',
                    height: 45,
                    width: 45,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the bottom sheet
                    },
                    icon: Icon(Icons.clear),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Login ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' or ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' SignUp',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              // Email Field
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: AppColor.bodyTextColor1,
                  fontSize: 13,
                ),
                decoration: InputDecoration(
                  labelText: "Email Address*",
                  labelStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColor.bodyTextColor1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.black54,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              // Password Field
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                style: TextStyle(
                  color: AppColor.bodyTextColor1,
                  fontSize: 13,
                ),
                decoration: InputDecoration(
                  labelText: "Password*",
                  labelStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColor.bodyTextColor1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.black54,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              // Mobile Number Field
              TextFormField(
                controller: _mobileController,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: AppColor.bodyTextColor1,
                  fontSize: 13,
                ),
                decoration: InputDecoration(
                  labelText: "Mobile Number*",
                  labelStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 9),
                    child: Text(
                      '+91 | ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColor.bodyTextColor1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Colors.black54,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your mobile number';
                  } else if (value.length != 10) {
                    return 'Please enter a valid 10-digit mobile number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 35),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By Continuing, I agree to the ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Terms of Use',
                      style: TextStyle(
                        color: AppColor.buttonColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' & ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: AppColor.buttonColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Proceed with login logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login successful')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Full-width button
                  backgroundColor: AppColor.buttonColor, // Button color
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
              const SizedBox(height: 35),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: ' Having Trouble in logging in? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' Get Help',
                      style: TextStyle(
                        color: AppColor.buttonColor,
                        fontSize: 13,
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
    );
  }
}

