
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

// ========================================
// GIAO DIỆN COUNTER APP
// ========================================

class CounterApp extends StatelessWidget {

  // Khởi tạo và đăng ký CounterController
  // thông qua cơ chế Dependency Injection của GetX.
  final CounterController c = Get.put(CounterController());

  CounterApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Thanh tiêu đề của ứng dụng.
      appBar: AppBar(
        title: const Text('GetX Counter App'),
      ),

      // ====================================
      // HIỂN THỊ GIÁ TRỊ BỘ ĐẾM
      // ====================================

      body: Center(

        // Obx lắng nghe sự thay đổi của biến count.
        // Khi count thay đổi, Text tự động cập nhật
        // mà không cần sử dụng setState().
        child: Obx(
          () => Text(
            'Count: ${c.count.value}',

            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),

      // ====================================
      // HAI NÚT TĂNG VÀ GIẢM GIÁ TRỊ
      // ====================================

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,

        children: [

          // Nút tăng giá trị bộ đếm.
          FloatingActionButton(
            heroTag: 'btnTang',

            // Gọi phương thức increment() trong Controller.
            onPressed: () => c.increment(),

            child: const Icon(Icons.add),
          ),

          const SizedBox(height: 10),

          // Nút giảm giá trị bộ đếm.
          FloatingActionButton(
            heroTag: 'btnGiam',

            // Gọi phương thức decrement() trong Controller.
            onPressed: () => c.decrement(),

            child: const Icon(Icons.remove),
          ),

        ],
      ),
    );
  }
}
