import 'package:chat_app/components/chat_list.dart';
import 'package:chat_app/store/app.dart';
import 'package:chat_app/store/chat_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (_) => AppStore(),
      child: AppPage(),
    ));

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => ChatListStore(),
        child: ChatListPage(),
      ),
    );
  }
}
