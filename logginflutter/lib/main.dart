import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login With Flutter'),
        ),
        body: cuerpo(),
      ),
    );
  }
}

class cuerpo extends StatelessWidget {
  const cuerpo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://imgs.search.brave.com/qFjI_8HXcxDXJYlVx_LFfgkXYRLoaxqsTkVACWtQMeQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jb250/ZW50Lm5hdGlvbmFs/Z2VvZ3JhcGhpYy5j/b20uZXMvbWVkaW8v/MjAyNC8xMC8zMS9w/aXNjaW5hc183Mzhi/ZjIzMV9pYmxzaW0w/NDY0MDgwN18yNDEw/MzExNTUwMzRfODAw/eDgwMC53ZWJw'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Etiqueta(), campoUser(), campoPass(), btnEntrar()],
      ),
    );
  }

  Widget Etiqueta() {
    return Container(
      child: Center(
        child: Text(
          'Iniciar Sesion',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
    );
  }

  Widget campoUser() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'usuario', fillColor: Colors.cyan, filled: true),
      ),
    );
  }

  Widget campoPass() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Conraseña', fillColor: Colors.cyan, filled: true),
      ),
    );
  }

  Widget btnEntrar() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Entrar',
        style: TextStyle(fontSize: 20, color: Colors.cyan),
      ),
    );
  }
}