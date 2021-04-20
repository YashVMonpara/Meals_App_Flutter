import 'package:flutter/material.dart';
import 'package:meals_app/screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              color: Colors.amber,
              child: Text(
                'Coocking Up',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildListTile(
              'Meals',
              Icons.restaurant,
              () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            buildListTile(
              'Settings',
              Icons.settings,
              () {
                Navigator.of(context)
                    .pushReplacementNamed(FilterScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
