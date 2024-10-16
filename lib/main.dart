import 'package:flutter/material.dart';
import 'package:pertemuan6/pages/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nama Kalian',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              fontFamily: 'Serif'),
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black54),
          bodySmall: TextStyle(color: Colors.black45),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              fontFamily: 'Serif'),
          bodyLarge: TextStyle(color: Colors.white70),
          bodyMedium: TextStyle(color: Colors.white60),
          bodySmall: TextStyle(color: Colors.white54),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const IntroductionPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    Future<dynamic> showAlertDialog(
        BuildContext context, String judul, String konten) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(judul),
            content: Text(konten),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }

    // var lebar = MediaQuery.of(context).size.width;
    // var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Pertemuan6"),
        ),
        body:
            // GestureDetector(
            //   // onTap: () {
            //   //   setState(() {
            //   //     selected = !selected;
            //   //   });
            //   // },
            //   // onLongPress: () {
            //   //   setState(() {
            //   //     selected = !selected;
            //   //   });
            //   // },
            //   onDoubleTap: () {
            //     setState(() {
            //       selected = !selected;
            //     });
            //   },
            //   child: Center(
            //     child: AnimatedContainer(
            //       width: selected ? 300.0 : 100.0,
            //       height: selected ? 300.0 : 100.0,
            //       color: selected ? Colors.red : Colors.blue,
            //       alignment:
            //           selected ? Alignment.center : AlignmentDirectional.topCenter,
            //       duration: const Duration(seconds: 2),
            //       curve: Curves.fastOutSlowIn,
            //     ),
            //   ),
            // ),
            // // Container(
            // //   width: lebar,
            // //   height: tinggi,
            // //   color: Colors.amberAccent,
            // // ),
            //     Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       Text('Headline Large',
            //           style: Theme.of(context).textTheme.headlineLarge),
            //       const SizedBox(height: 20),
            //       Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
            //       Text('Body Medium',
            //           style: Theme.of(context).textTheme.bodyMedium),
            //       Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
            //       const SizedBox(height: 20),
            //       ElevatedButton(
            //         onPressed: () {},
            //         child: const Text('Elevated Button'),
            //       ),
            //       const SizedBox(height: 20),
            //       OutlinedButton(
            //         onPressed: () {},
            //         child: const Text('Outlined Button'),
            //       ),
            //       const SizedBox(height: 20),
            //       TextButton(
            //         onPressed: () {},
            //         child: const Text('Text Button'),
            //       ),
            //     ],
            //   ),
            // )
            Center(
          child: ElevatedButton(
            onPressed: () {
              showAlertDialog(
                context,
                "Alert Dialog",
                "Ini adalah sebuah alert dialog. Ini juga bagian konten",
              );
            },

            child: const Text('Tampilkan alert dialog'),
          ),
        ));
  }
}
