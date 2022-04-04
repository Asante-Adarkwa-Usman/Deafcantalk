import 'package:deafcantalk/custom_widgets/youtube_player.dart';
import 'package:deafcantalk/views/main/home_view.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 153, 156, 1),
      appBar: AppBar(
        title: const Text('News'),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.40,
              child: const YoutubePlayerView(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            // Container(
            //   alignment: Alignment.centerLeft,
            //   margin: const EdgeInsets.only(left: 20),
            //   child: const Text(
            //     'Title',
            //     style: TextStyle(
            //       fontSize: 20,
            //       color: Colors.white,
            //       fontWeight: FontWeight.w400,
            //     ),
            //   ),
            // ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: const YoutubePlayerView(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
