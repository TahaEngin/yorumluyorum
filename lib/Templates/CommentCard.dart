import "package:flutter/material.dart";

class CommentCard extends StatefulWidget {
  String nickname;
  String username;
  String comment;
  String image;
  CommentCard(this.image, this.nickname, this.username, this.comment);
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        color: Colors.pink,
        height: h / 10,
        width: w,
        child: Row(
          children: [
            Container(
                height: h / 10,
                width: w / 4,
                child:
                    Image.network(widget.image, height: w / 8, width: w / 8)),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      widget.nickname,
                      style: TextStyle(fontSize: w / 16),
                    ),
                    Text(
                      widget.username,
                      style: TextStyle(fontSize: w / 17),
                    ),
                  ],
                ),
                Text(
                  widget.comment,
                  style: TextStyle(fontSize: w / 16.5),
                ),
                Row(
                  children: [
                    Icon(Icons.comment, size: w / 32),
                    Icon(Icons.favorite, size: w / 32),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
