import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'user_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5E8D7), // Soft pastel background color
      appBar: AppBar(
        title: Text(
          'Manage Your Users with Ease',
          style: TextStyle(
            fontFamily: 'Bangers', // Fun, retro font
            fontSize: 28, // Slightly larger font size
            color: Color(0xFF4A3F35), // Dark brown text color
          ),
        ),
        backgroundColor: Color(0xFFF2D7D5), // Pastel pink AppBar color
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to the ultimate user management tool! Organize, manage, and track your users effortlessly.',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Bangers',
                  color: Color(0xFF6B4F4F), // Retro text color
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Container(
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey[400],
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Color(0xFF6B4F4F), // Retro border color
                      width: 3,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(
                            fontFamily: 'Bangers',
                            fontSize: 24,
                            color:
                                Color(0xFFFFA726), // Bright orange text color
                          ),
                        ),
                        SizedBox(height: 15),
                        OutlinedButton(
                          onPressed: () => Get.to(UserListPage()),
                          style: OutlinedButton.styleFrom(
                            backgroundColor:
                                Color(0xFF90CAF9), // Soft blue color
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            side: BorderSide(
                              color: Color(0xFF6B4F4F),
                              width: 2,
                            ),
                            shadowColor: Colors.grey[600],
                            elevation: 8,
                          ),
                          child: Text(
                            'Go to User List',
                            style: TextStyle(
                              fontFamily: 'Roboto Slab',
                              fontSize: 20, // Slightly larger font size
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
