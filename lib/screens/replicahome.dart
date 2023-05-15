import 'package:flutter/material.dart';
import 'package:practice_pro/screens/number_controller/numberscontroller.dart';
import 'package:provider/provider.dart';

class RepicaHome extends StatefulWidget {

  @override
  State<RepicaHome> createState() => _RepicaHomeState();
}

class _RepicaHomeState extends State<RepicaHome> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersController>(
      builder: ((context, ProviderNumberList, child) => Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          focusColor: Colors.green,
          onPressed: (){
            ProviderNumberList.add();
          },
          child: const Icon(Icons.add, size: 24, color: Colors.white,)
      ),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff0a0a0a),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child:
                const Icon(Icons.arrow_back_outlined, size: 20, color: Colors.white,)
            ),
          ),
        ],
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [Colors.blue, Colors.green],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  child: Text(
                    ProviderNumberList.numbers.last.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ProviderNumberList.numbers.length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(ProviderNumberList.numbers![index].toString(), style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      );
                    },
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.vertical,
                  ),
                ),
              ],
            ),
          ),
        ))
      ),
    );
  }
}
