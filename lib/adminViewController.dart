import 'package:flutter/material.dart';
import 'package:goldworld/accounts.dart';
import 'package:goldworld/admin.dart';
import 'package:goldworld/adminInfo.dart';
import 'package:goldworld/adminOrdersRecievered.dart';
import 'package:goldworld/adminSearchPage.dart';
import 'package:goldworld/product.dart';

import 'Payment.dart';
class AdminViewController extends StatefulWidget {
  const AdminViewController({Key? key}) : super(key: key);

  @override
  _AdminViewControllerState createState() => _AdminViewControllerState();
}

class _AdminViewControllerState extends State<AdminViewController> {
  int index=0;

  List<Widget> adminViews=[const Admin(),const Accounts(),const AdminOrderReceived(),const Product(),const PaymentConnection(),const AdminInfo(),const AdminSearchPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('GoldWorld Admin',style:TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,

          letterSpacing: 2.0,

        ),),


        elevation: 0.0,

      ),
      drawer:   Drawer(
        elevation: 0,

        child: ListView(
          children: <Widget>[


            const SizedBox(
              height: 65,
              child: DrawerHeader(


                child:Center(child: Text('Navigation',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1),))


              ),
            ),

        ListTile(
        title: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1),),
        subtitle: const Text('Default view of Admin',style: TextStyle(color: Colors.grey,fontSize: 12,letterSpacing: 1)),
        onTap: (){
         setState(() {
           index=0;
         });

        },),
            ListTile(
              title: const Text('Accounts',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1),),
              subtitle: const Text('List of all clients using Goldworld',style: TextStyle(color: Colors.grey,fontSize: 12,letterSpacing: 1)),
              onTap: (){
                setState(() {
                  index=1;
                });
              },
            ),
            ListTile(
              title: const Text('Orders',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1),),
              subtitle: const Text('List of all of orders placed by clients',style: TextStyle(color: Colors.grey,fontSize: 12,letterSpacing: 1)),
              onTap: (){
                setState(() {
                  index=2;
                });
              },
            ),
            ListTile(
              title: const Text('Products',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1),),
              subtitle: const Text('Upload details of Gold',style: TextStyle(color: Colors.grey,fontSize: 12,letterSpacing: 1)),
              onTap: (){
                setState(() {
                  index=3;
                });

              },
            ),
            ListTile(
              title: const Text('Payments ',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1),),
              subtitle: const Text('Admin Details and generation',style: TextStyle(color: Colors.grey,fontSize: 12,letterSpacing: 1)),
              onTap: (){
                setState(() {
                  index=4;
                });

              },
            ),

            ListTile(
              title: const Text('Admin ',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1),),
              subtitle: const Text('Admin Details and generation',style: TextStyle(color: Colors.grey,fontSize: 12,letterSpacing: 1)),
              onTap: (){
                setState(() {
                  index=5;
                });

              },
            ),
            ListTile(
              title: const Text('Search ',style: TextStyle(color: Colors.black,fontSize: 18,letterSpacing: 1),),
              subtitle: const Text('Admin Details and generation',style: TextStyle(color: Colors.grey,fontSize: 12,letterSpacing: 1)),
              onTap: (){
                setState(() {
                  index=6;
                });

              },
            )


          ],
        ),

      ),
     body: adminViews.elementAt(index),


     // body:adminViews.elementAt(index)


    );
  }
}
