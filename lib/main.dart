import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter AR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ArCoreController arCoreController;

  _onArCoreViewCreated(ArCoreController _arcoreController) {
    arCoreController = _arcoreController;
    _addSun(arCoreController);
    _addMercury(arCoreController);
    _addVenus(arCoreController);
    _addEarth(arCoreController);
    _addMars(arCoreController);
    _addJupiter(arCoreController);
    _addSaturn(arCoreController);
    _addUranus(arCoreController);
    _addNeptune(arCoreController);



  }
  _addSun(ArCoreController _arcoreController)async {
    final ByteData textureByte= await rootBundle.load("assets/sun.jpg",);
    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureByte.buffer.asUint8List() ,roughness: 0.6);
    final sphere = ArCoreSphere(materials: [material], radius: 1);
    final node=ArCoreNode(shape: sphere,
        position: vector.Vector3(-2, -3, -5),
       );

    _arcoreController.addArCoreNode(node);
  }

  _addMercury(ArCoreController _arcoreController)async {
    final ByteData textureByte= await rootBundle.load("assets/mercury.jpg",);

    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureByte.buffer.asUint8List() ,roughness: 0.6);
    final sphere = ArCoreSphere(materials: [material], radius: 0.4);
    final node=ArCoreRotatingNode( shape: sphere,degreesPerSecond: 3,
        position: vector.Vector3(
          0,
          -3,
          -4,));

    _arcoreController.addArCoreNode(node);
  }
  _addVenus(ArCoreController _arcoreController)async {
    final ByteData textureByte= await rootBundle.load("assets/venus.jpg",);

    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureByte.buffer.asUint8List() ,roughness: 0.2);
    final sphere = ArCoreSphere(materials: [material], radius: 0.4);
    final node=ArCoreRotatingNode( shape: sphere,degreesPerSecond: 3,
        position: vector.Vector3(
            1,
            -3,
            -4));

    _arcoreController.addArCoreNode(node);
  }

  _addEarth(ArCoreController _arcoreController)async {
    final ByteData textureByte= await rootBundle.load("assets/earth.jpg",);

    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureByte.buffer.asUint8List() ,roughness: 0.6);
    final sphere = ArCoreSphere(materials: [material], radius: 0.4);
    final node=ArCoreRotatingNode( shape: sphere,degreesPerSecond: 3,
        position: vector.Vector3(
          1.7,
          -3,
          -4,));

    _arcoreController.addArCoreNode(node);
  }
  _addMars(ArCoreController _arcoreController)async {
    final ByteData textureByte= await rootBundle.load("assets/venus.jpg",);

    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureByte.buffer.asUint8List() ,roughness: 0.6);
    final sphere = ArCoreSphere(materials: [material], radius: 0.4);
    final node=ArCoreRotatingNode( shape: sphere,degreesPerSecond: 3,
        position: vector.Vector3(
          2.5,
          -3,
          -4,));

    _arcoreController.addArCoreNode(node);
  }
  _addJupiter(ArCoreController _arcoreController)async {
    final ByteData textureByte= await rootBundle.load("assets/jupiter.jpg",);

    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureByte.buffer.asUint8List() ,roughness: 0.6);
    final sphere = ArCoreSphere(materials: [material], radius: 0.8);
    final node=ArCoreRotatingNode( shape: sphere,degreesPerSecond: 3,
        position: vector.Vector3(
          3.5,
          -3,
          -4,));

    _arcoreController.addArCoreNode(node);
  }
  _addSaturn(ArCoreController _arcoreController)async {
    final ByteData textureByte= await rootBundle.load("assets/saturn.jpg",);

    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureByte.buffer.asUint8List() ,roughness: 0.6);
    final sphere = ArCoreSphere(materials: [material], radius: 0.6);
    final node=ArCoreRotatingNode( shape: sphere,degreesPerSecond: 3,
        position: vector.Vector3(
          5,
          -3,
          -4,));

    _arcoreController.addArCoreNode(node);
  }
  _addUranus(ArCoreController _arcoreController)async {
    final ByteData textureByte= await rootBundle.load("assets/uranus.jpg",);

    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureByte.buffer.asUint8List() ,roughness: 0.6);
    final sphere = ArCoreSphere(materials: [material], radius: 0.6);
    final node=ArCoreRotatingNode( shape: sphere,degreesPerSecond: 3,
        position: vector.Vector3(
          6.5,
          -3,
          -4,));

    _arcoreController.addArCoreNode(node);
  }
  _addNeptune(ArCoreController _arcoreController)async {
    final ByteData textureByte= await rootBundle.load("assets/neptune.jpg",);

    final material = ArCoreMaterial(color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureByte.buffer.asUint8List() ,roughness: 0.6);
    final sphere = ArCoreSphere(materials: [material], radius: 0.6);
    final node=ArCoreRotatingNode( shape: sphere,degreesPerSecond: 3,
        position: vector.Vector3(
          7.5,
          -3,
          -4,));

    _arcoreController.addArCoreNode(node);
  }


  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Center(
        child:ArCoreView(
          onArCoreViewCreated: _onArCoreViewCreated,
        ),
      ),

    );
  }
}