import 'package:rxdart/rxdart.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class HomeBloc {
  final _sms = BehaviorSubject<String>();

  final _channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.events'),
  );

  Stream<String> get sms => _sms.stream;
  Stream  get response=>_channel.stream;

  Function(String) get changeSMS => _sms.sink.add;

  submitPressed() {
    if (!_sms.hasValue) return;
    final mySMS = _sms.value;
    _channel.sink.add(mySMS);
  }

  dispose() {
    _sms.close();
  }
}
