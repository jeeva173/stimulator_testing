import 'package:ftpconnect/ftpconnect.dart';

class FTPService {
  FTPService({
    String host = 'localhost',
    int port = 21,
    String user = '',
    String pass = '',
  }) : ftp = FTPConnect(
          host,
          port: port,
          user: user,
          pass: pass,
        );

  final FTPConnect ftp;

  Future<bool> connect() async {
    try {
      final connected = await ftp.connect();

      if (connected) {
        print('FTP Connected Successfully');
      }

      return connected;
    } catch (e) {
      print('FTP Connection Error: $e');
      return false;
    }
  }

  Future<void> disconnect() async {
    try {
      await ftp.disconnect();
      print('FTP Disconnected');
    } catch (e) {
      print('FTP Disconnect Error: $e');
    }
  }
}