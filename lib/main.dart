import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Emilio Renteria 22308051281093 '),
          titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Círculo con margen negro
              Container(
                padding: EdgeInsets.all(5), // Margen simulado
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black, // Color del margen
                ),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // Color interno
                  ),
                ),
              ),

              // Círculo de color morado con margen negro
              Container(
                padding: EdgeInsets.all(3), // Margen simulado
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black, // Color del margen
                ),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                ),
              ),

              // Círculo con imagen y margen negro
              Container(
                padding: EdgeInsets.all(3), // Margen simulado
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black, // Color del margen
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://images7.memedroid.com/images/UPLOADED322/634084e6e7085.jpeg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return CircularProgressIndicator();
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error, size: 80, color: Colors.red);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

