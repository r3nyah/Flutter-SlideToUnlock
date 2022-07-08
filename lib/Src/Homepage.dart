import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isUnlock = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Slide To Unlock',
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.deepOrangeAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              isUnlock == false?Icons.lock_outline:Icons.lock_open,
              size: 200,
              color: Colors.deepOrange,
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SlideAction(
                sliderButtonIcon: const Icon(
                  Icons.lock_open,
                  color: Colors.deepOrange,
                ),
                innerColor: Colors.white,
                outerColor: Colors.deepOrange,
                borderRadius: 25,
                onSubmit: (){
                  setState((){
                    isUnlock = true;
                  });
                },
                text: 'Slide to unlock',
                textStyle: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
