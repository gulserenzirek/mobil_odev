import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 8.0, left: 8.0, bottom: 8.0, right: 20),
                        child: Icon(
                          Icons.send,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            StoryWidget("assets/images/p1.jpg", "gülseren_zirek"),
                            StoryWidget("assets/images/p2.jpg", "alperen_duymaz"),
                            StoryWidget("assets/images/p3.jpg", "çağatay_ulusoy"),
                            StoryWidget("assets/images/p4.jpg", "serenay_sarıkaya"),
                            StoryWidget("assets/images/p5.jpg", "eda_şölenci"),
                            StoryWidget("assets/images/p6.jpg", "birce_akalay"),
                            StoryWidget("assets/images/p7.jpg", "burak_deniz"),
                            StoryWidget("assets/images/p8.jpg", "denizcan_aktaş"),
                          ],
                        ),
                      ),
                      PostItem("assets/images/p1.jpg","assets/images/post1.jpg", "gülseren_zirek", "Köprü"),
                      PostItem("assets/images/p2.jpg","assets/images/post2.jpg", "alperen_duymaz", "Ortaköy"),
                      PostItem("assets/images/p3.jpg","assets/images/post3.jpg", "çağatay_ulusoy", "Galata Kulesi"),
                      PostItem("assets/images/p4.jpg","assets/images/post4.jpg", "serenay_sarıkaya", "Dolmabahçe Sarayı"),
                      PostItem("assets/images/p5.jpg","assets/images/post5.jpg", "eda_şölenci", "Kadıköy"),
                      PostItem("assets/images/p6.jpg","assets/images/post6.jpg", "birce_akalay", "Anıtkabir"),
                      PostItem("assets/images/p7.jpg","assets/images/post7.jpg", "burak_deniz", "Kız Kulesi"),
                      PostItem("assets/images/p8.jpg","assets/images/post8.jpg", "denizcan_aktaş", "Galataport"),                      
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.home, size: 28, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:
                          Icon(Icons.search, size: 28, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.smart_display,
                          size: 28, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:
                          Icon(Icons.favorite, size: 28, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:
                          Icon(Icons.person, size: 28, color: Colors.black87),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Container PostItem(String avatar, String photo, String name, String location) => Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            avatar,
                          ),
                          radius: 20,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              Image.asset(photo),
              LikeCommentBox(),
              CommentBox("gülseren_zirek", "Çok güzel olmuş."),
              CommentBox("alperen_duymaz", "Güzel olmuş. "),
              CommentBox("eda_sölenci", "Çok güzel bir resim."),
              CommentBox("burak_deniz", "Güzel resim."),
            ],
          ),
        ),
      );

  Padding LikeCommentBox() {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black87,
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.comment_bank_outlined,
                      color: Colors.black87,
                    ),
                  ],
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  color: Colors.black87,
                ),
              ],
            ),
          );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RichText(
                    maxLines: 3,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(text: " "),
                        TextSpan(
                          text: comment,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  Widget StoryWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 35,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
