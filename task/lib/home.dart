import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/provider.dart';
import 'api_request.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int pageIndex = 1;

  @override
  void initState() {
    super.initState();
    getUsersList(pageIndex: pageIndex, context: context);
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> users = context.watch<UserCardProvider>().userCards;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff59C2FF),
        title: const Center(child: Text('Waternote')),
      ),
      backgroundColor: const Color(0xff3E3863),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children:  users,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30, top: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff605E9C),
                  ),
                  onPressed: () {
                    setState(() {
                      pageIndex++;
                      getUsersList(pageIndex: pageIndex, context: context);
                    });
                  },
                  child: const Text(
                    'عرض المزيد',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
