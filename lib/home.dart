import 'package:flutter/material.dart';
import 'package:quiz_app/screens/question_page1.dart';
import 'package:quiz_app/screens/question_page2.dart';

class QuizSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text(
            "Welcome to the QuizCraft!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )),
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to QuizPage with quizNumber 1
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => question1()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15), // Adjust padding for button size
                  ),
                  child: Row(
                    children: [
                      // Image on the left side
                      Image.asset(
                        'assets/1.png', // Replace with your image asset path
                        height: 100, // Adjust the height as needed
                        width: 100, // Adjust the width as needed
                      ),
                      SizedBox(width: 10),
                      // Column for text on the right side
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grade 01',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Hey there, Grade 1 buddy! Lets have some quiz fun! Click Me',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Button 2 with image and description
                ElevatedButton(
                  onPressed: () {
                    // Navigate to QuizPage with quizNumber 2
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => question2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15), // Adjust padding for button size
                  ),
                  child: Row(
                    children: [
                      // Image on the left side
                      Image.asset(
                        'assets/2.png', // Replace with your image asset path
                        height: 100, // Adjust the height as needed
                        width: 100, // Adjust the width as needed
                      ),
                      SizedBox(width: 10),
                      // Column for text on the right side
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grade 02',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Hey Grade 2 pals! Its quiz time! Read the questions, look at the answers. ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Button 2 with image and description
                ElevatedButton(
                  onPressed: () {
                    // Navigate to QuizPage with quizNumber 2
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => question2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15), // Adjust padding for button size
                  ),
                  child: Row(
                    children: [
                      // Image on the left side
                      Image.asset(
                        'assets/3.png', // Replace with your image asset path
                        height: 100, // Adjust the height as needed
                        width: 100, // Adjust the width as needed
                      ),
                      SizedBox(width: 10),
                      // Column for text on the right side
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grade 03',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Hello Grade 3 friends! Ready for a quiz adventure?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Button 2 with image and description
                ElevatedButton(
                  onPressed: () {
                    // Navigate to QuizPage with quizNumber 2
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => question2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15), // Adjust padding for button size
                  ),
                  child: Row(
                    children: [
                      // Image on the left side
                      Image.asset(
                        'assets/4.png', // Replace with your image asset path
                        height: 100, // Adjust the height as needed
                        width: 100, // Adjust the width as needed
                      ),
                      SizedBox(width: 10),
                      // Column for text on the right side
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grade 04',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Hey Grade 4 pals! Time for a quiz adventure! Read questions, check out answers',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Button 2 with image and description
                ElevatedButton(
                  onPressed: () {
                    // Navigate to QuizPage with quizNumber 2
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => question2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15), // Adjust padding for button size
                  ),
                  child: Row(
                    children: [
                      // Image on the left side
                      Image.asset(
                        'assets/5.png', // Replace with your image asset path
                        height: 100, // Adjust the height as needed
                        width: 100, // Adjust the width as needed
                      ),
                      SizedBox(width: 10),
                      // Column for text on the right side
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grade 05',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Hello Grade 5 champs! Get ready for a quiz challenge!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Add more quiz buttons with images and descriptions as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
