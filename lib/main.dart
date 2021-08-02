import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // visualDensity: VisualDensity.adaptivePlatformDensity,
      title: 'New Emulator',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeAll(),
      },
    );
  }
}

class HomeAll extends StatefulWidget {
  @override
  _HomeAllState createState() => _HomeAllState();
}

class _HomeAllState extends State<HomeAll> {
  PageController _pageController = PageController();
  // List<Widget> _screen = [FirstTab(), SecondTab(), ThirdTab()];

  int _index = 0;
  void _onPageChanged(int index) {
    setState(() {
      _index = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    print(selectedIndex);
    _pageController.jumpToPage(selectedIndex);
  }

  void onAddButtonTapped(int index) {
    // use this to animate to the page
    // _pageController.animateToPage(index);

    // or this to jump to it without animating
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigated Tabs"),
      ),
      body: PageView(
        controller: _pageController,
        // children: _screen,
        children: [
          FirstTab(onAddButtonTapped),
          SecondTab(onAddButtonTapped),
          ThirdTab(onAddButtonTapped),
        ],
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      // bottomNavigationBar: BottomNavigationBar(onTap: _onItemTapped, items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.home,
      //       color: _selectedIndex == 0 ? Colors.orange : Colors.black,
      //       size: _selectedIndex == 0 ? 30.0 : null,
      //     ),
      //     label: ("Home"),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.favorite,
      //       color: _selectedIndex == 1 ? Colors.orange : Colors.black,
      //       size: _selectedIndex == 1 ? 30.0 : 22.0,
      //     ),
      //     label: ("favourite"),
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.person,
      //       color: _selectedIndex == 2 ? Colors.orange : Colors.black,
      //       size: _selectedIndex == 2 ? 30.0 : 22.0,
      //     ),
      //     label: ("Account"),
      //   ),
      // ]),
      bottomNavigationBar: Material(
        child: Padding(
          padding: EdgeInsets.only(
              top: 10.0,
              left: 18,
              right: 18,
              bottom: MediaQuery.of(context).padding.bottom),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _index = 0;
                    _pageController.jumpToPage(_index);
                  });
                },
                child: Container(
                  // margin: Edge
                  margin: EdgeInsets.only(bottom: 5.0),
                  decoration: BoxDecoration(
                      color: _index == 0 ? Colors.red : Colors.transparent,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: _index == 0 ? Colors.white : Colors.black,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              _index == 0 ? "Home" : "",
                              style: TextStyle(
                                  color: _index == 0
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _index = 1;
                    _pageController.jumpToPage(_index);
                  });
                },
                child: Container(
                  // margin: Edge
                  margin: EdgeInsets.only(bottom: 5.0),
                  decoration: BoxDecoration(
                      color: _index == 1 ? Colors.red : Colors.transparent,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: _index == 1 ? Colors.white : Colors.black,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              _index == 1 ? "Settings" : "",
                              style: TextStyle(
                                  color: _index == 1
                                      ? Colors.white
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _index = 2;
                    _pageController.jumpToPage(_index);
                  });
                },
                child: Container(
                  // margin: Edge
                  margin: EdgeInsets.only(bottom: 5.0),
                  decoration: BoxDecoration(
                      color: _index == 2 ? Colors.red : Colors.transparent,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: _index == 2 ? Colors.white : Colors.black,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              _index == 2 ? "Notification" : "",
                              style: TextStyle(
                                  color: _index == 2
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _index = 3;
                  });
                },
                child: Container(
                  // margin: Edge
                  margin: EdgeInsets.only(bottom: 5.0),
                  decoration: BoxDecoration(
                      color: _index == 3 ? Colors.red : Colors.transparent,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: _index == 3 ? Colors.white : Colors.black,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              _index == 3 ? "Search" : "",
                              style: TextStyle(
                                  color: _index == 3
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // @override
  // Widget Home1(BuildContext context) {
  //   return Expanded(
  //       child: ListView(
  //     padding: const EdgeInsets.all(8),
  //     children: <Widget>[
  //       Container(
  //         height: 50,
  //         color: Colors.amber[600],
  //         child: const Center(child: Text('Entry A')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[500],
  //         child: const Center(child: Text('Entry B')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[100],
  //         child: const Center(child: Text('Entry C')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[600],
  //         child: const Center(child: Text('Entry A')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[500],
  //         child: const Center(child: Text('Entry B')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[100],
  //         child: const Center(child: Text('Entry C')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[600],
  //         child: const Center(child: Text('Entry A')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[500],
  //         child: const Center(child: Text('Entry B')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[100],
  //         child: const Center(child: Text('Entry C')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[600],
  //         child: const Center(child: Text('Entry A')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[500],
  //         child: const Center(child: Text('Entry B')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[100],
  //         child: const Center(child: Text('Entry C')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[600],
  //         child: const Center(child: Text('Entry A')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[500],
  //         child: const Center(child: Text('Entry B')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[100],
  //         child: const Center(child: Text('Entry C')),
  //       ),
  //     ],
  //   ));
  // }
  //
  // @override
  // Widget Setting(BuildContext context) {
  //   return Expanded(
  //     child: Center(
  //       child: Text("Setting"),
  //     ),
  //   );
  // }
  //
  // @override
  // Widget Notification(BuildContext context) {
  //   return Expanded(
  //     child: Center(
  //       child: Text("Notification"),
  //     ),
  //   );
  // }
  //
  // @override
  // Widget Search(BuildContext context) {
  //   return Expanded(
  //     child: Center(
  //       child: Text("Search"),
  //     ),
  //   );
  // }
}

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int _index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tabs"),
//       ),
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // Spacer(),
//           _index == 0
//               ? HomePage()
//               : (_index == 1
//                   ? Setting(context)
//                   : _index == 2
//                       ? Notification(context)
//                       : Search(context)),
//
//           Padding(
//             padding: EdgeInsets.only(
//                 top: 10.0,
//                 left: 18,
//                 right: 18,
//                 bottom: MediaQuery.of(context).padding.bottom),
//             child: Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _index = 0;
//                     });
//                   },
//                   child: Container(
//                     // margin: Edge
//                     margin: EdgeInsets.only(bottom: 5.0),
//                     decoration: BoxDecoration(
//                         color: _index == 0 ? Colors.red : Colors.transparent,
//                         borderRadius: BorderRadius.circular(25.0)),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 5.0, horizontal: 15),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.home,
//                             color: _index == 0 ? Colors.white : Colors.black,
//                           ),
//                           Container(
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 12),
//                               child: Text(
//                                 _index == 0 ? "Welcome" : "",
//                                 style: TextStyle(
//                                     color: _index == 0
//                                         ? Colors.white
//                                         : Colors.black),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _index = 1;
//                     });
//                   },
//                   child: Container(
//                     // margin: Edge
//                     margin: EdgeInsets.only(bottom: 5.0),
//                     decoration: BoxDecoration(
//                         color: _index == 1 ? Colors.red : Colors.transparent,
//                         borderRadius: BorderRadius.circular(25.0)),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 5.0, horizontal: 15),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.settings,
//                             color: _index == 1 ? Colors.white : Colors.black,
//                           ),
//                           Container(
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 12),
//                               child: Text(
//                                 _index == 1 ? "My Settings" : "",
//                                 style: TextStyle(
//                                     color: _index == 1
//                                         ? Colors.white
//                                         : Colors.white),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _index = 2;
//                     });
//                   },
//                   child: Container(
//                     // margin: Edge
//                     margin: EdgeInsets.only(bottom: 5.0),
//                     decoration: BoxDecoration(
//                         color: _index == 2 ? Colors.red : Colors.transparent,
//                         borderRadius: BorderRadius.circular(25.0)),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 5.0, horizontal: 15),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.notifications,
//                             color: _index == 2 ? Colors.white : Colors.black,
//                           ),
//                           Container(
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 12),
//                               child: Text(
//                                 _index == 2 ? "Notification" : "",
//                                 style: TextStyle(
//                                     color: _index == 2
//                                         ? Colors.white
//                                         : Colors.black),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Spacer(),
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       _index = 3;
//                     });
//                   },
//                   child: Container(
//                     // margin: Edge
//                     margin: EdgeInsets.only(bottom: 5.0),
//                     decoration: BoxDecoration(
//                         color: _index == 3 ? Colors.red : Colors.transparent,
//                         borderRadius: BorderRadius.circular(25.0)),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 5.0, horizontal: 15),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.search,
//                             color: _index == 3 ? Colors.white : Colors.black,
//                           ),
//                           Container(
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 12),
//                               child: Text(
//                                 _index == 3 ? "Search" : "",
//                                 style: TextStyle(
//                                     color: _index == 3
//                                         ? Colors.white
//                                         : Colors.black),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget Home1(BuildContext context) {
//     return Expanded(
//         child: ListView(
//       padding: const EdgeInsets.all(8),
//       children: <Widget>[
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//       ],
//     ));
//   }
//
//   @override
//   Widget Setting(BuildContext context) {
//     return Expanded(
//       child: Center(
//         child: Text("Setting"),
//       ),
//     );
//   }
//
//   @override
//   Widget Notification(BuildContext context) {
//     return Expanded(
//       child: Center(
//         child: Text("Notification"),
//       ),
//     );
//   }
//
//   @override
//   Widget Search(BuildContext context) {
//     return Expanded(
//       child: Center(
//         child: Text("Search"),
//       ),
//     );
//   }
// }
//
// //decoration: BoxDecoration(
// //                             color: Colors.red,
// //                             borderRadius: BorderRadius.circular(25.0)),
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage>
//     with AutomaticKeepAliveClientMixin {
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return Expanded(
//         child: ListView(
//       padding: const EdgeInsets.all(8),
//       children: <Widget>[
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[600],
//           child: const Center(child: Text('Entry A')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[500],
//           child: const Center(child: Text('Entry B')),
//         ),
//         Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(child: Text('Entry C')),
//         ),
//       ],
//     ));
//   }
//
//   @override
//   // TODO: implement wantKeepAlive
//   bool get wantKeepAlive => true;
// }

class FirstTab extends StatefulWidget {
  final void Function(int) onAddButtonTapped;

  FirstTab(this.onAddButtonTapped);

  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab>
    with AutomaticKeepAliveClientMixin {
  int _index = 0;
  // void _onPageChanged(int index) {
  //   print(index);
  //   setState(() {
  //     _index = index;
  //   });
  // }
  // final void Function(int) onAddButtonTapped;

  // _FirstTabState(this.onAddButtonTapped);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        GestureDetector(
          onTap: () {
            widget.onAddButtonTapped(1);
            setState(() {
              // _onPageChanged(2);

              // _index = 0;
              // _pageController.jumpToPage(_index);
            });
          },
          child: Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class SecondTab extends StatefulWidget {
  final void Function(int) onAddButtonTapped;

  SecondTab(this.onAddButtonTapped);

  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    // return Column(
    //   children: [
    //     Text("SECOND PAGE"),
    //     SizedBox(
    //       height: 20.0,
    //     ),
    //     ListView.builder(
    //         itemCount: 2,
    //         itemBuilder: (context, index) {
    //           return Card(
    //               child: Column(
    //             children: [Text("Title of Blog is  ${index + 1}")],
    //           ));
    //         })
    //   ],
    // );

    // return ListView.builder(
    //     itemCount: 500,
    //     itemBuilder: (context, index) {
    //       return Card(
    //           child: Column(
    //         children: [Text("Title of Blog is  ${index + 1}")],
    //       ));
    //     });

    return Column(
      children: [
        RaisedButton(
          onPressed: () => widget.onAddButtonTapped(0),
          child: Text("Page 1"),
          color: Colors.black87,
          textColor: Colors.white,
        ),
        Spacer(),
        RaisedButton(
          onPressed: () => widget.onAddButtonTapped(2),
          child: Text("Page 3"),
          color: Colors.black87,
          textColor: Colors.white,
        )
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class ThirdTab extends StatefulWidget {
  final void Function(int) onAddButtonTapped;

  ThirdTab(this.onAddButtonTapped);

  @override
  _ThirdTabState createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("THIRD PAGE"),
      ],
    );
  }
}
