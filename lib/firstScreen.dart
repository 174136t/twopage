import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:twopageapp/constant.dart';
import 'package:twopageapp/secondScreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isTrue = false;

  Widget buildCategoriesCard(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SecondScreen(
                  )),
        );
      },
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Category $index',
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: MediaQuery.of(context).size.height * 0.02,
                color: Colors.blue),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],

                  offset: Offset(0.0, 5.0), //(x,y)

                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Stack(
              children: [],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  child: Container(
                    child: Container(
                        height: height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Carousel(
                          boxFit: BoxFit.fill,
                          images: [
                            NetworkImage(
                                'https://image.freepik.com/free-vector/e-learning-vector-illustration_95561-13.jpg'),
                            NetworkImage(
                                'https://previews.123rf.com/images/yupiramos/yupiramos1805/yupiramos180516827/101532377-group-students-with-books-and-coffee-cup-learning-vector-illustration.jpg'),
                            NetworkImage(
                                'https://image.freepik.com/free-vector/e-learning-vector-illustration_95561-13.jpg'),
                            NetworkImage(
                                'https://previews.123rf.com/images/liravega258/liravega2581801/liravega258180100026/93625061-education-online-training-courses-distance-education-vector-illustration-internet-studying-online-bo.jpg'),
                          ],
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: Text(
                  'My Status',
                  style: TextStyle(
                      fontSize: height * 0.025, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Center(
                child: Container(
                  // height: height * 0.2,
                  width: isTrue ? width * 0.9 : width * 0.98,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],

                        offset: Offset(0.0, 2.0), //(x,y)

                        blurRadius: 2.0,
                      ),
                    ],
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(color: Colors.black, width: 2.5)
                  ),
                  child: isTrue
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: height * 0.15,
                            ),
                            Container(
                              height: height * 0.05,
                              width: width,
                              decoration: BoxDecoration(
                                  color: Colors.blue[400],
                                  // gradient: skyBlueGradient,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: width * 0.5,
                                      child: Center(
                                          child: Text(
                                        'Doctor name ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: height * .018),
                                      )),
                                    ),
                                    VerticalDivider(
                                      color: Colors.white,
                                    ),
                                    Container(
                                      child: Text('No:1',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: height * .018)),
                                    ),
                                    VerticalDivider(
                                      color: Colors.white,
                                    ),
                                    Container(
                                    
                                      child: Text('05:00',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: height * .018)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: height * 0.05,
                              width: width,
                              decoration: BoxDecoration(
                                  // color: Colors.blue[100],
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              child: Padding(
                                padding:  EdgeInsets.all(height*0.01),
                                child: Container(
                                  // width: width * 0.5,
                                  child: Text(
                                    'Dental Clinic',
                                    style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: height * .022),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: height * 0.1,
                              width: width,
                              decoration: BoxDecoration(
                                  // color: Colors.blue[700],
                                  // gradient: skyBlueGradient,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                    child: Image.asset(
                                      "assets/images/doctor1.png",
                                      // width: MediaQuery.of(context).size.width * 0.15,
                                      // width: double.infinity,
                                      // it cover the 25% of total height
                                      height: height * 0.09,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                 SizedBox(width: width*0.02,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Doctor Name',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: height * 0.025,
                                            fontWeight: FontWeight.bold),
                                      ),
                                       Text(
                                        'Dentist',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: height * 0.02,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                    ],
                                  ),
                                  
                                  Container(
                                    height: height*0.07,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.all(height*0.01),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                         Text(
                                          '22',
                                          style: TextStyle(
                                              color: Colors.blue[800],
                                              fontSize: height * 0.028,
                                              fontWeight: FontWeight.bold),
                                        ),
                                         Text(
                                          'Jan',
                                          style: TextStyle(
                                              color: Colors.blue[800],
                                              fontSize: height * 0.02,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],),
                                    ),
                                    )
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.05,
                              width: width,
                              decoration: BoxDecoration(
                                  color: Colors.blue[400],
                                  // gradient: skyBlueGradient,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: width * 0.45,
                                      child: Center(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.account_circle,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            ' No:01 ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: height * .018),
                                          ),
                                        ],
                                      )),
                                    ),
                                    VerticalDivider(
                                      color: Colors.white,
                                    ),
                                    // Container(
                                    //   child: Text('No:1',
                                    //       style: TextStyle(
                                    //          fontWeight: FontWeight.bold,
                                    //            color: Colors.white,
                                    //           fontSize: height * .018)),
                                    // ),
                                    // VerticalDivider(
                                    //   color: Colors.white,
                                    // ),
                                    Container(
                                      width: width * 0.45,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.av_timer,
                                            color: Colors.white,
                                          ),
                                          Text('05:00-06:00',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: height * .018)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: Text(
                  'Categories',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: height * 0.025, fontWeight: FontWeight.w900),
                ),
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 9,
                  //data.length,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 15,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height * 0.5),
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return buildCategoriesCard(index);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
