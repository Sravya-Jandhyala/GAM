import 'package:flutter/material.dart';
import 'package:gam/screens/issue_details/issue_details.dart';
import 'package:gam/screens/post_issue/post_issue_screen.dart';
import 'package:gam/widgets/navigationbar.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 9, 82),
      drawer: navigationbar(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 9, 82),
        title: Text('Government Asset Management'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          //TODO: navigate to post issue
                          Navigator.pushNamed(context,PostIssueScreen.route);
                        },
                        // defining the shape
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          "Post an Issue",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          // TODO: navigate to issueDetails
                          Navigator.pushNamed(context,IssueDetailsScreen.route);
                        },
                        // defining the shape
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          "View Issues Details",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
