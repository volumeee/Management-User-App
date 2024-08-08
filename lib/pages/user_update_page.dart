import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management_user_app/models/user.dart';
import '../controller/user_controller.dart';

class UpdateUserPage extends StatelessWidget {
  final UserController userController = Get.find();
  final User user;
  final TextEditingController nameController;
  final TextEditingController jobController;

  UpdateUserPage({required this.user})
      : nameController = TextEditingController(text: user.firstName),
        jobController = TextEditingController(text: user.lastName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100], // Retro pastel background color
      appBar: AppBar(
        title: Text(
          'Update User',
          style: TextStyle(
            fontFamily: 'Bangers', // Fun, retro font
            fontSize: 24,
            color: Colors.brown[900], // Retro text color
          ),
        ),
        backgroundColor: Colors.pink[100], // Retro pastel color for AppBar
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: TextStyle(
                  fontFamily: 'RobotoSlab', // Retro-style font
                  color: Colors.brown[700],
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: jobController,
              decoration: InputDecoration(
                labelText: 'Last Name',
                labelStyle: TextStyle(
                  fontFamily: 'RobotoSlab', // Retro-style font
                  color: Colors.brown[700],
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                userController.updateUser(
                  user.id,
                  nameController.text,
                  jobController.text,
                );
                Get.back(); // Kembali ke halaman sebelumnya setelah update user
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[300], // Retro green color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: Color(0xFF6B4F4F), // Retro border color
                    width: 3, // Border width
                  ),
                ),
                shadowColor: Colors.grey[600],
                elevation: 8,
              ),
              child: Text(
                'Update User',
                style: TextStyle(
                  fontFamily: 'Bangers', // Fun, retro font
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
