
import 'package:db_animal_biography_app/views/screens/global.dart';
import 'package:db_animal_biography_app/widgets/appbar.dart';
import 'package:db_animal_biography_app/widgets/arrow.dart';
import 'package:db_animal_biography_app/widgets/cir_pog_indi.dart';
import 'package:flutter/material.dart';
import 'helper_class/api_animal.dart';
import 'helper_class/db_api_animal.dart';
import 'models/animal_class.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int index = 0;

  TextStyle titleStyle = TextStyle(
    fontSize: 45,
    color: Colors.white.withOpacity(0.8),
    fontWeight: FontWeight.w600,
  );
  TextStyle titleStyle2 = TextStyle(
    fontSize: 30,
    color: Colors.white.withOpacity(0.8),
    fontWeight: FontWeight.w600,
  );

  TextStyle textStyle = TextStyle(
    fontSize: 20,
    color: Colors.white.withOpacity(0.8),
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: index,
          children: [
            // Splash Screen 1
            Stack(
              children: [
                FutureBuilder(
                  future: ImageAPIHelper.imageAPIHelper
                      .getImage(search: "wild animal"),
                  builder: (context, snapShot) {
                    if (snapShot.hasData) {
                      return Image.memory(
                        snapShot.data!,
                        height: height,
                        width: width,
                        fit: BoxFit.fitHeight,
                        colorBlendMode: BlendMode.modulate,
                        color: const Color(0xffC19E82),
                      );
                    } else if (snapShot.hasError) {
                      return Center(
                        child: Text("${snapShot.error}"),
                      );
                    } else {
                      return Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "aplanet",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white.withOpacity(0.65),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "We Love the Planet",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.75),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffC19E82),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appBar1(),
                       Spacer(),
                      Text(
                        "Ready to\nWatch ?",
                        style: titleStyle,
                      ),
                       SizedBox(height: 14),
                      Text(
                        "Aplanet is a global leader in real life entertainment, serving a passionate audience of superfans around the world with content that inspires, informs and entertains.",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                       SizedBox(height: 40),
                      Text(
                        "Start Enjoying",
                        style: textStyle,
                      ),
                       SizedBox(height: 7),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: nextArrow(),
                  ),
                )
              ],
            ),
            // Splash Screen 2
            Stack(
              children: [
                Container(
                  color: const Color(0xffC19E82),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appBar(),
                      const SizedBox(height: 20),
                      Text(
                        " Select a biography",
                        style: titleStyle2,
                      ),
                      const SizedBox(height: 15),
                      (index == 1)
                          ? Expanded(
                        child: FutureBuilder(
                          future: DBHelper.dbHelper
                              .fetchAllSubscriptionRecords(
                              tableName: "plan_screen",
                              data: Global.subscription),
                          builder: (context, snapShot) {
                            if (snapShot.hasData) {
                              List<SubscriptionDB>? res = snapShot.data;

                              return ListView.builder(
                                physics: BouncingScrollPhysics(),
                                itemCount: res!.length,
                                itemBuilder: (context, i) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        Navigator.pushNamed(context, '${res[i].page}');
                                      });
                                    },
                                    child: Container(
                                      height: 140,
                                      margin: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(7),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          colorFilter:
                                          const ColorFilter.mode(
                                            Color(0xffC19E82),
                                            BlendMode.modulate,
                                          ),
                                          image: MemoryImage(
                                            res[i].image,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          const SizedBox(width: 15),
                                          Text(
                                            "Biography of \n${res[i].name} animals",
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Spacer(),
                                          Text("${res[i].page}",style: TextStyle(fontSize: 8,color: Colors.transparent),),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            } else if (snapShot.hasError) {
                              return Center(
                                  child:
                                  Text("Errror ${snapShot.error}"));
                            } else {
                              return circularProgressIndicator();
                            }
                          },
                        ),
                      )
                          : Container(),
                   ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}