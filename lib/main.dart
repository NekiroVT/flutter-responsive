import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Interfaz Responsive")),
      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation) {
            // Si es horizontal, usa Row, sino Column
            return orientation == Orientation.portrait
                ? Column(
                    children: [
                      FractionallySizedBox(
                        widthFactor: 0.8, // 80% del ancho disponible
                        child: Container(
                          height: 200,
                          color: Colors.blue,
                          child: Center(child: Text('Texto aquí', style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Image.asset('assets/imagen.jpg'),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Botón aquí"),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FractionallySizedBox(
                        widthFactor: 0.4,
                        child: Container(
                          height: 150,
                          color: Colors.blue,
                          child: Center(child: Text('Texto aquí', style: TextStyle(color: Colors.white))),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Image.asset('assets/imagen.jpg'),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Botón aquí"),
                      ),
                    ],
                  );
          },
        ),
      ),
    ),
  ));
}
