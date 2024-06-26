import 'package:app/chat/service/auth/auth_service.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  void logout(){
    //get auth service
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Column(
            children: [
              DrawerHeader(child:
                Image.asset(
                  'lib/images/logoblack.png',
                  width: 240,
                )),
              
              //home list title
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text("H O M E", style: TextStyle(color: Colors.grey[700]),),
                  leading: Icon(Icons.home, color: Colors.grey[600],),
                  onTap: (){
                    //pop drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              
              //settings list title
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text("S E T T I N G S", style: TextStyle(color: Colors.grey[700]),),
                  leading: Icon(Icons.settings, color: Colors.grey[600],),
                  onTap: (){
                    //pop drawer
                    Navigator.pop(context);

                    //navigate to settings page
                    
                  },
                ),
              ),
            ],
          ),

          //logout list tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25),
            child: ListTile(
              title: Text("L O G O U T", style: TextStyle(color: Colors.grey[700]),),
              leading: Icon(Icons.logout, color: Colors.grey[600],),
              onTap: logout,
            ),
          )
        ],
      ),
    );
  }
}