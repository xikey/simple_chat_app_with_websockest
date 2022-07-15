import 'package:flutter/material.dart';
import 'package:simple_chat_app_with_websockets/src/provider/home_provider.dart';
import 'home_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = HomeProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zikey Chat App'),
      ),
      body: HomeWidget(
        bloc: bloc,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: bloc.submitPressed,
        tooltip: 'Send message',
        child: const Icon(Icons.send),
      ),
    );
  }
}
