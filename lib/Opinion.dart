import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

class Opinion extends StatefulWidget {
  @override
  _OpinionState createState() => _OpinionState();
}

class _OpinionState extends State<Opinion> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Usuario 1',
      'pic': 'https://picsum.photos/300/30',
      'message':
          'Et aliquip labore consectetur aliqua duis Lorem est. Ipsum sint non eu occaecat sint occaecat ex tempor incididunt aliquip Lorem labore sit ipsum. Consequat dolor ex reprehenderit excepteur qui.'
    },
    {
      'name': 'Usuario 2',
      'pic': 'https://picsum.photos/300/30',
      'message':
          'Sint commodo deserunt excepteur tempor cillum enim elit nostrud aliqua voluptate officia occaecat minim culpa.'
    },
    {
      'name': 'Usuario 3',
      'pic': 'https://picsum.photos/300/30',
      'message':
          'Ipsum et occaecat enim commodo nulla ullamco. Cupidatat anim sunt exercitation qui consequat eu in minim.'
    },
    {
      'name': 'Usuario 4',
      'pic': 'https://picsum.photos/300/30',
      'message':
          'Ut nostrud do reprehenderit do enim nulla cupidatat anim deserunt. In Lorem deserunt do pariatur duis. Enim labore mollit enim exercitation. Laboris eiusmod qui cillum fugiat non eu excepteur laborum aliqua minim incididunt adipisicing quis.'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opinion de nuestros clientes "),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        child: CommentBox(
          userImage: "assets/images",
          child: commentChild(filedata),
          labelText: 'Write a comment...',
          withBorder: false,
          errorText: 'Comment cannot be blank',
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'New User',
                  'pic':
                      'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                  'message': commentController.text
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}
