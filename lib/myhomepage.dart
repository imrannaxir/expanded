import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var clientHeight = size.height - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 32,
          ),
        ],
      ),

      body: myExpanded(),
      drawer: myDrawer(),
    );
  }


  Widget myExpanded(){
    return Column(
      children: [
        Expanded(
          flex: 3,
            child: Container(
              color: Colors.deepOrange,

        ),
        ),
        Expanded(
            flex: 7,
            child: Row(
          children: [
            Expanded(
              flex:3,
                child: Container(
              color: Colors.green,
            ),
            ),
            Expanded(
                flex: 7,
                child: Container(
              color: Colors.blue,
                  child: LayoutBuilder(
                    builder: (context, constraints)=> Center(
                      child: Text(
                        'Height : ${constraints.maxHeight} '
                            'Width : ${constraints.maxWidth}'
                      ),
                    ),
                  ),
            ),
            ),
          ],
        ),
        ),
      ],
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.green,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(50),
            child: Text(
              'LOG_IN',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Text(
            'SIGN_UP',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: ListTile(
              leading: Icon(
                Icons.account_balance,
                size: 32,
              ),
              title: Text(
                'My Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.delete,
                size: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}
