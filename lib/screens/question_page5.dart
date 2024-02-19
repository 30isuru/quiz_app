import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/screens/result_screen.dart';

class question5 extends StatefulWidget {
  const question5({Key? key}) : super(key: key);

  @override
  State<question5> createState() => _Question1State();
}

class _Question1State extends State<question5> {
  PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color istrue = Colors.green;
  Color iswrong = Colors.red;
  Color btncolor = Colors.blue;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.green
            ], // Adjust these colors as needed
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller!,
            onPageChanged: (page) {
              setState(() {
                isPressed = false;
              });
            },
            itemCount: questions1.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/${questions5.length}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 2.0,
                    thickness: 1.0,
                  ),
                  Text(
                    questions5[index].question!,
                    style: TextStyle(color: Colors.black, fontSize: 27.0),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  for (int i = 0; i < questions5[index].answer!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 18.0),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: isPressed
                            ? questions5[index]
                                    .answer!
                                    .entries
                                    .toList()[i]
                                    .value
                                ? istrue
                                : iswrong
                            : Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 18.0),
                        onPressed: isPressed
                            ? () {}
                            : () {
                                setState(() {
                                  isPressed = true;
                                });
                                if (questions5[index]
                                    .answer!
                                    .entries
                                    .toList()[i]
                                    .value) {
                                  score += 10;
                                  print(score);
                                }
                              },
                        child: Text(
                          questions5[index].answer!.keys.toList()[i],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: isPressed
                            ? index + 1 == questions5.length
                                ? () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ResultScreen(score),
                                      ),
                                    );
                                  }
                                : () {
                                    _controller!.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.linear,
                                    );
                                    setState(() {
                                      isPressed = false;
                                    });
                                  }
                            : null,
                        style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          side: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        child: Text(
                          index + 1 == questions5.length
                              ? "See Result"
                              : "Next Question",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
