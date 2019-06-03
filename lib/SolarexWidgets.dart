import 'package:flutter/material.dart';

class SolarexWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return horizontalRecommandSolutions();
  }

  List<dynamic> recommandSolutions = new List(8);

  Widget horizontalRecommandSolutions() {
    initRecommandSolutions();
//    return ListView.separated(
//      shrinkWrap: true,
//      scrollDirection: Axis.horizontal,
//      itemCount: recommandSolutions.length,
//      separatorBuilder: (context, index) {
//        return new Container(
//          width: 15.0,
//        );
//      },
//      itemBuilder: (context, index) {
//        return new Container(
//          child: new Column(
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
//              new Container(
//                width: 132,
//                alignment: Alignment.center,
//                child: new AspectRatio(
//                  aspectRatio: 132 / 116,
//                  child: new Image.network(
//                    recommandSolutions[index]['url'],
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ),
//              new Container(
//                margin: EdgeInsets.only(top: 17.0),
//                alignment: Alignment.center,
//                child: new Text(
//                  recommandSolutions[index]['title'],
//                  style: new TextStyle(
//                    fontSize: 14.0,
//                    color: const Color(0xff374147),
//                    decoration: TextDecoration.none,
//                  ),
//                ),
//              ),
//              new Container(
//                margin: EdgeInsets.only(top: 7.0, bottom: 12.0),
//                alignment: Alignment.center,
//                child: new Text(
//                  recommandSolutions[index]['subtitle'],
//                  style: new TextStyle(
//                    color: const Color(0xffAAB2B7),
//                    fontSize: 10.0,
//                    decoration: TextDecoration.none,
//                  ),
//                ),
//              )
//            ],
//          ),
//        );
//      },
//    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            '推荐方案',
            style: new TextStyle(
              color: const Color(0xff263238),
              fontSize: 20.0,
              decoration: TextDecoration.none,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            height: 100.0,
            constraints: BoxConstraints(
                maxHeight: 190
            ),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: recommandSolutions.length,
              separatorBuilder: (context, index) {
                return new Container(
                  width: 15.0,
                );
              },
              itemBuilder: (context, index) {
                return new Container();
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
      recommandSolutions[i]['subtitle'] = "subtitle $i";
    }
  }
}
