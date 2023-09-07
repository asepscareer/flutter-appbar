import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/home': (context) => const Home(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("This is Title"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            alertDialogExample(context);
          },
          icon: const Icon(Icons.menu),
          tooltip: "Menu",
        ),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        bottomOpacity: 0.5,
        shadowColor: Colors.redAccent,
        toolbarOpacity: 0.9,
        elevation: 100,
        excludeHeaderSemantics: true,
        foregroundColor: Colors.red,
        leadingWidth: 30,
        primary: true,
        scrolledUnderElevation: 100,
        surfaceTintColor: Colors.blue,
        titleSpacing: 0.0,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.red,
        ),
        toolbarTextStyle: const TextStyle(
          color: Colors.black,
        ),
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        notificationPredicate: (ScrollNotification notification) {
          return notification is ScrollUpdateNotification &&
              notification.scrollDelta! < 0;
        },
        iconTheme: const IconThemeData(
          size: 25,
        ),
        forceMaterialTransparency: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            color: Colors.white,
            tooltip: "Komentar",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: "Pengaturan",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Ada apa?"),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: "Keluar",
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size(0, 10),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Bottom Appbar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        actionsIconTheme: const IconThemeData(
          color: Colors.white60,
        ),
      ),
    );
  }

  Future<dynamic> alertDialogExample(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Ini Alert Dialog"),
            titleTextStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            icon: const Icon(Icons.notifications_outlined),
            content: const Text("Mau ke kamar mandi?"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("YA"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("TIDAK"),
              )
            ],
          );
        });
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("HOME"),
    );
  }
}
