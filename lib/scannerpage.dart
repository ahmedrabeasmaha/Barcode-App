import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:barcode_scan_fix/barcode_scan.dart';

class ScanQR extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScanQRState();
  }
}

class ScanQRState extends State<ScanQR> {
  String qrCodeResult = "Not Yet Scanned";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Scan QR Code",
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
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
              onPressed: () async {
                String codeSanner = await BarcodeScanner.scan();
                setState(() {
                  qrCodeResult = codeSanner;
                });
              },
              child: Text(
                "Open Scanner",
                style: TextStyle(color: Colors.indigo[900]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}