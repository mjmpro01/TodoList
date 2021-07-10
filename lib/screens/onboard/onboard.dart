import 'package:flutter/material.dart';
import 'package:todolist/screens/main/main.dart';
import 'package:todolist/screens/onboard/onboard_model.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: PageView.builder(
          itemCount: screens.length,
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(screens[index].img.toString(), height: 250),
                Container(
                  height: 10,
                  child: ListView.builder(
                    itemCount: screens.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3.0),
                            width: 8.0,
                            height: 8,
                            decoration: BoxDecoration(
                              color: currentIndex == index
                                  ? Colors.blue
                                  : Colors.brown,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  screens[index].text.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  screens[index].desc.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 58,
                ),
                Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/bottom1.png'),
                      width: 400,
                    ),
                    Image(
                      image: AssetImage('assets/bottom2.png'),
                      width: 400,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: TextButton(
                          onPressed: () {
                            if (index == screens.length - 1) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MyHomePage(title: 'aloalo')));
                            }
                            _pageController.nextPage(
                                duration: Duration(microseconds: 300),
                                curve: Curves.bounceInOut);
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 13, bottom: 13, left: 90, right: 94),
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 170),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Log In",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                    ))
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
