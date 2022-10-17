import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';

class StudentOption extends StatefulWidget {
  const StudentOption({super.key});

  @override
  State<StudentOption> createState() => _StudentOptionState();
}

class _StudentOptionState extends State<StudentOption> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: AppbarTital(text1: "| Option", text2: " "),
        backgroundColor: Colors.white,

        leading: IconButton(
          icon: const CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/tft_logo.png'),
          ),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: const <Widget>[
          CalenderIcon(),
          ChatIcon(),
          NotificationIcon(),
        ], //<Widget>[]
        elevation: 1.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 7,
            shadowColor: Colors.grey,
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        "Mission",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      """TFT is committed to giving hands-on experience and training students of Pakistan in various fields who are ready to join their professions but are not skilled to apply their theoretical knowledge. They will be trained according to the needs of their respective industry and international standards.""",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "Vission",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      """We envision ourselves as a nationally acknowledged Training Institute grooming the students and fresh graduates to be ready for tomorrow’s challenges.Philosophy Social transformation for a caring community and ecologically balance country.""",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    ListTile(
                        leading: const Icon(
                          Icons.feedback,
                          color: Colors.blue,
                        ),
                        title: const Text("Write a feedback"),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Write Feedback"),
                                  content: const Text(
                                      " “That's a really great start, but perhaps you could.“You're on the right track, but you're not quite there yet.” Positive phrases such as these help students see that learning is a journey, and there will be some speed bumps along the way!"),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Send'),
                                      child: const Text('Send'),
                                    ),
                                  ],
                                );
                              });
                        }),
                    ListTile(
                        leading: const Icon(
                          Icons.attribution_outlined,
                          color: Colors.blue,
                        ),
                        title: const Text("About"),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  title: Text("About"),
                                  content: Text(
                                      " TFT is committed to giving hands-on experience and training students of Pakistan in various fields who are ready to join their professions but are not skilled to apply their theoretical knowledge. They will be trained according to the needs of their respective industry and international standards."),
                                );
                              });
                        }),
                    ListTile(
                        leading: const Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        title: const Text("Contact or Email us"),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: const Text("Contact"),
                                    content: SizedBox(
                                      height: 200,
                                      child: Column(
                                        children: [
                                          ListTile(
                                              leading: const Icon(
                                                Icons.whatsapp,
                                                color: Colors.green,
                                              ),
                                              title: const Text("03424018762"),
                                              onTap: () {}),
                                          ListTile(
                                              leading: const Icon(
                                                Icons.facebook,
                                                color: Colors.blue,
                                              ),
                                              title: const Text(
                                                  "https://www.facebook.com/"),
                                              onTap: () {}),
                                          ListTile(
                                              leading: const Icon(Icons.email,
                                                  color: Colors.grey),
                                              title: const Text(
                                                  "TrainingForTommorow@tft.com"),
                                              onTap: () {}),
                                        ],
                                      ),
                                    ));
                              });
                        }),
                  ],
                ))),
      ),
      drawer: const StudentDrawer(),
    );
  }
}
