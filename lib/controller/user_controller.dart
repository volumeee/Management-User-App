import 'package:get/get.dart';
import '../models/user.dart';
import '../services/api_services.dart';

class UserController extends GetxController {
  var users = <User>[].obs;
  var isLoading = true.obs;
  final ApiService apiService = ApiService();

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var fetchedUsers = await apiService.fetchUsers(2);
      users.assignAll(fetchedUsers);
    } finally {
      isLoading(false);
    }
  }

  void createUser(String name, String job) async {
    try {
      await apiService.createUser(name, job);
      fetchUsers(); // Refresh the user list
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateUser(int id, String name, String job) async {
    try {
      await apiService.updateUser(id, name, job);
      fetchUsers(); // Refresh the user list
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteUser(int id) async {
    try {
      await apiService.deleteUser(id);
      fetchUsers(); // Refresh the user list
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
