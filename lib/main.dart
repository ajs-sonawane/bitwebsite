// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

///
// import 'package:flutter/services.dart';
// import 'package:flutter/material.dart';
// import 'package:scroll_navigation/scroll_navigation.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.dark,
//     ));
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Scroll Navigation Demo',
//       home: EasyVerticalNavigation(),
//     );
//   }
// }

//-------------//
//EASY EXAMPLES//
//-------------//
// class EasyHorizontalNavigation extends StatelessWidget {
//   const EasyHorizontalNavigation({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ScrollNavigation(
//       bodyStyle: NavigationBodyStyle(
//         background: Colors.white,
//         borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
//       ),
//       barStyle: NavigationBarStyle(
//         background: Colors.white,
//         elevation: 0.0,
//       ),
//       pages: [
//         Container(color: Colors.blue[100]),
//         Container(color: Colors.green[100]),
//         Container(color: Colors.purple[100]),
//         Container(color: Colors.amber[100]),
//         Container(color: Colors.deepOrange[100])
//       ],
//       items: const [
//         ScrollNavigationItem(icon: Icon(Icons.camera)),
//         ScrollNavigationItem(icon: Icon(Icons.chat)),
//         ScrollNavigationItem(icon: Icon(Icons.favorite)),
//         ScrollNavigationItem(icon: Icon(Icons.notifications)),
//         ScrollNavigationItem(icon: Icon(Icons.home))
//       ],
//     );
//   }
// }

// class EasyVerticalNavigation extends StatelessWidget {
//   const EasyVerticalNavigation({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ScrollNavigation(
//       physics: true,
//       showIdentifier: true,
//       bodyStyle: NavigationBodyStyle(
//         background: Colors.white,
//         borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
//         scrollDirection: Axis.vertical,
//       ),
//       barStyle: NavigationBarStyle(
//         position: NavigationPosition.left,
//         elevation: 0.0,
//         background: Colors.red,
//       ),
//       pages: [
//         Container(color: Colors.blue[100]),
//         Container(color: Colors.green[100]),
//         Container(color: Colors.purple[100]),
//         Container(color: Colors.amber[100]),
//         Container(color: Colors.deepOrange[100])
//       ],
//       items: const [
//         ScrollNavigationItem(icon: Icon(Icons.camera)),
//         ScrollNavigationItem(icon: Icon(Icons.chat)),
//         ScrollNavigationItem(icon: Icon(Icons.favorite)),
//         ScrollNavigationItem(icon: Icon(Icons.notifications)),
//         ScrollNavigationItem(icon: Icon(Icons.home))
//       ],
//     );
//   }
// }

//----------------//
//ADVANCED EXAMPLE//
//----------------//
// class AdvancedNavigation extends StatefulWidget {
//   @override
//   _AdvancedNavigationState createState() => _AdvancedNavigationState();
// }
//
// class _AdvancedNavigationState extends State<AdvancedNavigation> {
//   final navigationKey = GlobalKey<ScrollNavigationState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return ScrollNavigation(
//       key: navigationKey,
//       pages: [
//         Screen(
//           appBar: AppBarTitle(title: "Camera"),
//         ),
//         Screen(
//           appBar: AppBarTitle(title: "Messages"),
//         ),
//         Screen(
//           appBar: AppBarTitle(title: "Favor"),
//           body: Container(color: Colors.cyan[50]),
//         ),
//         Screen(
//           appBar: AppBarTitle(title: "Activity"),
//         ),
//         Screen(appBar: AppBarTitle(title: "Home"))
//       ],
//       items: const [
//         ScrollNavigationItem(icon: Icon(Icons.camera)),
//         ScrollNavigationItem(icon: Icon(Icons.chat)),
//         ScrollNavigationItem(icon: Icon(Icons.favorite)),
//         ScrollNavigationItem(icon: Icon(Icons.notifications)),
//         ScrollNavigationItem(
//           icon: Icon(Icons.home),
//           activeIcon: Icon(Icons.verified_user),
//         )
//       ],
//       pagesActionButtons: [
//         FloatingActionButton(
//           child: Icon(Icons.receipt),
//           backgroundColor: Colors.red,
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => TitleScrollScreen()),
//           ),
//         ),
//         FloatingActionButton(
//           onPressed: () => navigationKey.currentState!.goToPage(4),
//           child: Icon(Icons.arrow_right),
//         ),
//         FloatingActionButton(
//           onPressed: () => navigationKey.currentState!.goToPage(2),
//           child: Icon(Icons.arrow_left),
//         ),
//       ],
//     );
//   }
// }
//
// class TitleScrollScreen extends StatefulWidget {
//   TitleScrollScreen({Key? key}) : super(key: key);
//
//   @override
//   _TitleScrollScreenState createState() => _TitleScrollScreenState();
// }
//
// class _TitleScrollScreenState extends State<TitleScrollScreen> {
//   final ScrollController controller = ScrollController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: SafeArea(
//         child: Screen(
//           appBar: AppBarTitle(title: "Title Scroll", showBack: true),
//           controllerToHideAppBar: controller,
//           body: TitleScrollNavigation(
//             barStyle: TitleNavigationBarStyle(
//               style: TextStyle(fontWeight: FontWeight.bold),
//               padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
//               spaceBetween: 40,
//             ),
//             titles: [
//               "Main Page",
//               "Personal Information",
//               "Personalization",
//               "Security",
//               "Payment Methods",
//             ],
//             pages: [
//               ListView.builder(
//                 itemCount: 30,
//                 controller: controller,
//                 padding: EdgeInsets.zero,
//                 itemBuilder: (_, __) {
//                   return Padding(
//                     padding: EdgeInsets.only(bottom: 10),
//                     child: Container(
//                       height: 60,
//                       color: Colors.blue[50],
//                     ),
//                   );
//                 },
//               ),
//               Container(color: Colors.red[50]),
//               Container(color: Colors.green[50]),
//               Container(color: Colors.purple[50]),
//               Container(color: Colors.yellow[50]),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class AppBarTitle extends StatelessWidget {
//   const AppBarTitle({
//     Key? key,
//     required this.title,
//     this.showBack = false,
//   }) : super(key: key);
//
//   final String title;
//   final bool showBack;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.3),
//             spreadRadius: -3,
//             blurRadius: 2,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: SafeArea(
//         child: Row(children: [
//           if (showBack) ...[
//             GestureDetector(
//               onTap: () => Navigator.pop(context),
//               child: Icon(Icons.arrow_back, color: Colors.grey),
//             ),
//             SizedBox(width: 20),
//           ],
//           Expanded(
//             child: Text(
//               title.toUpperCase(),
//               style: TextStyle(
//                 fontSize: 22,
//                 color: Colors.grey,
//                 fontWeight: FontWeight.bold,
//                 wordSpacing: 1.5,
//                 letterSpacing: 0.5,
//               ),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }

/// smooth_page_indicator >

// import 'package:bit_web/res/widgets/side_red_banner_widget.dart';
// import 'package:bit_web/res/widgets/side_white_banner_widget.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Smooth Page Indicator Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final controller = PageController(viewportFraction: 0.8, keepPage: true);
//
//   @override
//   Widget build(BuildContext context) {
//     final pages = List.generate(
//         6,
//         (index) => Container(
//               height: Get.size.height,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 color: Colors.cyan,
//               ),
//               margin: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
//               child: Container(
//                 // color: Colors.greenAccent,
//                 child: Center(
//                     child: Text(
//                   "Page $index",
//                   style: TextStyle(color: Colors.indigo),
//                 )),
//               ),
//             ));
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Stack(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   // SizedBox(height: 16),
//                   SizedBox(
//                     height: Get.size.height,
//                     child: PageView.builder(
//                       itemCount: 6,
//                       // physics: ,
//                       scrollDirection: Axis.vertical,
//                       allowImplicitScrolling: true,
//                       // dragStartBehavior: DragStartBeha,
//                       controller: controller,
//                       // itemCount: pages.length,
//                       itemBuilder: (_, index) {
//                         return pages[index];
//                       },
//                     ),
//                   ),
//                   // Padding(
//                   //   padding: const EdgeInsets.only(top: 24, bottom: 12),
//                   //   child: Text(
//                   //     'Worm',
//                   //     style: TextStyle(color: Colors.black54),
//                   //   ),
//                   // ),
//                   // SmoothPageIndicator(
//                   //   controller: controller,
//                   //   count: pages.length,
//                   //   effect: WormEffect(
//                   //     dotHeight: 16,
//                   //     dotWidth: 16,
//                   //     type: WormType.thin,
//                   //     // strokeWidth: 5,
//                   //   ),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.only(top: 16, bottom: 8),
//                   //   child: Text(
//                   //     'Jumping Dot',
//                   //     style: TextStyle(color: Colors.black54),
//                   //   ),
//                   // ),
//                   // Container(
//                   //   child: SmoothPageIndicator(
//                   //     controller: controller,
//                   //     count: pages.length,
//                   //     effect: JumpingDotEffect(
//                   //       dotHeight: 16,
//                   //       dotWidth: 16,
//                   //       jumpScale: .7,
//                   //       verticalOffset: 15,
//                   //     ),
//                   //   ),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.only(top: 16, bottom: 8),
//                   //   child: Text(
//                   //     'Swap',
//                   //     style: TextStyle(color: Colors.black54),
//                   //   ),
//                   // ),
//                   // Container(
//                   //   child: SmoothPageIndicator(
//                   //     controller: controller,
//                   //     count: pages.length,
//                   //     effect: SwapEffect(
//                   //       dotHeight: 16,
//                   //       dotWidth: 16,
//                   //       type: SwapType.yRotation,
//                   //     ),
//                   //   ),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.only(top: 16, bottom: 12),
//                   //   child: Text(
//                   //     'Scrolling Dots',
//                   //     style: TextStyle(color: Colors.black54),
//                   //   ),
//                   // ),
//                   // SmoothPageIndicator(
//                   //     controller: controller,
//                   //     count: pages.length,
//                   //     effect: ScrollingDotsEffect(
//                   //       activeStrokeWidth: 2.6,
//                   //       activeDotScale: 1.3,
//                   //       maxVisibleDots: 5,
//                   //       radius: 8,
//                   //       spacing: 10,
//                   //       dotHeight: 12,
//                   //       dotWidth: 12,
//                   //     )),
//                   // Padding(
//                   //   padding: const EdgeInsets.only(top: 16, bottom: 16),
//                   //   child: Text(
//                   //     'Customizable Effect',
//                   //     style: TextStyle(color: Colors.black54),
//                   //   ),
//                   // ),
//                   // Container(
//                   //   // color: Colors.red.withOpacity(.4),
//                   //   child: SmoothPageIndicator(
//                   //     controller: controller,
//                   //     count: pages.length,
//                   //     effect: CustomizableEffect(
//                   //       activeDotDecoration: DotDecoration(
//                   //         width: 32,
//                   //         height: 12,
//                   //         color: Colors.indigo,
//                   //         rotationAngle: 180,
//                   //         verticalOffset: -10,
//                   //         borderRadius: BorderRadius.circular(24),
//                   //         // dotBorder: DotBorder(
//                   //         //   padding: 2,
//                   //         //   width: 2,
//                   //         //   color: Colors.indigo,
//                   //         // ),
//                   //       ),
//                   //       dotDecoration: DotDecoration(
//                   //         width: 24,
//                   //         height: 12,
//                   //         color: Colors.grey,
//                   //         // dotBorder: DotBorder(
//                   //         //   padding: 2,
//                   //         //   width: 2,
//                   //         //   color: Colors.grey,
//                   //         // ),
//                   //         // borderRadius: BorderRadius.only(
//                   //         //     topLeft: Radius.circular(2),
//                   //         //     topRight: Radius.circular(16),
//                   //         //     bottomLeft: Radius.circular(16),
//                   //         //     bottomRight: Radius.circular(2)),
//                   //         borderRadius: BorderRadius.circular(16),
//                   //         verticalOffset: 0,
//                   //       ),
//                   //       spacing: 6.0,
//                   //       // activeColorOverride: (i) => colors[i],
//                   //       inActiveColorOverride: (i) => colors[i],
//                   //     ),
//                   //   ),
//                   // ),
//                   // const SizedBox(height: 32.0),
//                 ],
//               ),
//               Row(
//                 children: const [
//                   SideWhiteBannerWidget(),
//                   SideRedBannerWidget(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// final colors = const [
//   Colors.red,
//   Colors.green,
//   Colors.greenAccent,
//   Colors.amberAccent,
//   Colors.blue,
//   Colors.amber,
// ];

/// page view >>
///

/// Flutter code sample for PageView

// Here is an example of [PageView]. It creates a centered [Text] in each of the three pages
// which scroll horizontally.

import 'package:bit_web/res/anim_widgets/ripple_animation.dart';
import 'package:bit_web/res/widgets/side_red_banner_widget.dart';
import 'package:bit_web/res/widgets/side_white_banner_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        // backgroundColor: Color(0xffe8eaf6),
        // appBar: AppBar(title: const Text(_title)),
        body: Stack(
          children: [
            MyStatelessWidget(),
          ],
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatefulWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  int selectedindex = 0;

  // late final SwiperPlugin swiperPlugin;

  final List<Widget> images = [
    Container(
      color: Colors.greenAccent,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.purple,
    )
  ];

  @override
  void initState() {
    // TODO: implement initState

    // controller = PageController(initialPage: 0);
    // swiperPlugin = SwiperControl();
    // controller.addListener(() {
    //   print("listener >> ${controller.index}");
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Stack(
      children: [
        Row(
          children: [
            SideWhiteBannerWidget(),
            SideRedBannerWidget(
              pgController: controller,
              index: selectedindex,
            ),
            Expanded(
              child: PageView(
                /// [PageView.scrollDirection] defaults to [Axis.horizontal].
                /// Use [Axis.vertical] to scroll vertically. scroll controller comment
                scrollDirection: Axis.vertical,
                controller: controller,
                children: <Widget>[
                  _cell(url: "assets/images/rpa.png"),
                  _cell(url: "assets/images/iaa.png"),
                  _cell(url: "assets/images/rpa1.jpg"),
                  _cell(url: "assets/images/mobility.png"),
                  _cell(url: "assets/images/agile.png"),
                  _cell(url: "assets/images/learning.png"),
                ],
                onPageChanged: (int? page) {
                  setState(() {
                    selectedindex = page!;
                    print(page);
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _cell({url}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.blueGrey,
            spreadRadius: 1.0,
            blurRadius: 9.0)],
            borderRadius: BorderRadius.circular(22.0),
            border: Border.all(color: Colors.white, width: 6.0),
            image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover)),
      ),
    );
  }
}
