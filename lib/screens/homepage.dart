import 'package:flutter/material.dart';
import 'package:practice_pro/screens/number_controller/numberscontroller.dart';
import 'package:practice_pro/screens/replicahome.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersController>(
      builder: ((context, NumbersProviderModel, child) => Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
          focusColor: Colors.green,
          onPressed: (){
            NumbersProviderModel.add();
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
      body:  Container(
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
                    NumbersProviderModel.numbers.last.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                ListView.builder(
                  itemCount: NumbersProviderModel.numbers.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(NumbersProviderModel.numbers![index].toString(), style: const TextStyle(
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

                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RepicaHome()));
                      }, child: const Text("Next Screen")
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
