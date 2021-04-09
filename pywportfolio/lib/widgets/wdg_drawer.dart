import 'package:flutter/material.dart';

class WdgDrawer extends StatelessWidget {
  Widget _buildMenuTile(String label, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              height: 120,
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Text(
                '\{ index \}',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildMenuTile('Home', Icons.home_outlined, () {
              Navigator.of(context).pushReplacementNamed('/');
            }),
            Divider(),
            _buildMenuTile('Education', Icons.book_outlined, () {
              Navigator.of(context).pushReplacementNamed('/');
            }),
            Divider(),
          ],
        ),
      ),
    );
  }
}