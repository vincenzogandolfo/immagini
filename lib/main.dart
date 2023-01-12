import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Immagini'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Immagine da Cartella (images)',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.asset(
                'images/buddha.jpg',
                width: 120,
                height: 120,
              ),
              const SizedBox(height: 50),
              const Text(
                'Immagine dal Web (https)',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Image.network(
                'https://e0.pxfuel.com/wallpapers/655/44/desktop-wallpaper-full-square-round-5d-diy-diamond-painting-buddha-garden-diamond-painting-cross-stitch-landscape-needlework-home-decorative-buddha-statue-cross-paintings-buddha.jpg',
                width: 120,
                height: 120,
              ),
              const SizedBox(height: 50),
              const Text(
                'Circle Avatar in Stile Social (images)',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage("images/buddha2.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
