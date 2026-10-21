
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_page.dart';

// ========================================
// HÀM KHỞI ĐỘNG ỨNG DỤNG
// ========================================

void main() {
  runApp(

    // Sử dụng GetMaterialApp thay cho MaterialApp
    // để hỗ trợ các tính năng của GetX.
    GetMaterialApp(

      // Ẩn nhãn DEBUG trên màn hình.
      debugShowCheckedModeBanner: false,

      // Khai báo màn hình chính của ứng dụng.
      home: CounterApp(),
    ),
  );
}
