import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:safesphere/database.dart';
import 'package:safesphere/description_screen.dart';
import 'package:safesphere/login_screen.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

import 'main.dart';

final user = FirebaseAuth.instance.currentUser;

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController cont1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.lightBlue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 100,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 60,
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                foregroundImage: NetworkImage(user?.photoURL ??
                                    'https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png'),
                              ),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 5,
                                  child: Text(
                                    user?.displayName ?? 'abchgjhjg',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 80,
                          ),
                          Flexible(
                              child: TextField(
                            controller: cont1,
                            onChanged: (e) {
                              setState(() {});
                            },
                            textInputAction: TextInputAction.go,
                            decoration: InputDecoration(
                                hintText: 'Search here!',
                                filled: true,
                                fillColor: Colors.white54,
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.cancel),
                                  onPressed: () {
                                    cont1.clear();
                                    setState(() {});
                                  },
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20))),
                          )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                              child: PopupMenuButton<ListTile>(
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                      child: ListTile(
                                    leading: const Icon(Icons.call),
                                    title: const Text('Contact Us'),
                                    onTap: () {
                                      final con =
                                          Uri.parse('tel://+91 9113206797');
                                      UrlLauncher.launchUrl(con);
                                    },
                                  )),
                                  PopupMenuItem(
                                      child: ListTile(
                                    leading: const Icon(Icons.logout),
                                    title: const Text('Log Out'),
                                    onTap: () async {
                                      await GoogleSignIn().disconnect();
                                      await FirebaseAuth.instance.signOut();
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen()),
                                          (route) => false);
                                    },
                                  ))
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                )),
            Flexible(
              flex: 7,
              child: Container(
                child: (cont1.text.isEmpty)
                    ? Container(
                        child: his.isEmpty
                            ? const Center(
                                child: Text("Search History available here"))
                            : ListView.builder(
                                itemCount: his.length,
                                itemBuilder: (context, index) => ListTile(
                                      shape: const RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: Colors.black, width: 2)),
                                      title: Text(his[his.length - index - 1]),
                                      leading: const Icon(Icons.access_time),
                                      onTap: () {
                                        String a = his[his.length - index - 1];
                                        his.remove(his[his.length - index - 1]);
                                        his.add(a);
                                        pref!.setStringList('his', his);

                                        setState(() {});
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Describe(title: a)));
                                      },
                                    )),
                      )
                    : ListView.builder(
                        itemCount: casual.length,
                        itemBuilder: (context, index) => (casual[index]
                                .toLowerCase()
                                .contains(cont1.text.toLowerCase()))
                            ? ListTile(
                                dense: true,
                                title: Text(
                                  casual[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Colors.black, width: 2),
                                    borderRadius: BorderRadius.circular(3)),
                                onTap: () {
                                  if (his.contains(casual[index])) {
                                    his.remove(casual[index]);
                                  }
                                  his.add(casual[index]);
                                  pref!.setStringList('his', his);

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Describe(title: casual[index])));
                                  setState(() {});
                                },
                              )
                            : const SizedBox(
                                width: 0,
                              )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
