
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class adminpanel extends StatelessWidget {
  Widget _buildSingleContainer({IconData icon, int count, String name, BuildContext context}){
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,
                  size: 35.0,),
                SizedBox(width: 20.0),
                Text(name),
              ],
            ),
            SizedBox(height: 20.0,),
            Text(count.toString(),
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),)
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 1, child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor: Theme.of(context).primaryColor,
          indicatorWeight: 3,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Text('DashBoard',
            style: TextStyle(
              fontSize: 23,
              color: Colors.red[700],
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
        backgroundColor: Colors.white,
        title: Text('WELCOME',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
        ),),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: GridView.count(
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
        children: [
          _buildSingleContainer(
            context: context,
            count: 5,
            icon: Icons.add,
            name: 'Add Product',
            
          ),
        _buildSingleContainer(
          context: context,
          count: 3,
          icon: Icons.delete,
          name: 'Delete \nProduct'
        ),
        _buildSingleContainer(
          context: context,
          count: 2,
          icon: Icons.view_agenda,
          name: 'View Product'
        ),
        _buildSingleContainer(
          context: context,
          count: 1,
          icon: Icons.inventory,
          name: 'View Inventory'
        ),
        _buildSingleContainer(
          context: context,
          count: 1,
          icon: Icons.history,
          name: 'History'),
        _buildSingleContainer(
          context: context,
          count: 0,

          icon: Icons.logout,
          name: 'Sign-out'),


        ],),
      ),
    ));
  }
}
