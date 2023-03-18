import 'package:flutter/material.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Rich(),
  ));
}

class Rich extends StatelessWidget {
  const Rich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: const Text(
            'I Am Rich',
            style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: DropShadowImage(
            //this is the package class we called

            //@image give Image.asset() or Image.network()
            image: Image.asset('images/diamond.png'),
            //@borderRadius if not defined default value is 0
            borderRadius: 20,
            //@blurRadius if not defined default value is
            blurRadius: 20,
            //@offset default value is Offset(8,8)
            offset: const Offset(5,5),
            //@scale if not defined default value is 1
            scale: 1.05,
          ),
        ),
      ),
    );
  }
}


