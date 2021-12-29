/* Project 02 - App Bar
 *
 * Created by Niko Castellana
 *
 * Date - 10/17/2021
 *
 * This project is an app that
 * shows off three of my favorite
 * Chicago attractions. The app bar
 * contains two tabs, one for the
 * general info of these attractions
 * and reviews for the other.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/* Main application widget */
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Project 02';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: _title,
        home: MyStatelessWidget()
    );
  }
}

/* Stateless widget that the main application instantiates */
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        /* Top of the app screen with a title,
        leading image, and flexible space image */
        appBar: AppBar(
          title: const Text('Things to see in Chicago', style: TextStyle(
              color: Colors.black, fontSize: 22.0),textAlign: TextAlign.center,),
          leading: Image.asset('assets_images/UIC_logo.png'),
          flexibleSpace: const Image(
              image: AssetImage('assets_images/UIC_Campus.jpeg'), fit: BoxFit.cover,),
          /* Two tabs for the bottom of the app bar */
          bottom: const TabBar(
            tabs: <Widget>[
              /* General Info */
              Tab(
                child: Text('General Info', style: TextStyle(
                    color: Colors.black, fontSize: 18.0)),
              ),
              /* Reviews */
              Tab(
                child: Text('Reviews', style: TextStyle(
                    color: Colors.black, fontSize: 18.0)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            firstTab(),
            const secondTab()
          ],
        ),
      ),
    );
  } // End of Widget
} // End of Stateless Widget class

/* First tab function returns a Stateless Widget */
Widget firstTab ()=>
    Column(
      children: <Widget>[
        /* Create first decorated box */
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
              color: Colors.black,
              width: 4,
              ),
            ),
            child: Row(
              children: <Widget>[
                /* Insert Guaranteed Rate Field image in Container */
                Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets_images/guaranteed_rate_field.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                ),
                /* Insert address and title in Container */
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text("Guaranteed Rate Field",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 18.0)),
                      Text("333 W 35th St, Chicago, IL 60616",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,fontSize: 16.0),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        /* Create second decorated box */
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 4,
              ),
            ),
            child: Row(
              children: <Widget>[
                /* Insert Lincoln Park Zoo image in container */
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets_images/Lincoln_Park_Zoo.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                /* Insert address and title in Container */
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text("Lincoln Park Zoo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 18.0)),
                      Text("2001 N Clark St, Chicago, IL 60614",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,fontSize: 16.0),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        /* Create third decorated box */
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 4,
              ),
            ),
            child: Row(
              children: <Widget>[
                /* Insert Navy Pier image in container */
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets_images/Navy_Pier.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                /* Insert address and title in Container */
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text("Navy Pier",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 18.0)),
                      Text("600 E Grand Ave, Chicago, IL 60611",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,fontSize: 16.0),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
// End of first tab function

/* Stateful Widget Class */
class secondTab extends StatefulWidget{
  const secondTab({ Key? key }) : super(key: key);
  @override
  State<secondTab> createState() => _secondTab();
}

/* Stateful Widget Class that is
 * instantiated by the secondTab Class */
class _secondTab extends State<secondTab> {
  static var _likeCountOne = 0;
  static var _dislikeCountOne = 0;
  static var _likeCountTwo = 0;
  static var _dislikeCountTwo = 0;
  static var _likeCountThree = 0;
  static var _dislikeCountThree = 0;

  @override
  Widget build(BuildContext context) =>
      Column(
        children: <Widget>[
          /* Create first decorated box */
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
              ),
              child: Row(
                children: <Widget>[
                  /* Insert title and description */
                  Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Text("Guaranteed Rate Field",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),textAlign: TextAlign.left),
                        Text(
                          "Welcome to Guaranteed Rate Field, home of the Chicago"
                              " White Sox. Bring your friends or family to cheer on your"
                              " favorite baseball team. Enjoy the experience even further"
                              " by partaking in our delicious food and beverages!",
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  /* Insert like and dislike buttons */
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                                icon: const Icon(
                                  Icons.thumb_up,
                                ),
                                iconSize: 30,
                                color: Colors.green,
                                splashColor: Colors.green,
                                onPressed: () => setState(()=>_likeCountOne++)
                            ),
                            Text("$_likeCountOne", style: const TextStyle(fontWeight: FontWeight.bold))
                          ]
                        ),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                  icon: const Icon(
                                    Icons.thumb_down,
                                  ),
                                  iconSize: 30,
                                  color: Colors.red,
                                  splashColor: Colors.red,
                                  onPressed: () => setState(()=>_dislikeCountOne++)
                              ),
                              Text("$_dislikeCountOne", style: const TextStyle(fontWeight: FontWeight.bold))
                            ]

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          /* Create second decorated box */
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
              ),
              child: Row(
                children: <Widget>[
                  /* Insert title and description */
                  Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Text("Lincoln Park Zoo",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                        Text(
                            "Have yourself an exciting day by observing our variety"
                                " of exotic animals like monkeys, wolves, and lions."
                            "With over 1000 animals and 200 different species, the fun "
                                "is endless!",
                            style: TextStyle(fontSize: 14.0),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  /* Insert like and dislike buttons */
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                  icon: const Icon(
                                    Icons.thumb_up,
                                  ),
                                  iconSize: 30,
                                  color: Colors.green,
                                  splashColor: Colors.green,
                                  onPressed: () => setState(()=>_likeCountTwo++)
                              ),
                              Text("$_likeCountTwo", style: const TextStyle(fontWeight: FontWeight.bold))
                            ]

                        ),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                  icon: const Icon(
                                    Icons.thumb_down,
                                  ),
                                  iconSize: 30,
                                  color: Colors.red,
                                  splashColor: Colors.red,
                                  onPressed: () => setState(()=>_dislikeCountTwo++)
                              ),
                              Text("$_dislikeCountTwo", style: const TextStyle(fontWeight: FontWeight.bold))
                            ]

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          /* Create third decorated box */
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
              ),
              child: Row(
                children: <Widget>[
                  /* Insert title and description */
                  Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Text("Navy Pier",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                                ),
                        Text("Come and see Chicago's lakefront, where we have"
                            " fun amusement park rides, excellent dining, and "
                            "unique shops. Navy pier offers a diverse experience"
                            "for everyone!",
                          style: TextStyle(fontSize: 14.0),
                              textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  /* Insert like and dislike buttons */
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                  icon: const Icon(
                                    Icons.thumb_up,
                                  ),
                                  iconSize: 30,
                                  color: Colors.green,
                                  splashColor: Colors.green,
                                  onPressed: () => setState(()=>_likeCountThree++)
                              ),
                              Text("$_likeCountThree", style: const TextStyle(fontWeight: FontWeight.bold))
                            ]

                        ),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                  icon: const Icon(
                                    Icons.thumb_down,
                                  ),
                                  iconSize: 30,
                                  color: Colors.red,
                                  splashColor: Colors.red,
                                  onPressed: () => setState(()=>_dislikeCountThree++)
                              ),
                              Text("$_dislikeCountThree", style: const TextStyle(fontWeight: FontWeight.bold))
                            ]

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
} // End of _secondTab Class