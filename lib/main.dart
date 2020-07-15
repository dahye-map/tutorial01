import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
Widget titleSection = Container(
  padding: const EdgeInsets.all(50),
  child: Row(
    children: [
      Expanded(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              padding:const EdgeInsets.only(bottom:10),
              child:Text(
                '다혜 플러터 어플 공부듕1',
                style:TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
                '다혜 플러터 어플 공부듕2',
                style:TextStyle(
                  color:Colors.grey[500],
                ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color:Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);
Column _buildButtonColumn(Color color, IconData icon, String label){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin:const EdgeInsets.only(top:8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color:color,
          ),
        ),
      ),
    ],
  );
}
Color color = Colors.indigo;
Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  ),
);
Widget textSection = Container(
  padding:const EdgeInsets.all(32),
  child: Text(
    '브랜드엑스코퍼레이션 미디어커머스그룹 bx디자인팀Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        '이다혜 프로'
        '플러터 공부'
        '리얼루 신기',
    softWrap: true,
  )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tutorial01',
      home:Scaffold(
        appBar: AppBar(
          title: Text('tutorial01'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/bori.jpg',
              width:600,
              height:350,
              fit:BoxFit.fill,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),

      ),
    );
  }
}

