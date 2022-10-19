import 'package:flutter/material.dart';
import 'DrawerPages/Bike.dart';
import 'DrawerPages/Bus.dart';
import 'DrawerPages/Car.dart';
import 'DrawerPages/Subway.dart';

class TabsScreen extends StatefulWidget {

  
  const TabsScreen({Key? key}) : super(key: key);
  HomeState createState()=> HomeState();
}

class HomeState extends State<TabsScreen>{
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Transportes"),
          centerTitle: true,
          ),
          drawer: Drawer(
            child:ListView(
              children: <Widget>[
                const UserAccountsDrawerHeader(
                  accountName: Text('Dulce Antúnez'), 
                  accountEmail: Text('dulcejazmin2403@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Text('D', style: TextStyle(fontSize: 40.0)),
                  ),),
                  ListTile(
                    title: Text("Bus"),
                    leading: Icon(Icons.directions_bus),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context)=> Bus())
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Car"),
                    leading: Icon(Icons.directions_car),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context)=> Car())
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Subway"),
                    leading: Icon(Icons.directions_subway),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context)=> Subway())
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Bike"),
                    leading: Icon(Icons.directions_bike),
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context)=> Bike())
                      );
                    },
                  )
              ],
            )
          ),
        body: SafeArea(
          child: Column(
            children: const [
              TabBar(
              isScrollable: true,
              labelColor: Colors.deepPurple,
              unselectedLabelColor: Colors.grey,
              tabs: 
              [
                Tab(text: "Automovil", icon: Icon(Icons.directions_car)),
                Tab(text: "Bus", icon: Icon(Icons.directions_bus)),
                Tab(text: "Bicicleta", icon: Icon(Icons.directions_bike)),
                Tab(text: "Metro", icon: Icon(Icons.directions_subway))
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                      Icon(Icons.directions_car, size: 100, color: Colors.amber),
                      Icon(Icons.directions_bus, size: 100, color: Colors.blue),
                      Icon(Icons.directions_bike, size: 100, color: Colors.pink,),
                      Icon(Icons.directions_subway, size: 100, color: Colors.green),
                  ]
                )
              )
            ],
          )
        ),
      )
    );
  }
}
