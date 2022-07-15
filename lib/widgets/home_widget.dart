import 'package:flutter/material.dart';
import 'package:simple_chat_app_with_websockets/src/bloc/home_bloc.dart';

class HomeWidget extends StatelessWidget {
  final HomeBloc bloc;

  const HomeWidget({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
            child: StreamBuilder(
              stream: bloc.sms,
                builder: (context, AsyncSnapshot<String> snapshot) {
              return TextFormField(
                onChanged: bloc.changeSMS,
                decoration: const InputDecoration(labelText: 'Send a message'),
              );
            }),
          ),
          const SizedBox(height: 24),
          StreamBuilder(
            stream: bloc.response,
            builder: (context, snapshot) {
              return Text(snapshot.hasData ? '${snapshot.data}' : '');
            },
          )
        ],
      ),
    );
  }
}
