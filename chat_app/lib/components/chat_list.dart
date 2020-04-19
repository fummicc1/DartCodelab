import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 24),
              Text("チャット一覧", style: Theme.of(context).textTheme.display1),
              Divider(color: Theme.of(context).dividerColor),
              SizedBox(height: 8),
              ListView.builder(itemBuilder: null)
            ],
          ),
        ),
      ),
    );
  }
}
