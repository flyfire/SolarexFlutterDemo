import 'package:flutter/material.dart';

import 'TYTools.dart';

class SolarexWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return planDetailsHeader();
  }

  Widget planDetailsHeader() {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 375 / 215,
            child: Image.network(
                "http://seopic.699pic.com/photo/50054/7969.jpg_wh1200.jpg"),
          ),
          Positioned(
            top: 24.0,
            height: 44.0,
            child: getTitlebar(),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 160,
            child: getFinishedAvaters(),
          )
        ],
      ),
    );
  }

  Widget getTitlebar() {
    return Container(
      height: 44.0,
      width: TYTool.screenWidth(),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[backButton(), titleText()],
      ),
    );
  }

  Widget backButton() {
    return Container(
      height: 40.0,
      width: 40.0,
      margin: EdgeInsets.only(left: 15.0),
      child: MaterialButton(
        padding: EdgeInsets.all(0.0),
        //水波纹颜色透明
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Icon(
          Icons.star,
          color: Colors.green,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget titleText() {
    return Container(
        height: 40.0,
        alignment: Alignment.center,
        child: Container(
          width: 150.0,
          alignment: Alignment.center,
          child: Text(
            "计划详情",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }

  Widget getFinishedAvaters() {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          color: const Color(0x4d000000),
          borderRadius: BorderRadius.circular(35)),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left: 15,
            child: Text(
              "12345人已完成",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
          Positioned(
            right: 79.5,
            child: Container(
              width: 23,
              height: 23,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(23)),
              child: Padding(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ),
          Positioned(
            right: 62.3,
            child: Container(
              width: 23,
              height: 23,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(23)),
              child: Padding(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
              ),
            ),
          ),
          Positioned(
            right: 44.9,
            child: Container(
              width: 23,
              height: 23,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(23)),
              child: Padding(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ),
          Positioned(
            right: 27.7,
            child: Container(
              width: 23,
              height: 23,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(23)),
              child: Padding(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ),
          Positioned(
            right: 11.0,
            child: Container(
              width: 23,
              height: 23,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(23)),
              child: Padding(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget energyManagementNoData() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 37, left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: const Color(0xffF2F4F5), width: 1.0),
            boxShadow: [
              BoxShadow(
                  color: const Color(0x1A000000),
                  offset: Offset(0, 4.0),
                  blurRadius: 20.0,
                  spreadRadius: 0.0),
            ],
          ),
          height: 270.0,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 15,
                left: 15,
                child: Text(
                  "疲劳量表",
                  style:
                      TextStyle(color: const Color(0xff374147), fontSize: 14.0),
                ),
              ),
              Positioned(
                top: 75,
                child: Image.asset(
                  "images/pic_tired.png",
                  width: 117,
                  height: 105,
                ),
              ),
              Positioned(
                top: 197.5,
                child: Text(
                  "暂无疲劳得分，先测试，后设置目标",
                  style:
                      TextStyle(color: const Color(0xffAAB2B7), fontSize: 13),
                ),
              ),
              Positioned(
                top: 231.5,
                child: GestureDetector(
                  onTap: () {
                    print("去测试");
                  },
                  child: Text(
                    "去测试",
                    style:
                        TextStyle(color: const Color(0xff1AD9CA), fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget energyManagement() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 37, left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: const Color(0xffF2F4F5), width: 1.0),
            boxShadow: [
              BoxShadow(
                  color: const Color(0x1A000000),
                  offset: Offset(0, 4.0),
                  blurRadius: 20.0,
                  spreadRadius: 0.0),
            ],
          ),
          height: 270.0,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 15,
                left: 15,
                child: Text(
                  "疲劳量表",
                  style:
                      TextStyle(color: const Color(0xff374147), fontSize: 14.0),
                ),
              ),
              Positioned(
                top: 60.5,
                left: 15,
                right: 15,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xfff2f4f5),
                    borderRadius: BorderRadius.circular(4),
                    border:
                        Border.all(color: const Color(0xffF2F4F5), width: 1.0),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        left: 15,
                        child: Text(
                          "疲劳得分：",
                          style: TextStyle(
                              color: const Color(0xff808184), fontSize: 12),
                        ),
                      ),
                      Positioned(
                        left: 80,
                        child: Text(
                          "60分",
                          style: TextStyle(
                              color: const Color(0xff374147), fontSize: 15),
                        ),
                      ),
                      Positioned(
                        right: 61,
                        child: Image.asset(
                          "images/btn_again.png",
                          width: 12,
                          height: 10,
                        ),
                      ),
                      Positioned(
                        right: 15,
                        child: Text(
                          "重新测试",
                          style: TextStyle(
                              color: const Color(0xff1AD9CA), fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 130,
                  child: Text(
                    "目标疲劳得分",
                    style:
                        TextStyle(color: const Color(0xffAAB2B7), fontSize: 12),
                  )),
              Positioned(
                  top: 160,
                  left: 43.5,
                  right: 43.5,
                  child: Container(
                    color: Colors.green,
                    height: 80,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget verticalSetTarget() {
    initRecommandSolutions();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: ListView.separated(
            itemBuilder: ((BuildContext context, int index) {
              return Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border:
                        Border.all(color: const Color(0xffF2F4F5), width: 1.0)),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      left: 20,
                      child: Icon(
                        Icons.star,
                        size: 15,
                      ),
                    ),
                    Positioned(
                      left: 45,
                      child: Text(
                        "hello",
                        style: TextStyle(
                            color: const Color(0xff374147), fontSize: 16),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      child: Image.asset(
                        "images/solution_arrow_next.png",
                        width: 7,
                        height: 14,
                      ),
                    )
                  ],
                ),
              );
            }),
            separatorBuilder: ((BuildContext context, int index) {
              return Container(
                height: 10,
                color: Colors.transparent,
              );
            }),
            itemCount: recommandSolutions.length),
      ),
    );
  }

  Widget buildContainer() {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: const Color(0xffF2F4F5), width: 1.0)),
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 20,
            child: Icon(
              Icons.star,
              size: 15,
            ),
          ),
          Positioned(
            left: 45,
            child: Text(
              "hello",
              style: TextStyle(color: const Color(0xff374147), fontSize: 16),
            ),
          ),
          Positioned(
            right: 15,
            child: Image.asset(
              "images/solution_arrow_next.png",
              width: 7,
              height: 14,
            ),
          )
        ],
      ),
    );
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
                                  fontSize: 10.0),
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
                                  color: const Color(0xff5A3D2D), width: 1.0),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(right: 2),
                                    child: Icon(
                                      Icons.star,
                                      size: 7,
                                    )),
                                Text(
                                  recommandSolutions[index]['subtitle'],
                                  style: TextStyle(
                                      color: const Color(0xff5A3D2D),
                                      fontSize: 8),
                                )
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
