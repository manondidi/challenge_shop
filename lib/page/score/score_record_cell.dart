import 'package:challenge_shop/data/model/score_history_info.dart';
import 'package:flutter/material.dart';

class ScoreRecordCell extends StatelessWidget {
  ScoreHistoryInfo scoreHistoryInfo;

  ScoreRecordCell(this.scoreHistoryInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Stack(
        children: <Widget>[
          Positioned(
            height: 15,
            child: Text(
              "${scoreHistoryInfo.title}",
              style: TextStyle(fontSize: 15, color: Color(0xff1c1c1c)),
            ),
            left: 16,
            top: 16,
          ),
          Positioned(
            height: 15,
            child: Text(
              "${scoreHistoryInfo.direct}${scoreHistoryInfo.point}",
              style: TextStyle(fontSize: 15, color: Color(0xff1c1c1c)),
            ),
            right: 15,
            top: 16,
          ),
          Positioned(
            height: 15,
            width: 190,
            child: Text(
              "#${scoreHistoryInfo.challengeTitle}",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontSize: 12, color: Color(0xffaaaaaa)),
            ),
            left: 16,
            bottom: 20,
          ),
          Positioned(
            height: 12,
            child: Text(
              "10/05 07:48",
              style: TextStyle(fontSize: 12, color: Color(0xffaaaaaa)),
            ),
            bottom: 20,
            right: 15,
          ),
          Positioned(
            bottom: 0,
            left: 15,
            right: 15,
            child: Container(
              height: 1,
              color: Color(0xfff5f5f5),
            ),
          )
        ],
      ),
    );
  }
}