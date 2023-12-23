import 'package:flutter/material.dart';
import 'package:lapor_book/components/styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashFull();
  }
}

class SplashFull extends StatefulWidget {
  const SplashFull({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPage();
}

class _SplashPage extends State<SplashFull> {
  @override
  void initState() {
    super.initState();
    // TODO nanti bagian ini diganti cek koneksi ke firebase dan cek login
    Future.delayed(Duration.zero, () {
      Navigator.pushReplacementNamed(context, '/register');
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Aplikasi Lapor Book',
            style: headerStyle(level: 1),),
          ),
        ));
  }

}