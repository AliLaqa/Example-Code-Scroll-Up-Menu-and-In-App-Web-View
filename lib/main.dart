// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
//       ),
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
//   late TabController _tabController;
//   double minChildSize = 1 / 3; // Set initial minChildSize
//   double maxChildSize = 0.9; // Set initial maxChildSize
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//
//     _tabController.addListener(() {
//       if (_tabController.indexIsChanging) {
//         _toggleSheet();
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   void _toggleSheet() {
//     // Expand the DraggableScrollableSheet by setting minChildSize and maxChildSize
//     setState(() {
//       if (minChildSize == 1 / 3) {
//         minChildSize = 0.9;
//         maxChildSize = 0.9;
//       } else {
//         minChildSize = 1 / 3;
//         maxChildSize = 0.9;
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Scroll Up Menu"),
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//       ),
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Text("Example Text"),
//             ],
//           ),
//           DraggableScrollableSheet(
//             initialChildSize: 1 / 3,
//             minChildSize: minChildSize, // Use minChildSize
//             maxChildSize: maxChildSize, // Use maxChildSize
//             expand: true,
//             builder: (BuildContext context, ScrollController scrollController) {
//               return GestureDetector(
//                 onTap: _toggleSheet,
//                 child: Column(
//                   children: [
//                     TabBar(
//                       controller: _tabController,
//                       isScrollable: true,
//                       labelColor: Colors.black,
//                       tabs: <Widget>[
//                         Tab(text: 'Tab 1'),
//                         Tab(text: 'Tab 2'),
//                         Tab(text: 'Tab 3'),
//                       ],
//                     ),
//                     Expanded(
//                       child: TabBarView(
//                         controller: _tabController,
//                         children: <Widget>[
//                           ListView.builder(
//                             controller: scrollController,
//                             itemCount: 50,
//                             itemBuilder: (context, index) {
//                               return ListTile(
//                                 title: Text('Item $index'),
//                               );
//                             },
//                           ),
//                           ListView.builder(
//                             controller: scrollController,
//                             itemCount: 50,
//                             itemBuilder: (context, index) {
//                               return ListTile(
//                                 title: Text('Item $index'),
//                               );
//                             },
//                           ),
//                           ListView.builder(
//                             controller: scrollController,
//                             itemCount: 50,
//                             itemBuilder: (context, index) {
//                               return ListTile(
//                                 title: Text('Item $index'),
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }




///Backup
import 'package:flutter/material.dart';
import 'package:scroll_up_menu/inappwebview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyWebsiteView(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Initialize the TabController
  }

  @override
  void dispose() {
    _tabController.dispose(); // Dispose of the TabController when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll Up Menu"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Text("Example Text"),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 1 / 3,
            minChildSize: 1 / 3,
            maxChildSize: 0.9,
            builder: (BuildContext context, ScrollController scrollController) {
              return Column(
                children: [
                  TabBar(
                    controller: _tabController, // Use the TabController
                    isScrollable: true,
                    labelColor: Colors.black,
                    tabs: <Widget>[
                      Tab(text: 'Tab 1'),
                      Tab(text: 'Tab 2'),
                      Tab(text: 'Tab 3'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController, // Use the same TabController
                      children: <Widget>[
                        ///Tabbar 1 tabbarView
                        ListView.builder(
                          controller: scrollController,
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('Item $index'),
                            );
                          },
                        ),
                        ///Tabbar 2 tabbarView
                        ListView.builder(
                          controller: scrollController,
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('Item $index'),
                            );
                          },
                        ),
                        ///Tabbar 3 tabbarView
                        ListView.builder(
                          controller: scrollController,
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text('Item $index'),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
