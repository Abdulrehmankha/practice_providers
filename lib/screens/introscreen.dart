import 'package:flutter/material.dart';
import 'package:practice_pro/screens/clients_environment/users_view.dart';
import 'package:practice_pro/screens/homepage.dart';

class IntroScreen extends StatelessWidget {

  String? welcomeHeading = 'Welcome To Practice App';
  String? introPara = 'Please Select Preferable Option As You Want';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 100;
    var width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$welcomeHeading',
              style: const TextStyle(
                height: 1.5,
                color: Colors.teal,
              fontStyle: FontStyle.italic,
              fontSize: 35,
                fontWeight: FontWeight.w700,
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 1.5,
            ),
            Text(
              '$introPara',
              style: const TextStyle(
                height: 1.5,
                color: Colors.teal,
                fontStyle: FontStyle.normal,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 12,
            ),
            SizedBox(
              height: height * 6.5,
              width: width * 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Text(
                    "Provider With No Api",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
              ),
            ),
            SizedBox(
              height: height * 1,
            ),
            SizedBox(
              height: height * 6.5,
              width: width * 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UsersView()));
                },
                child: const Text(
                  "Provider With Api",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
