import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home_screen.dart';
import 'cart_screen.dart';
import 'orders_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAI DA FILA',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: InitialScreen(),
    );
  }
}

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _selectedIndex = 0;
  bool _showWelcomeScreen = true;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    OrdersScreen(),
    LoginScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _showWelcomeScreen = false;
    });
  }

  void _onLoginSuccess() {
    setState(() {
      _selectedIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('SAI DA FILA'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: ClipOval(
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: _showWelcomeScreen
            ? WelcomeScreen(onGetStarted: () {
          setState(() {
            _showWelcomeScreen = false;
            _selectedIndex = 3; // vai p home screen
          });
        })
            : _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Login',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  final VoidCallback onGetStarted;

  WelcomeScreen({required this.onGetStarted});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/logo.png',
          width: 300,
          height: 300,
        ),
        SizedBox(height: 20),
        Text(
          'Bem-vindo ao Sai da Fila!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: onGetStarted,
          child: Text('entrar ou cadastrar',
            style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
