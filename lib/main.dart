import 'package:flutter/material.dart';
import 'dart:math';
// random number generate garne widget Dart:mathmaa bhako hunale yo math library use gareko

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text('Lottery winning number is 4'),
              ),
            ),
            // SizedBox() or padding j use gareni bhoo but padding use garnu ramro ho
            Container(
              height: 250,
              width: x == 4 ? 350 : 320,
              decoration: BoxDecoration(
                color: x == 4
                    ? Colors.green.withOpacity(0.3)
                    : Colors.red.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 35,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Congratulations Raja. You have won the lottery. \n Your number is $x. ',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 35,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Better Luck Next Time. Your number is $x. \n Try Again!!!',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
            // Text(x > 5 ? 'x is greater than 5' : x.toString()
            //     // or '$x' j gareni same hoo
            //     )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print(random.nextInt(10).toString());
            x = random.nextInt(6);
            print(x);
            setState(() {});
            print('Tap');
          }
}


// This App helps to clear the concept of stateful and stateless widget


// yo chai stateful widget and stateless widgetko concept ho yo chai tyo matrialbox wala login ui banaisakexi herni ani concept clear hunxa
// simply bhannnu parda stateful widgetmaa setstate use garna milxa jasle recall garda widget build dekhi gardinxa just like hotreload so floating buttonmaa clk garda everytime value update hunxa
// But in case of stateless widget setstate use garna mildaina soo data update debugconsolemaa maatrai hunxa frontendmaa dekhinna floating buttonmaa clk garda tyo front endmaa dekhauna we need to do hot reload everytime jo garna difficult hunxa so ysto casemaaa stateful widget use garni 


// baki frontendmaa design maatrai garnatw jun use gareni bhooo 


// code herera ni bujham

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int x = 0;

//   @override
//   Widget build(BuildContext context) {
//     print('rebuild');
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Text(
//               x.toString(),
//               style: TextStyle(
//                 fontSize: 50,
//               ),
//             ),
//           ),
//           // child: Column(
//           //   children: [

//           //   ],
//           // ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             x++;
//             setState(() {});
//             // print('tap');
//             print(
//               x.toString(),
//             );
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   int x = 0;

//   @override
//   Widget build(BuildContext context) {
//     print('rebuild');
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Text(
//               x.toString(),
//               style: TextStyle(
//                 fontSize: 50,
//               ),
//             ),
//           ),
//           // child: Column(
//           //   children: [

//           //   ],
//           // ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             x++;
//             // setState(() {});
//             // print('tap');
//             print(
//               x.toString(),
//             );
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
