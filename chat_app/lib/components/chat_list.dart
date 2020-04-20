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
              Row(
                children: <Widget>[
                  Text("チャット一覧", style: Theme.of(context).textTheme.display1),
                  Spacer(),
                  IconButton(onPressed: () {
                  }, icon: Icon(Icons.add, size: 32))
                ],
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
