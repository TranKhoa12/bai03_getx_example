
import 'package:get/get.dart';

// ========================================
// LỚP QUẢN LÝ TRẠNG THÁI COUNTER
// ========================================

// CounterController kế thừa từ GetxController.
// Lớp này dùng để lưu trữ trạng thái và xử lý
// các thao tác liên quan đến bộ đếm.
class CounterController extends GetxController {

  // Khởi tạo biến count với giá trị ban đầu bằng 0.
  // .obs giúp biến count trở thành biến có thể quan sát.
  var count = 0.obs;

  // Phương thức tăng giá trị bộ đếm lên 1.
  void increment() => count++;

  // Phương thức giảm giá trị bộ đếm đi 1.
  void decrement() => count--;
}
