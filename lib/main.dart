import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(const MyApp()); /* to create root widget */
}

/*stateless widget will not change the state (mean if any infirmation needs to change then it will not update the ui). */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/* Statefull widget can change the state as needed. */
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

/* this is the first method to be called to call the state class for this particular class */
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      /* this is to show the app bar of the application  */
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      /* this is tthe main body part of the application  */

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /* this is the first widget in the body which is showing the image and basic detail of the person  */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height * .17,
                    width: width * .4,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: height * .16,
                    width: width * .55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kant',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(Icons.work),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Job Profile',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_city),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              /* here description about the person  */
              SizedBox(
                height: height * .3,
                width: width,
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
/* this part is to show the companies which works for  */
              Text(
                'Companies Work for:-',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: height * .17,
                      width: width * .4,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: height * .17,
                      width: width * .4,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: height * .17,
                      width: width * .4,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              /* this one is for listing the soft skills  */
              Text(
                'Soft skills:-',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: height * .17,
                      width: width * .4,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: height * .17,
                      width: width * .4,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: height * .17,
                      width: width * .4,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),

              /* this part is for educational detail */
              Text(
                'Educatuion:-',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),

              /* Contact Detail */

              Text(
                'Contact detail:-',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Kusumeshkant2013@mailinator.com',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '8754886595',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Bootstrap.whatsapp,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '8754886595',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              /* Social Detail */
              Text(
                'Social Networks:-',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(
                        Bootstrap.facebook,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Bootstrap.google),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Bootstrap.github),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Bootstrap.linkedin),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Divider(
                height: 2,
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
