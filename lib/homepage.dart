import 'package:flutter/material.dart';
import 'scannerpage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: 500,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/background.png'
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                        color: Colors.indigo,
                    ),
                  ),
                ),
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => ScanQR(),
                      ),
                  );
                },
                child: Text(
                  "Scan QR Code",
                    style: TextStyle(
                        color: Colors.indigo[900],
                    ),
                ),
              ),
            ],
          ),
        )
    );
  }
}