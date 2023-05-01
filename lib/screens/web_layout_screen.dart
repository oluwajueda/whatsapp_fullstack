import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_full_stack/widgets/contacts_lists.dart';
import 'package:whatsapp_full_stack/widgets/web_profile_bar.dart';
import 'package:whatsapp_full_stack/widgets/web_search_bar.dart';

class WebLayoutScreen extends StatelessWidget {
  const WebLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: const [
                WebProfileBar(),
                WebSearchBar(),
                ContactsList(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
