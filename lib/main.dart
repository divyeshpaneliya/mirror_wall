
import 'package:flutter/material.dart';
import 'package:mirror/shardepep/introscreen.dart';
import 'package:mirror/shardepep/login_page.dart';
import 'package:mirror/shardepep/new_accountpage.dart';
import 'package:mirror/spleshScreen.dart';
import 'package:mirror/tabbarscreen.dart';
import 'package:mirror/video/imageprovider.dart';
import 'package:mirror/video/sceondVideoscreen.dart';
import 'package:mirror/video/videoProviderScreen.dart';
import 'package:provider/provider.dart';
import 'audio/audioprovider.dart';
import 'audio/firstScrren.dart';
import 'audio/secode_screen.dart';
import 'video/firstVideoscreen.dart';

void main() {

  runApp(
    MultiProvider(
        providers: [
          ListenableProvider<top_Provider>(create: (context) =>top_Provider(),),
          ListenableProvider<main_provider>(create: (context) =>main_provider(),),
          ListenableProvider<Image_Provider>(create: (context) =>Image_Provider(),),
        ],
        child:MaterialApp(
          debugShowCheckedModeBanner: false,
          //initialRoute: 'new',
          routes: {
            '/':(context)=>splesh_Screen(),
            'new':(context)=>NewAcount_Screen(),
            'log':(context)=>Login_Screen(),
            'home':(context)=>homescreen(),
            'tab':(context)=>TabBarview_Screen(),
            'firat':(context)=>first_Screen(),
            'fir':(context)=>First_Screen(),
            'sec':(context)=>Second_Screen(),
            'intro':(context)=>intro_Screen(),

          },
        )
    ),
  );
}

