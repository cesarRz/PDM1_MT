import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  String titulo = "Restaurante Chonito";
  String par1 =
      "Deserunt anim sit ullamco aute irure enim aliquip ut voluptate ullamco ullamco consequat sit labore. Exercitation occaecat dolore laborum fugiat eiusmod laborum nisi elit magna ea dolore. Est laboris in nostrud occaecat ullamco laborum reprehenderit in officia mollit velit culpa excepteur. Cillum ea laborum irure aliqua sit mollit id sit dolor dolore sint proident nisi aliquip. Dolore exercitation aliquip et deserunt consectetur eiusmod magna do aute. Aliqua occaecat deserunt velit minim quis dolore fugiat sint.\n\nReprehenderit commodo laboris ullamco incididunt elit dolor minim incididunt culpa consectetur eu amet. Pariatur minim pariatur Lorem consectetur duis Lorem minim ut minim anim. Cillum Lorem ad qui occaecat est ut aliqua. Magna id aliqua enim est laborum ex labore elit.\n\nFugiat officia deserunt irure officia quis ex ipsum ea excepteur voluptate consequat. Aliqua nulla occaecat pariatur in non minim quis non non eu excepteur enim sit. Irure do veniam minim dolor exercitation velit dolor consectetur. Ad nostrud sit elit nostrud consequat dolore. Sit et pariatur culpa fugiat. Proident anim ad est ullamco nisi qui. Consequat velit enim quis aute occaecat occaecat aliquip proident aute commodo nisi incididunt.";
  String par2 =
      "Sint tempor do cillum magna quis proident non consequat ea anim ut. Laborum exercitation non ea cillum minim occaecat excepteur. Officia Lorem velit eu eiusmod ullamco amet occaecat officia adipisicing occaecat quis voluptate eiusmod. Irure sint eu cupidatat officia eu nostrud consequat magna do nisi anim velit labore minim. Eiusmod commodo magna pariatur do anim duis incididunt.\n\nDuis amet incididunt ullamco excepteur in occaecat. Aliqua officia adipisicing consectetur aute occaecat id pariatur eu id mollit. Enim qui est in mollit pariatur qui laborum eiusmod excepteur voluptate deserunt aliqua aliqua irure. Adipisicing sunt est aliquip veniam ullamco. Eu sunt id deserunt voluptate consequat aute. Elit sint exercitation eiusmod enim qui amet. Sit ut aliquip in laborum sint occaecat qui in ea nisi commodo magna enim.\n\nVelit sunt qui qui non ullamco sit amet pariatur laboris Lorem reprehenderit voluptate esse. Officia proident eu reprehenderit eiusmod. Quis incididunt consequat ea velit enim. Id cupidatat dolor aliquip aliqua cillum aliquip excepteur nisi. Sint magna aliquip Lorem laboris culpa eu. Id sunt sint ut duis in exercitation nostrud reprehenderit eiusmod eu elit in. Magna qui commodo nisi adipisicing eiusmod sit velit reprehenderit Lorem.";

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: const Text('Nosotros'),
            backgroundColor: Color.fromARGB(255, 0, 0, 0)),
        body: ListView(children: [
          Image(image: AssetImage('assets/images/restaurante1.jpg')),
          Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    titulo,
                    style: TextStyle(fontSize: 35),
                    textAlign: TextAlign.center,
                  ),
                  Text(par1)
                ],
              )),
          Image(image: AssetImage('assets/images/salmon.jpg')),
          Container(padding: EdgeInsets.all(20), child: Text(par2)),
        ]),
      );
}
