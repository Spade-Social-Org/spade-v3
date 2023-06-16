import 'package:flutter/material.dart';
import 'package:spade/screen/sub_screen/chat_screen.dart';


import '../models/chat_model.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  bool showTopBar = false;
  bool isTopBarVisible = false;
  TextEditingController textEditingController = TextEditingController();
  List<Chat> filteredChats = [];

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }



@override
  void initState() {
    super.initState();
    filteredChats.clear(); // Clear the list initially
  }


 void filterChats(String query) {
  setState(() {
    if (query.isNotEmpty) {
      filteredChats = dummyChatData
          .where((chat) =>
              chat.username.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      filteredChats.clear();
    }
  });

  if (query.isEmpty) {
    filteredChats = [];
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Messages',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          Image.asset("assets/images/Camera.png"),
          Image.asset("assets/images/Group 1723 (1).png"),
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.more_vert, color: Colors.grey),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "Top 5 picks",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: friend.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            'https://picsum.photos/id/$index/200/200',
                          ),
                        ),
                        border: Border.all(
                          color: friend[index].color,
                          width: 2,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 50,
                        width: 370,
                        color: const Color.fromRGBO(247, 244, 244, 1),
                        child: TextField(
                          controller: textEditingController,
                          onTap: () {
                            setState(() {
                              showTopBar = !showTopBar;
                              isTopBarVisible = showTopBar;
                            });
                          },
                          onChanged: filterChats,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/Group 1755.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/Path 287.png"),
                  ],
                ),
              ),
              if (isTopBarVisible)
                DefaultTabController(
                    length: dummyChatData.length,
                    child: Column(
                      children: [
                        const TabBar(
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                              text: 'Single & Searching',
                            ),
                            Tab(
                              text: 'Red Light',
                            ),
                            Tab(
                              text: 'Long Term',
                            ),
                            Tab(
                              text: 'Friends',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 500,
                          child: TabBarView(children: [
                            SizedBox(
                              child: ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemCount: filteredChats.length,
                                itemBuilder: (context, index) {
                                  final chat = filteredChats[index];
                                  return GestureDetector(
                                    child: Card(
                                      elevation: 2,
                                      child: ChatItem(chat: chat)),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              child: ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemCount: filteredChats.length,
                                itemBuilder: (context, index) {
                                  final chat = filteredChats[index];
                                  return GestureDetector(
                                    child: Card(
                                      elevation: 2,
                                      child: ChatItem(chat: chat)),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              child: ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                  itemCount: filteredChats.length,
                                itemBuilder: (context, index) {
                                  final chat = filteredChats[index];
                                  return GestureDetector(
                                    child: Card(
                                      elevation: 2,
                                      child: ChatItem(chat: chat)),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              child: ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemCount: filteredChats.length,
                                itemBuilder: (context, index) {
                                  final chat = filteredChats[index];
                                  return GestureDetector(
                                    child: Card(
                                      elevation: 2,
                                      child: ChatItem(chat: chat)),
                                  );
                                },
                              ),
                            ),
                          ]),
                        )
                      ],
                    ))
              else
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: dummyChatData.length,
                  itemBuilder: (context, index) {
                    final chat = dummyChatData[index];
                    return Card(elevation: 4, child: ChatItem(chat: chat));
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final Chat chat;

  const ChatItem({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
              backgroundImage: NetworkImage(chat.profileImageUrl),
            ),
            Positioned(
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 30,
                  width: 30,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      chat.messageNotice,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        title: Text(
          chat.username,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(chat.lastMessage),
        trailing: Text(chat.timestamp),
        onTap: () {
          // Handle chat item tapped
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChatScreen(chat: chat)));
        },
      ),
    );
  }
}
class Friend {
  final String images;
  final Color color;

  const Friend(this.images, this.color);
}

List<Friend> friend = [
  const Friend("assets/images/Ellipse 368.png", Colors.green),
  const Friend("assets/images/Ellipse 372.png", Colors.green),
  const Friend("assets/images/Ellipse 366.png", Colors.red),
  const Friend("assets/images/Ellipse 368.png", Colors.yellow),
  const Friend("assets/images/Ellipse 368.png", Colors.green),
];