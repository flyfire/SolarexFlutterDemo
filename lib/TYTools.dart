import 'dart:ui' as ui show window;
import 'package:flutter/material.dart';

class TYTool {
  // 获取屏幕宽度
  static double screenWidth() {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.width;
  }

  // 获取屏幕高度
  static double screenHeight() {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.height;
  }
}