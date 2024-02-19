import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/screens/question_page1.dart';
import 'package:quiz_app/screens/question_page2.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/screens/question_page3.dart';
import 'package:quiz_app/screens/question_page4.dart';
import 'package:quiz_app/screens/question_page5.dart';

class ResultScreen extends StatefulWidget {
  final int score;

  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/won.json', // Replace with the path to your Lottie animation file
            height: 200, // Adjust the height as needed
          ),
          const Text(
            "Congratulations!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text("Your Score is:"),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "${widget.score}",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  // Repeat the quiz based on the current quiz index
                  int repeatQuizIndex = 2; // Change this logic as needed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => getNextQuizPage(repeatQuizIndex),
                    ),
                  );
                },
                elevation: 0.0,
                color: Colors.orange,
                child: Text("Repeat Quiz"),
              ),
              MaterialButton(
                onPressed: () {
                  int nextQuizIndex = 0;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => getNextQuizPage(nextQuizIndex),
                    ),
                  );
                },
                elevation: 0.0,
                color: Colors.blue,
                child: Text("Next Quiz"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper function to determine the next quiz page based on the index
  Widget getNextQuizPage(int nextQuizIndex) {
    switch (nextQuizIndex) {
      case 1:
        return question1();
      case 2:
        return question2();
      case 3:
        return question3();
      case 4:
        return question4();
      case 5:
        return question5();
      default:
        return question1();
    }
  }
}
