
import 'package:flutter/material.dart';

class Try extends StatelessWidget {
  const Try({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children:const [
       ListTile(
        leading:(
         Icon(
           Icons.arrow_back_ios_new_outlined,
           size: 20,
           color: Colors.black,
           )
           ),
           title: Text(
         "Contacts",
          style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
         ),
           trailing: (
         Icon(
           Icons.more_horiz_outlined,
           size: 20,
           color: Colors.black,
           )
           ),
      ),
      // Row(
      // children:const[
      //   CircleAvatar(
      //     radius: 30,
      //     ),
      // ListTile(
      
      //   title: Text(
      //   "Daniel Mortz",
      //   style: TextStyle(
      //    fontSize: 20,
      //    fontWeight: FontWeight.bold
      //    )),
      //   subtitle: Text(
      //   "Brisnani, australia",
      //    style: TextStyle(
      
      //     fontSize: 15,
      
      //     fontWeight: FontWeight.bold,
      
      //   ),
      
      //   ),
      
      
      
      // )
      //  ],),
      // // Row(
      //   children:const [
      // ListTile(
      //   title: Text(
      //     "Mobile",
      //     style: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.bold,
      
      //     ),
      //     ),
      //     subtitle: Text(
      //   "+2330550131481",
      //   style: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.bold,
      // ),
      //     ),
      // ),
      // ListTile(
      //   title: Text(
      //     "Email",
      //     style: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.bold,
      
      //     ),
      //     ),
      //     subtitle: Text(
      //   "denielmortz23@gmail.com",
      //   style: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.bold,
      // ),
      //     ),
      // ),
      // ListTile(
      //   title: Text(
      //     "Group",
      //     style: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.bold,
      
      //     ),
      //     ),
      //     subtitle: Text(
      //   "Uni Friends",
      //   style: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.bold,
      // ),
      //     ),
      // )
      
      
      // ],),
      // Row(
      //   children: [
      //     Container(
      //   margin:const EdgeInsets.all(30),
      //   height: 20,
      //   width: 100,
      //   color: Colors.white,
      //   child: const Text(
      //     "Account Linked",
      // style: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.bold,
      // ),
      //   ),
      //     ),
      
      // const ListTile(
      //   title: Text(
      //     "Telegram",
      //    style: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.bold,
      // ), 
      //   ),
      //   trailing:(
      //     Icon(
      //   Icons.label_outline_rounded,
      //   size: 20,
      //   color: Colors.blue,
      //     )
      //   )  ,
      //   ),
      //  const ListTile(
      //     title: Text(
      //   "WatsApp", 
      //  style: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.bold,
      // ), 
      //  ),
      // trailing:(
      //     Icon(
      //   Icons.wallet_travel_sharp,
      //   size: 20,
      //   color: Colors.green,
      //     )
      //   )  ,
      
      
      //   )
      //   ]
      // ),
        // ]
        // ),
         ] ),    
    );
  }
}