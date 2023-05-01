import 'package:flutter/material.dart';
import 'package:whatsapp_full_stack/colors.dart';
import 'package:whatsapp_full_stack/screens/mobile_chat_screen.dart';
import 'package:whatsapp_full_stack/screens/web_layout_screen.dart';
import 'package:whatsapp_full_stack/utils/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileChatScreen(),
        webScreenLayout: WebLayoutScreen(),
      ),
    );
  }
}
