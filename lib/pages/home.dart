import 'package:agri_connect/pages/widgets/home_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/icons/gemini-color.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.map,
                color: _index == 0 ? Colors.blue : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.list_alt,
                color: _index == 1 ? Colors.blue : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
            const SizedBox(width: 40), // Space for the FAB
            IconButton(
              icon: Icon(
                Icons.shopping_basket_outlined,
                color: _index == 2 ? Colors.blue : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _index = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: _index == 3 ? Colors.blue : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _index = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
