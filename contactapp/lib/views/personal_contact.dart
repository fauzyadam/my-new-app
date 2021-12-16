import 'package:contactapp/views/try.dart';
import 'package:flutter/material.dart';
import 'package:contactapp/views/home_page.dart';



class PersonalContact extends StatelessWidget {
  const PersonalContact ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
         
        children: [
      ListTile (
        leading:InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute
              (builder:(BuildContext context) => HomePage())
              );
          },
          child:(
          const Icon (
             Icons.arrow_back_ios_new_outlined,
             size: 25,
             color: Colors.black,
             )
             ),
        ),
           title: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: const[
                Text(
                  "Contacts",
          style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
         ),
             ],
           ),
           trailing: (
         const Icon(
           Icons.more_horiz_outlined,
           size: 20,
           color: Colors.black,
           )
           ),
      ),
      Column(
    children: [
      const Padding(
        padding: EdgeInsets.all(20),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/Marie.jpg'),
        ),
      ),
     const Text (
       "Anane Marie",
       style: TextStyle(
         fontSize: 20,
         fontWeight: FontWeight.bold,
       ),
       ),
     const Text(
       "Brisbania, Australia",
       style: TextStyle(
         fontSize: 15,
         fontWeight: FontWeight.bold,
         color: Colors.grey,
       ),
       ),


       Container(
         color: Colors.lightBlueAccent,
         child: Column(
           children:const[
       
         ListTile(
           title: Text(
             "Mobile",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: Colors.black,
             ),
             ),
             subtitle: Text(
               "+233421831009",
               style: TextStyle(
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
                 color: Colors.grey,
               ),
               ),
               trailing: CircleAvatar(
                 backgroundColor: Colors.white,
                 child: Icon(
                   Icons.phone_callback_outlined,
                   size: 20,
                   color: Colors.black,
                             ),
               ),
         ), 
         ListTile(
           title: Text(
             "Email",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: Colors.black,
             ),
             ), 
            subtitle: Text(
               "danielmortz23@gmail.com",
               style: TextStyle(
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
                 color: Colors.grey,
               ),
               ),
                 trailing:CircleAvatar(
                   backgroundColor: Colors.white,
                   child: Icon(
                     Icons.email_outlined,
                     size: 20,
                     color: Colors.black,
                     ),
                 )
                ),
           ListTile(
           title: Text(
             "Group",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: Colors.black,
             ),
             ), 
            subtitle: Text(
               "Uni Friends",
               style: TextStyle(
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
                 color: Colors.grey
               ),
               ),
               trailing:CircleAvatar(
                 backgroundColor: Colors.white,
                 child: Icon(
                   Icons.chat_bubble_outline_outlined,
                   size: 20,
                   color: Colors.black,
                   ),
               ) 
         )
         ]
         ),
       ), 
       ]
      ),
         Container(
          
           margin: const EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
           child: const Text(
           "Account Linked",
              style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
           ),
       ),
         ),
        Container(
          color: Colors.lightBlueAccent,
          padding: const  EdgeInsetsDirectional.all(20),
          child: Column(children: [
            Row(children:const [
              Text(
                "Telegram",
              style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
           ),
                ),
            SizedBox(
              width: 40,
              height: 40,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Image(image: AssetImage(
                  "assets/images/Telegram.png"
                  )),
              ),
            )

            ],
          
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            ),
            Row(children:const [
              Text(
                "Whatsup",
                style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
           ),
                ),
               SizedBox(
                 width: 45,
                 height: 25,
                 child: Image(image: AssetImage(
                   "assets/images/whatsapp.jpg"
                   )),
               ) 
          
            ],
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )

          ],),
        ),
         Container(
          
           margin: const EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
           child: const Text(
           "More Options",
              style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
           ),
       ),
         ),
        Container(
          color: Colors.lightBlueAccent,
          padding: const  EdgeInsetsDirectional.all(20),
          child: Column(children: [
            Row(children:const [
              Text(
                "Share Contact",
              style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
           ),
                ),
            SizedBox(
              width: 40,
              height: 40,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
               
              ),
            )
            ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            ),
            Row(children:const [
              Text(
                "QR Code",
                style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
           ),
                ),
               SizedBox(
                 width: 45,
                 height: 25,
                 ) 
              ],
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
       ],),
        ),
        ],
        ),
    )
      );
    
  }
}