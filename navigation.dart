import 'package:flutter/material.dart';
import 'package:pillbase/hello.dart';

class MainPage extends StatefulWidget {
  static const routeName = 'main-page';

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<IconData> listOfIcons = [
      Icons.home_rounded,
      Icons.favorite_rounded,
      Icons.person_rounded,
    ];
    List<Widget> pageList = const [
      Hello(),
      Hello(),
      Hello(),
    ];

  
    return Scaffold(
        body: pageList[currentIndex],
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: size.width * .17,
          width: size.width * .7,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
          child: ListView.builder(
            itemCount: listOfIcons.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: size.width * 0.07),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        currentIndex = index;
                      },
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 1500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        margin: EdgeInsets.only(
                          bottom: index == currentIndex ? 0 : size.width * .01,
                          right: size.width * .0422,
                          left: size.width * .0422,
                        ),
                        width: size.width * .128,
                        height: index == currentIndex ? size.width * .014 : 0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(10),
                          ),
                        ),
                      ),
                      Icon(
                        listOfIcons[index],
                        size: size.width * .09,
                        color: index == currentIndex
                            ? Theme.of(context).primaryColor
                            : Colors.black38,
                      ),
                      SizedBox(height: size.width * .03),
                    ],
                  ),
                ),
                if (index == (listOfIcons.length - 1))
                  SizedBox(width: size.width * 0.07),
              ],
            ),
          ),
        ),);
  }
}
