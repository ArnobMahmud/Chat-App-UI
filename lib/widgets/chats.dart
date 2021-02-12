import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final chat = chats[index];
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chat.sender.name,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text(
                              chat.text,
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(chat.time),
                      Text('NEW'),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
