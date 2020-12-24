import 'package:flutter/material.dart';
import 'package:twopageapp/constant.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Widget _categoryThumbnail() {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.005),
      alignment: FractionalOffset.centerLeft,
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.height * 0.045,
        backgroundColor: Colors.blue[100],
        child: CircleAvatar(
          radius: MediaQuery.of(context).size.height * 0.04,
          backgroundImage: AssetImage('assets/images/doctor1.png'),
        ),
      ),
    );
  }

  Widget _categoryThumbnail1() {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
      alignment: FractionalOffset.topCenter,
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.height * 0.045,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: MediaQuery.of(context).size.height * 0.04,
          backgroundImage: AssetImage('assets/images/doctor1.png'),
        ),
      ),
    );
  }

  showPendingDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => new Theme(
            data: Theme.of(context).copyWith(
                dialogBackgroundColor: Colors.white,
                backgroundColor: Colors.white),
            child: Stack(
              children: [
               
                Container(
                        // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),

                  // height: MediaQuery.of(context).size.height * 0.4,
                  child: AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),

                   

                    actions: <Widget>[
                      Column(
                        children: [
                        Container(height: MediaQuery.of(context).size.height*0.05,),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            child:  Container(
                                    width: MediaQuery.of(context).size.width*0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                         Text(
                                          '22',
                                          style: TextStyle(
                                              color: Colors.blue[800],
                                              fontSize: MediaQuery.of(context).size.height * 0.028,
                                              fontWeight: FontWeight.bold),
                                        ),
                                         Text(
                                          'Jan',
                                          style: TextStyle(
                                              color: Colors.blue[800],
                                              fontSize: MediaQuery.of(context).size.height * 0.02,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],),
                                    ),
                                    ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                          Container(
                            decoration: BoxDecoration(
                                gradient: new LinearGradient(
                                    colors: [
                                      const Color(0xFF3366FF),
                                      Colors.deepPurple,
                                    ],
                                    begin: const FractionalOffset(0.0, 0.0),
                                    end: const FractionalOffset(1.0, 0.0),
                                    stops: [0.0, 1.0],
                                    tileMode: TileMode.clamp),
                                borderRadius: BorderRadius.circular(5.0)),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),

                                // side: BorderSide(color: Colors.indigo)
                              ),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      // width: width * 0.45,
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
                                                fontSize: MediaQuery.of(context).size.height  * .018),
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
                                      // width: width * 0.45,
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
                                                  fontSize: MediaQuery.of(context).size.height  * .018)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context, true);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                 _categoryThumbnail1(),
              ],
            )));
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
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: Container(
                  width: width * .9,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400],

                        offset: Offset(0.0, 2.0), //(x,y)

                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showPendingDialog(context);
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                              gradient: skyBlueGradient,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            "Start",
                            style: TextStyle(
                                fontSize: height * 0.03,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Text(
                  'User List',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: height * 0.025, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Padding(
                padding: EdgeInsets.all(width * 0.02),
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                height: size.height * 0.10,
                                // width: width*0.95,
                                margin: EdgeInsets.only(left: size.width * .1),
                                decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(10)),
                                // width: size.width * 0.85,
                                child: Container(
                                  margin:
                                      EdgeInsets.only(left: size.width * .1),
                                  child: Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: size.width * 0.5,
                                              child: Text('User name',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize:
                                                          size.width * 0.04,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black)),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.collections_bookmark,
                                                  color: Colors.blue[800],
                                                ),
                                                Text(
                                                  'Status',
                                                  style: TextStyle(
                                                      color: Colors.blue[800],
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: size.width * 0.2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: height * 0.07,
                                                decoration: BoxDecoration(
                                                    color: Colors.blue[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      height * 0.01),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '22',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .blue[800],
                                                            fontSize:
                                                                height * 0.028,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        'Jan',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .blue[800],
                                                            fontSize:
                                                                height * 0.02,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            _categoryThumbnail()
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
