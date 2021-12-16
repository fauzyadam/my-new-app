

import 'package:contactapp/views/personal_contact.dart';
import 'package:contactapp/views/try.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
   HomePage({ Key? key }) : super(key: key);

 List contact = [
    {"name": "Anane Marie", "contact": "0553408180", "image": "assets/images/Marie.jpg"},
    {"name": "Tony Bonzy", "contact": "0553408170","image": "assets/images/hitz.jpg"},
  {"name": "Antonio Fernandez", "contact": "0503408991","image":"assets/images/kaba.jpg"},
    ]; 
  List info = [
  {"name": "Anna Marie", "contact": "0553408131","image": "assets/images/Marie.jpg"},
  {"name": "Daniel Moterz", "contact": "0269408110","image": "assets/images/Morterz.jpg"},
{"name": "Bernard Mouskyz", "contact": "0555408150","image":"assets/images/todo 2.jpg"},
 {"name": "Billy Hitz", "contact": "0213408170","image":"assets/images/hitz.jpg"}, 
 {"name": "Christiana Wood", "contact": "027380114","image":"assets/images/todo 10.jpg"}  
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  ListView(
        children:[
      Container(
      margin:const EdgeInsets.all(30),
      alignment: Alignment.centerLeft,
      child:Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children:const [
       Text (
       "My Contact",
      style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
      ),
      CircleAvatar (
        radius: 30,
        backgroundImage: AssetImage("assets/images/kaba.jpg"),
        ),
        ],
      ),
      ),
       Row(children:  [
       Container(
       width:MediaQuery.of(context).size.width, 
       height: 50,
       child: Card(
         margin: const EdgeInsets.only(left: 30),
         shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(30),
         ),
       color: Colors.white,
         child: Padding (
       padding: const EdgeInsets.fromLTRB( 15,10,15,10),
       child:  Row(
         children: [
          const Icon(Icons.search_outlined),
        Expanded(
          child: Container(
            child:const Padding(
              padding:  EdgeInsets.only(left:30),
              child:  TextField(
                 decoration: InputDecoration(
                hintText: "Search by name or number",  
                hintStyle: TextStyle(
                  fontSize:25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                hintMaxLines: 10,
      ),
              ),
            ),
          ),
        )
        ],
       ),
         ),
       ),
       ),
       ],),
      Container(
      margin:const EdgeInsets.all(30),
       alignment: Alignment.centerLeft,
      child:   InkWell(
        onTap: (){
      Navigator.of(context).pop();
        },
        child: const Text(
        "Recents",
      style: TextStyle(
        fontSize: 25,
         fontWeight: FontWeight.bold,
         ),
         ),
      ),
      ),
      Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index){
            return InkWell(
               onTap: (){
        Navigator.of(context).push(
      MaterialPageRoute(builder:(BuildContext context) =>const PersonalContact()));
               },
        
child: ListTile(     
              leading: (
               CircleAvatar(
               radius: 30,
               backgroundImage: AssetImage(contact[index]["image"]),
              )),
  title:Text(contact[index]["name"]),
               subtitle: Text(contact[index]["contact"]),
               trailing: const Icon(Icons.more_horiz_outlined),
               
               ),
               );
            },
        separatorBuilder: (BuildContext context, int index){
      
            return const Divider(
      
              height: 10,
      
              thickness: 2,
      
              color: Colors.grey,
      
              indent: 10,
      
              endIndent: 10,
          );
          },
       itemCount: contact.length,
          ),
      ),
      Container(
      margin:const EdgeInsets.all(30),
       alignment: Alignment.centerLeft,
      child:   InkWell(
        onTap: (){
      Navigator.of(context).pop();
        },
        child: const Text(
        "Contacts",
      style: TextStyle(
        fontSize: 25,
         fontWeight: FontWeight.bold,
         ),
         ),
      ),
      ),
Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index){
            return InkWell(
               onTap: (){
        Navigator.of(context).push(
      MaterialPageRoute(builder:(BuildContext context) =>const PersonalContact()));
               },
        
             child: ListTile(     
              leading: (
               CircleAvatar(
               radius: 30,
               backgroundImage: AssetImage(info[index]["image"]),
              )),
               title:Text(info[index]["name"]),
               subtitle: Text(info[index]["contact"]),
               trailing: const Icon(Icons.more_horiz_outlined),
               ), 
             );
            },
      
       separatorBuilder: (BuildContext context, int index){
      
            return const Divider(
      
              height: 10,
      
              thickness: 2,
      
              color: Colors.grey,
      
              indent: 10,
      
              endIndent: 10,
          );
          },
       itemCount: info.length,
          ),
      )
      ]
      ),
      floatingActionButton: FloatingActionButton(
        shape:const CircleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white,
          )
        ),
        child: const Text(
          "+",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        backgroundColor: Colors.purple,
        onPressed:(){}
      ));
 

   
     
  
       


































}
  }    
// body: Column(
//   children: [
//     Container(
//       margin:const EdgeInsets.only(left: 40.0),
//       padding: const EdgeInsets.all(40.0),
//       alignment: Alignment.topRight,
    
//       child: InkWell(
//         onTap: (){},
//         child: const SizedBox (
//           width: 65,
//           height: 60,
//           child: Card(
//             shape: CircleBorder(
//             side: BorderSide(
//               width: 1.0,
//               style: BorderStyle.solid,
//               color: Colors.grey,
//             )  
//             ),
//          child: Icon(
//            Icons.close,
//            size: 32,
//            )
//             ),
//         ),
//       ),
//     ),
//    const TextField(
//      keyboardType: TextInputType.multiline,
//      decoration: InputDecoration(
//        hintText: "Enter your details",
//        hintStyle: TextStyle(
//          fontSize: 20,
//          fontWeight: FontWeight.bold,
//          color: Colors.redAccent,

//        )
//      ),
//      maxLines: null,
//      showCursor: true,
//      cursorColor: Colors.teal,
// ),
// Row(
//   children: [
//     Container(
//      margin:const  EdgeInsets.only(left:20.0),
//       padding: const EdgeInsets.all(50),
//       child: InkWell(
//         onTap: (){},
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30)
//           ), 
//           child: const SizedBox(
//            width: 120,
//            height: 65, 
//             child: Padding(
//               padding: EdgeInsets.all(20.0),
//               child: Text(
//                 "Today",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey,
//                 ),
//                 ),
//             ), 
//           ),
//         ),
//       ),
      
//     ),
//    Row(
//      children:const[
//        Icon(
//        Icons.radio_button_checked_outlined,
//        color: Colors.blue,
//        size: 60,
       
//        )
//      ],
//    ),
   
//   ]),
//   Container(
//     margin:const EdgeInsets.only(left: 120),
//     child: Row (
//        children:const [
//        IconButton(
//          onPressed: null, 
//        icon:  Icon(Icons.create_new_folder_outlined,
//        color: Colors.white, size: 30,
//        )
//        ),
//       IconButton(
//          onPressed: null, 
//        icon:  Icon(Icons.flag_outlined,
//        color: Colors.white, size: 30,
//        ),
//       ),
// IconButton(
//          onPressed: null, 
//        icon:  Icon(Icons.dark_mode_outlined, 
//        color: Colors.white, size: 30,
//        ),
//       )
//        ],
//      ),
//   )
//   ]
//  ),
//   floatingActionButton: FloatingActionButton(
//     onPressed: (){
//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (BuildContext context) =>const  CreateTodoView(),
//         ),
//       );
//     },
//    child: const Text(
//       "+",
//       style: TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 30,
//         color: Colors.white,
//       ),
//       ),
    
//     ) ,
//   );

  
 
   
 
  
  
      
  
    
      
     
  
    

//       appBar: AppBar(
//           title:  const Text(
//             "linked compus", 
//             style: TextStyle(
//             fontSize: 25.0,
//             fontWeight: FontWeight.bold,
//             fontStyle: FontStyle.italic,
//             backgroundColor: Colors.amber,
//             letterSpacing: 0.5,
//             ),
//           ),
//           centerTitle:true,
//       ),
//       body: ListView.separated(
//         padding: const EdgeInsets.all(2.0),
//         itemBuilder: (BuildContext context, int index){
//           return const ListTile(
//             leading: (
//               CircleAvatar(
//                 radius: 25.0,
//                 backgroundColor: Colors.orange,
//                 backgroundImage: AssetImage("Assets/images/todo 3.jpg"),
//               )
//             ),
//           title: Text("that baby"),
//            subtitle: Text("is my baby"),
//            trailing: Icon(Icons.favorite, color: Colors.black12, size: 20.0, semanticLabel: "play",),
//           );
//            },
//           separatorBuilder: (BuildContext context, int index) {
//             return const Divider(
//               height: 20.0,
//               thickness: 5.0,
//               indent: 10.0,
//               endIndent: 10.0,
//               color: Colors.cyan,
// );
//           },
//       itemCount: 10,
      
//       ),

//    bottomNavigationBar: BottomNavigationBar(
//      currentIndex: 0,
//      fixedColor: Colors.blue,
//      items: const [
//        BottomNavigationBarItem(
//          label:  "Home",
//          icon: Icon(Icons.home), 
//          ),
//          BottomNavigationBarItem(
//            label: "Search",
//            icon: Icon(Icons.search), 
//            ),
//            BottomNavigationBarItem(
//              label: "profile",
//              icon: Icon(Icons.account_circle), 
//              ),
//      ]
//          ),
//          drawer: Drawer(
//           child: ListView(
//             children: const [
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   ),
//                   child: Text(
//                     "LinkedCompus",
//                     style: TextStyle(
//                       color: Colors.black12,
//                       fontSize: 24,

//                     ),
//                     ),
//               ),
//                ListTile(
//       title: 
//       Text("Item 1"),
//       leading: Icon(Icons.people),
//       ),
//      ListTile(
//        title: 
//        Text("Item 2"),
//        leading: Icon(Icons.mail),
// ),
//             ]) 
//          ),
//         floatingActionButton: const FloatingActionButton(onPressed: null,child: Icon(Icons.add),),
         
  
   
  
