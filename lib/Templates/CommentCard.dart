import "package:flutter/material.dart";
class CommentCard extends StatefulWidget {
  String nickname;
  String username;
  String comment;
  String image;
  CommentCard(this.image,this.nickname,this.username,this.comment);
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:  Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              child: Row(
                children: [
                  Image.asset(widget.image,height: 50,width: 50,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(widget.nickname,style: TextStyle(fontSize: 22.0),),
                          Text(widget.username,style: TextStyle(fontSize: 16.0),),
                        ],
                      ),
                      Text(widget.comment,style: TextStyle(fontSize: 18.0),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ] 
      ),
    );
  }
}