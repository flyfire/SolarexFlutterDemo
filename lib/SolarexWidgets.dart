import 'package:flutter/material.dart';

class SolarexWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return newHorizontalRecommandSolutions();
  }

  Widget newHorizontalRecommandSolutions() {
    initRecommandSolutions();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "推荐方案",
              style: TextStyle(color: const Color(0xff263238), fontSize: 20),
            ),
          ),
          Container(
            height: 198,
            child: ListView.separated(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((BuildContext context, int index) {
                  return Container(
                    height: 178,
                    width: 132,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular((4.0)),
                      // 生成俩层阴影，一层绿，一层黄， 阴影位置由offset决定,阴影模糊层度由blurRadius大小决定（大就更透明更扩散），阴影模糊大小由spreadRadius决定
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0x1A000000),
                            offset: Offset(0, 4.0),
                            blurRadius: 20.0,
                            spreadRadius: 0.0),
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 132 / 178,
                          child: Image.network(
                            recommandSolutions[index]['url'],
                            width: 132,
                          ),
                        ),
                        Positioned(
                            top: 35,
                            left: 10,
                            child: Text(
                              recommandSolutions[index]['title'],
                              style: TextStyle(
                                color: const Color(0xff5A3D2D),
                                fontSize: 10.0
                              ),
                            )),
                        Positioned(
                          top: 55,
                          left: 10,
                          child: Container(
                            alignment: Alignment.center,
                            width: 34,
                            height: 15,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff5A3D2D),
                                width: 1.0
                              ),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 2),
                                  child: Icon(Icons.star,
                                  size: 7,)
                                ),
                                Text(recommandSolutions[index]['subtitle'],
                                style: TextStyle(
                                  color: const Color(0xff5A3D2D),
                                  fontSize: 8
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
                separatorBuilder: ((BuildContext context, int index) {
                  return Container(
                    width: 15,
                    color: Colors.transparent,
                  );
                }),
                itemCount: recommandSolutions.length),
          )
        ],
      ),
    );
  }

  List<dynamic> recommandSolutions = new List(8);

  Widget horizontalRecommandSolutions() {
    initRecommandSolutions();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('推荐方案',
                style:
                    TextStyle(color: const Color(0xff263238), fontSize: 20.0)),
          ),
          Container(
            height: 198,
            // color: Colors.orange,
            child: ListView.separated(
              itemCount: 30,
              padding: const EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return Container(
                  width: 15,
                  height: 15,
                  color: Colors.transparent,
                );
              },
              itemBuilder: (context, index) {
                return Container(
                  width: 132,
                  height: 178,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular((4.0)),
                    // 生成俩层阴影，一层绿，一层黄， 阴影位置由offset决定,阴影模糊层度由blurRadius大小决定（大就更透明更扩散），阴影模糊大小由spreadRadius决定
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x1A000000),
                          offset: Offset(0, 5.0),
                          blurRadius: 10.0,
                          spreadRadius: 2.0),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void initRecommandSolutions() {
    for (int i = 0; i < 8; i++) {
      recommandSolutions[i] = Map();
      recommandSolutions[i]['url'] = 'https://www.baidu.com/img/bd_logo1.png';
      recommandSolutions[i]['title'] = "title $i";
      recommandSolutions[i]['subtitle'] = "4.9";
    }
  }
}
