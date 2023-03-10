import 'package:flutter/material.dart';
import 'package:whatsapp/view/status.dart';

import 'chat.dart';
import 'community.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  //SingleTickerProviderStateMixin for animation

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff485708),
            title: Text("WhatsApp"),
            elevation: 0.7,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(text: "Chats"),
                Tab(text: "Status"),
                Tab(text: "Calls"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Community(),
              Chat(),
              Status(),
              Text("Four"),
            ],
          ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: CircleAvatar(backgroundColor: Color(0xff485708),child: Icon(Icons.message),),),

        drawer: Drawer(
          
          child: ListView(

            children: const <Widget>[


              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text("Setting")

              ),
              
              ListTile(
                title: Text('Item 1'),

              ),
            ],
          ),

        ),


      ),

      
    );
  }
}
