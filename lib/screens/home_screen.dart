import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Produtos Disponíveis', style: TextStyle(fontSize: 24)),
            Expanded(
              child: ListView(
                children: [
                  // teste p listar produtos - apagar dps
                  ListTile(
                    leading: Icon(Icons.local_offer),
                    title: Text('Produto 1'),
                    subtitle: Text('Descrição do Produto 1'),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_offer),
                    title: Text('Produto 2'),
                    subtitle: Text('Descrição do Produto 2'),
                  ),
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
