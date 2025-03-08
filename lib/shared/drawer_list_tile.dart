
import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final IconData icon;
  final Text name;
  final Function onPressed;
  const DrawerListTile({
    super.key,
    required this.icon,
    required this.name, required this.onPressed
  });  

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Icon(icon),
      title: name,
      textColor: const Color.fromRGBO(95, 145, 61, 1),
      iconColor: const Color.fromRGBO(95, 145, 61, 1),
      onTap: () {
        onPressed();
        Navigator.pop(context);
      },
    );
  }
}