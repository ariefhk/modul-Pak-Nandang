import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Flutter 1'),
        leading: Icon(Icons.favorite),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 500,
            width: 500,
            child: Expanded(
                child: ListView(
              children: [
                Text('Latihan Flutter'),
                Image.asset('assets/amikom.png'),
                Image.network(
                    'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/07/pemandangan-alam.jpg'),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Deliver features faster',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                    child: Text('Craft beautiful UI\'s',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20))),
                Expanded(
                    child: FittedBox(
                  fit: BoxFit.contain,
                  child: FlutterLogo(),
                ))
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(
                height:
                    Theme.of(context).textTheme.headline4!.fontSize! * 1 + 120),
            padding: EdgeInsets.all(8),
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              'Hello World',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
            transform: Matrix4.rotationZ(0.1),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Center(child: Text('Hello World')),
          ),
          Card(
            color: Colors.amberAccent,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Hello World'),
            ),
          )
        ],
      ),
    );
  }
}
