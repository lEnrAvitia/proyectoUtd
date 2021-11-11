import 'package:flutter/material.dart';
import 'package:proyecto/screens/ajustes.dart';
import 'Cuenta.dart';
import 'Piezas.dart';
import 'servicios.dart';
import 'inicio.dart';

class Home extends StatefulWidget {
  HomeState createState()=> HomeState();

}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return inicio();
      case 1:
        return Cuenta();
      case 2:
        return Piezas();
      case 3:
        return servicios();
      case 4:
        return ajustes();
    }
  }
_onSelectItem(int pos){
  Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });

}
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text ('Juan Perez'),
              accountEmail: Text ('Mc@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('J',
                  style: TextStyle(fontSize:40.0),
                ),
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              leading: Icon(Icons.home),
              selected: (0 == _selectDrawerItem),
              onTap:(){
                _onSelectItem(0);
              },
            ),
            ListTile(
                title: Text('Cuenta'),
                leading: Icon(Icons.assignment_ind_sharp),
                selected: (1 == _selectDrawerItem),
                onTap: (){
                  _onSelectItem(1);
                }
            ),
            ListTile(
                title: Text('Piezas'),
                leading: Icon(Icons.sell_rounded),
                selected: (2 == _selectDrawerItem),
                onTap: (){
                  _onSelectItem(2);
                }
            ),
            ListTile(
                title: Text('Servicios'),
                leading: Icon(Icons.settings_input_antenna_sharp),
                selected: (3 == _selectDrawerItem),
                onTap: (){
                  _onSelectItem(3);
                }
            ),
            ListTile(
                title: Text('Ajustes'),
                leading: Icon(Icons.settings),
                selected: (4 == _selectDrawerItem),
                onTap: (){
                  _onSelectItem(4);
                }
            )
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );

  }

}