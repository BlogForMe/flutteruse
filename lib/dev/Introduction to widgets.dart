import 'package:flutter/material.dart';

/**
 */

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello World",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return MaterialApp(
      title: 'My app',
      home: Material(
        child: Column(
          children: <Widget>[
            MyAppBar(
              title: Text(
                'Example title',
                style: Theme.of(context).primaryTextTheme.headline,
              ),
            ),
            Expanded(
              child: Center(
                child: Text('Hello, world!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Flutter Tutorial',
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null,
            ),
            title: Text('Example title'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: null,
              )
            ],
          ),
          body: Center(
            child: Text('Hello, world'),
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Add',
            child: Icon(Icons.add),
            onPressed: null,
          ),
        ));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'GestureDetector',
      home: GestureDetector(
        onTap: () {
          print('MyButton was tapped!');
        },
        child: Container(
          height: 36,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 100),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.lightBlue[500]),
          child: Center(
            child: Text('Engage'),
          ),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Counter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body: Row(
          children: <Widget>[
            RaisedButton(
              onPressed: _increment,
              child: Text('Increment'),
            ),
            Text('Count: $_counter'),
            Container(
              height: 50,
              color: Colors.lightBlue,
              child: Text('数据'
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 15, 15),
              height: 56,
              color: Colors.lightBlue,
              child: Text('画图'),
            )
          ],
        ),
      ),
    );
  }
}
