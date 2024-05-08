import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  final String titre;
  final Icon icon;

  Header(this.icon,this.titre);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).primaryColor,
              child:icon

          ),
          SizedBox(
            width: 30,
          ),
          Text(titre,style: TextStyle(fontSize: 20,color: Theme.of(context).canvasColor))
        ] );
  }
}
