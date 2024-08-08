import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management_user_app/pages/user_create_page.dart';
import 'package:management_user_app/pages/user_update_page.dart';
import '../controller/user_controller.dart';

class UserListPage extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5E8D7), // Match background with HomePage
      appBar: AppBar(
        title: Text(
          'User List',
          style: TextStyle(
            fontFamily: 'Bangers',
            fontSize: 24,
            color: Color(0xFF4A3F35),
          ),
        ),
        backgroundColor: Color(0xFFF2D7D5), // Match AppBar color with HomePage
      ),
      body: Obx(() {
        if (userController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: userController.users.length,
            itemBuilder: (context, index) {
              var user = userController.users[index];
              return Card(
                color: Colors.white,
                shadowColor: Colors.grey[300],
                elevation: 4,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                    color: Color(0xFF6B4F4F), // Retro border color
                    width: 3,
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  title: Text(
                    '${user.firstName} ${user.lastName}',
                    style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      fontSize: 18,
                      color: Color(0xFF6B4F4F),
                    ),
                  ),
                  subtitle: Text(
                    user.email,
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto Slab',
                      color: Color(0xFF8D6E63),
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        color:
                            Color(0xFFFFB74D), // Bright color for edit button
                        onPressed: () {
                          Get.to(UpdateUserPage(user: user));
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        color:
                            Color(0xFFE57373), // Bright color for delete button
                        onPressed: () {
                          userController.deleteUser(user.id);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CreateUserPage());
        },
        backgroundColor: Color(0xFF64B5F6), // Soft blue color for FAB
        child: Icon(Icons.add),
      ),
    );
  }
}
