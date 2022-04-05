import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_twitter/themes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: kWhiteColor,
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kBlueColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kBlueColor),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: kWhiteColor,
      appBar: appBar(context),
      drawer: drawer(),
      body: body(),
      floatingActionButton: fab(),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      centerTitle: true,
      elevation: 0.5,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        tooltip: 'Show navigation drawer',
        icon: Padding(
          padding: const EdgeInsets.all(3),
          child: Image.asset('assets/icons/icon_profile.png'),
        ),
      ),
      title: IconButton(
        onPressed: () {},
        icon: Padding(
          padding: const EdgeInsets.all(3),
          child: Image.asset('assets/icons/icon_logo.png'),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          tooltip: 'Switch timeline',
          icon: Padding(
            padding: const EdgeInsets.all(3),
            child: Image.asset('assets/icons/icon_switch_timeline.png'),
          ),
        ),
      ],
    );
  }

  Drawer drawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 26,
                  child: Image.asset('assets/icons/icon_profile.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text('Andri Fanky', style: TextStyle(fontSize: 20, fontWeight: bold)),
                    ),
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text('@andri_fanky', style: TextStyle(fontSize: 15, color: kDarkGreyColor)),
                const Spacer(),
                Row(
                  children: [
                    Text('120', style: TextStyle(fontSize: 17, fontWeight: bold)),
                    const Text(' Following', style: TextStyle(fontSize: 16, color: kDarkGreyColor)),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('526', style: TextStyle(fontSize: 17, fontWeight: bold)),
                    const Text(' Followers', style: TextStyle(fontSize: 16, color: kDarkGreyColor)),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(CupertinoIcons.person),
            title: Text('Profile', style: TextStyle(fontSize: 17, fontWeight: medium)),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(CupertinoIcons.square_list),
            title: Text('Lists', style: TextStyle(fontSize: 17, fontWeight: medium)),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(CupertinoIcons.chat_bubble_text),
            title: Text('Topics', style: TextStyle(fontSize: 17, fontWeight: medium)),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(CupertinoIcons.bookmark),
            title: Text('Bookmarks', style: TextStyle(fontSize: 17, fontWeight: medium)),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.flash_on_outlined),
            title: Text('Moments', style: TextStyle(fontSize: 17, fontWeight: medium)),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.money_rounded),
            title: Text('Monetization', style: TextStyle(fontSize: 17, fontWeight: medium)),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            leading: const Icon(CupertinoIcons.rocket),
            title: Text('Twitter for Professionals', style: TextStyle(fontSize: 17, fontWeight: medium)),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: Text('Settings and privacy', style: TextStyle(fontSize: 17, fontWeight: medium)),
          ),
          ListTile(
            onTap: () {},
            title: Text('Help Center', style: TextStyle(fontSize: 17, fontWeight: medium)),
          ),
        ],
      ),
    );
  }

  Widget body() {
    return ListView(
      padding: const EdgeInsets.only(bottom: 80),
      children: const [
        PostItem(name: 'Andri Fanky', username: '@andri_fanky', postDate: '22m', description: 'WhatsApp App UI using Flutter @FlutterDev \n #flutter #flutterdev #coding', imageUrl: 'assets/images/image_post1.png', commentNumber: '790', retweetNumber: '1,306', likeNumber: '17.5K'),
        PostItem(name: 'Andri Fanky', username: '@andri_fanky', postDate: '2h', description: 'Instagram App UI using Flutter @FlutterDev \n #flutter #flutterdev #coding', imageUrl: 'assets/images/image_post2.png', commentNumber: '206', retweetNumber: '1,181', likeNumber: '20.7K'),
        PostItem(name: 'Andri Fanky', username: '@andri_fanky', postDate: '16h', description: 'You good?', imageUrl: '', commentNumber: '126', retweetNumber: '510', likeNumber: '351K'),
      ],
    );
  }

  FloatingActionButton fab() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add_rounded, size: 30),
    );
  }
  
  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: kWhiteColor,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          tooltip: '',
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_home.png')
          ),
        ),
        BottomNavigationBarItem(
          label: 'search',
          tooltip: '',
          icon: SizedBox(
            width: 26,
            height: 26,
            child: Image.asset('assets/icons/icon_search.png')
          ),
        ),
        BottomNavigationBarItem(
          label: 'mic',
          tooltip: '',
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_mic.png')
          ),
        ),
        BottomNavigationBarItem(
          label: 'notification',
          tooltip: '',
          icon: SizedBox(
            width: 23,
            height: 23,
            child: Image.asset('assets/icons/icon_notification.png')
          ),
        ),
        BottomNavigationBarItem(
          label: 'message',
          tooltip: '',
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/icons/icon_message.png')
          ),
        ),
      ],
    );
  }
}

class PostItem extends StatelessWidget {
  final String name;
  final String username;
  final String postDate;
  final String description;
  final String imageUrl;
  final String commentNumber;
  final String retweetNumber;
  final String likeNumber;

  const PostItem({
    Key? key,
    required this.name,
    required this.username,
    required this.postDate,
    required this.description,
    required this.imageUrl,
    required this.commentNumber,
    required this.retweetNumber,
    required this.likeNumber
  }) : super(key: key);

  bool checkMatches(String text) {
    bool match = false;
    match = RegExp(r"\B#\w\w+").hasMatch(text);
    if (!match) {
      match = RegExp(r"\B@\w\w+").hasMatch(text);
    }
    return match;
  }

  final blackStyle = const TextStyle(color: kBlackColor);

  final blueStyle = const TextStyle(color: kBlueColor);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultMargin),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 26,
                child: Image.asset('assets/icons/icon_profile.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(name, style: TextStyle(fontWeight: bold)),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(username, style: TextStyle(color: kDarkGreyColor, fontWeight: semiBold), overflow: TextOverflow.ellipsis),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text('•', style: TextStyle(color: kDarkGreyColor), overflow: TextOverflow.ellipsis),
                        ),
                        Text(postDate, style: TextStyle(color: kDarkGreyColor, fontWeight: semiBold), overflow: TextOverflow.ellipsis),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          iconSize: 18,
                          icon: const Icon(Icons.more_vert_rounded),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(height: 1.3),
                        children: description
                        .split(" ")
                        .map((e) => TextSpan(text: e + " ",
                        style: checkMatches(e) ? blueStyle : blackStyle)).toList()
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        imageUrl.isNotEmpty ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(imageUrl)
                        ) : 
                        Container(),
                        Row(
                          children: [
                            TextButtomCustom(icon: CupertinoIcons.chat_bubble, text: commentNumber),
                            TextButtomCustom(icon: Icons.repeat_rounded, text: retweetNumber),
                            TextButtomCustom(icon: CupertinoIcons.heart, text: likeNumber),
                            const TextButtomCustom(icon: Icons.share_outlined, text: ''),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 0.6,
          color: kLightGreyColor,
        ),
      ],
    );
  }
}

class TextButtomCustom extends StatelessWidget {
  final IconData icon;
  final String text;

  const TextButtomCustom({
    Key? key,
    required this.icon,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: text.isNotEmpty ? 2 : 1,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
        ),
        child: Row(
          children: [
            Icon(icon, size: 20, color: kDarkGreyColor),
            const SizedBox(
              width: 6,
            ),
            text.isNotEmpty ? Text(text,
              style: const TextStyle(fontSize: 14, color: kDarkGreyColor))
              : Container(),
          ],
        )
      ),
    );
  }
}
