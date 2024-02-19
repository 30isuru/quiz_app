import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/screens/result_screen.dart';

class question4 extends StatefulWidget {
  const question4({Key? key}) : super(key: key);
  @override
  State<question4> createState() => _HomepageState();
}

class _HomepageState extends State<question4> {
  PageController? _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color istrue = Colors.green;
  Color iswrong = Colors.red;
  Color btncolor = Colors.blue;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller!,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions4.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Question ${index + 1}/${questions4.length}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 2.0,
                  thickness: 1.0,
                ),
                Text(
                  questions4[index].question!,
                  style: TextStyle(color: Colors.black, fontSize: 27.0),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                for (int i = 0; i < questions4[index].answer!.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 18.0),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: isPressed
                          ? questions4[index].answer!.entries.toList()[i].value
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
                              if (questions4[index]
                                  .answer!
                                  .entries
                                  .toList()[i]
                                  .value) {
                                score += 10;
                                print(score);
                              }
                            },
                      child: Text(
                        questions4[index].answer!.keys.toList()[i],
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
                          ? index + 1 == questions4.length
                              ? () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ResultScreen(score),
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
                        index + 1 == questions4.length
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
    );
  }
}
