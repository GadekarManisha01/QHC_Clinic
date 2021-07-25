import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'HomePage.dart';
import 'constants.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       // title: Text("Login Page"),
        backgroundColor: themeColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/logo.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              // child: Center(
              child: Text(
                'Login ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.normal),
              ),
            ),

            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    //  border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: ' '),
                // hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    //  border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: ' '),
                // hintText: 'Enter secure password'),
              ),
            ),
// login button

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                   height: 40,
                   width: 300,
                 // padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: themeColor, borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Home()));
                      //  context, MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),),
              ),
            ),




            Align( alignment: Alignment.topRight,
           child: FlatButton(

              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password?',textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            ),

            FlatButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Registration()));
              },
              child: Text(
                'New User? Create Account',
                style: TextStyle(color: themeColor, fontSize: 15),
              ),
            ),


          /*  SizedBox(
              height: 130,
            ),*/
         //   Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Registration"),
        backgroundColor: themeColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Image(
                    width: 200,
                    height: 100,
                    //  decoration: BoxDecoration(
                    //   color: Colors.red,
                    //   borderRadius: BorderRadius.circular(50.0)),
                    image: AssetImage('assets/logo.png')),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
            //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                     border: OutlineInputBorder(),
                    labelText: 'First Name',
                    //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                  height: 40,
                  width: 300,
                  // padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: themeColor, borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Registration()));
                      //  context, MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child: Text(
                      'Get Otp',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  //   border: kDefaultFocusInputBorder,
                 border: OutlineInputBorder(),
                  labelText: 'OTP',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New Password',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Re-Enter Password',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'City',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'State',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pincode',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Locality',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:10,bottom: 0),
              //  padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Education',
                  //hintText: 'Enter valid email id as abc@gmail.com'
                ),
              ),
            ),

           /* FlatButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),*/

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                  height: 40,
                  width: 300,
                  // padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: themeColor, borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Registration()));
                      //  context, MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),),
              ),
            ),







            SizedBox(
              height: 10,
            ),
          //  Text('New User? Create Account')






          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}


class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}


class _Home extends State<Home> {
  List<Choice> choices = const <Choice>[
    const Choice(title: 'Book Appointment', icon: Icons.home),
    const Choice(title: 'My next Appointment', icon: Icons.contacts),
    const Choice(title: 'Blog', icon: Icons.map),
    const Choice(title: 'Media Corner', icon: Icons.phone),
    const Choice(title: 'A to Z Disease', icon: Icons.camera_alt),
    const Choice(title: 'Contact US', icon: Icons.settings),
    const Choice(title: 'Health Tips', icon: Icons.photo_album),
    const Choice(title: 'Queue Status', icon: Icons.wifi),
    const Choice(title: 'Rate Us', icon: Icons.wifi),
    const Choice(title: 'Testimonial', icon: Icons.wifi),
    const Choice(title: 'Awards & Social Activities', icon: Icons.wifi),
    const Choice(title: 'Whatsapp', icon: Icons.wifi),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("DR Qaisar's Clinic"),
        backgroundColor: themeColor,
      ),

      drawer: Container(
        width: MediaQuery.of(context).size.width/1.5,
        // width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: themeColor,
        child: ListView(
          //padding: EdgeInsets.zero,
          padding: const EdgeInsets.only(
              left: 0.0, right: 0.0, top: 15, bottom: 0),
          children: [
            DrawerHeader(
              /* padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),*/

              child: Container(
                  width: MediaQuery.of(context).size.width,
                  // width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0.0)),
                  child: Image.asset('assets/logo.png')),



            ),
            ListTile(
              title: Text("Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("About-Us",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Homeopathy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("A - Z Diseases",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Courses",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Online Consultation",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Health Tips",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Book an Appointment",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Media Corner (Gallery)",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Contact Us",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Policy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Terms & Condition",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal)),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),

          ],
        ),
      ),



      body:

   ListView(
        scrollDirection: Axis.vertical,
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
             //   padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                  //  image: NetworkImage("ADD IMAGE URL HERE"),
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(10.0),
             //   margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(10.0),
              //  margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(10.0),
              //  margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  //  image: NetworkImage("ADD IMAGE URL HERE"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 100.0,
          //    height: 180.0,
              enlargeCenterPage: false,
             // enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 500),
              viewportFraction: 0.8,
            ),
          ),

          new Container(
            margin: EdgeInsets.all(5.0),
            color: Colors.white,
            alignment: Alignment.center,
            child: new Row(
         //   child: new Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                new Card(
                    color: kGreenColor,
                    elevation: 2.0,
                    child: Center(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // Expanded(child: Icon(choice.icon, size:30.0, color: themeColor)),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                           // child: Center(
                            child: Text(
                              "Dr. Aftab Alam \nCall Now at \n+91-9876543210",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,

                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        //  ),
                          //   Text(choice.title, style: TextStyle(color: Colors.black, fontSize: 16)),
                          //  Text(choice.title, style: textStyle),
                        ]
                    ),
                    )
                ),

                new Card(
                    color: kGreenColor,
                    elevation: 5.0,
                    child: Center(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // Expanded(child: Icon(choice.icon, size:30.0, color: themeColor)),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            // child: Center(
                            child: Text(
                              "Dr. Saima \nCall Now at \n+91-9876543210 ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                          //   Text(choice.title, style: TextStyle(color: Colors.black, fontSize: 16)),
                          //  Text(choice.title, style: textStyle),
                        ]
                    ),
                    )
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child :  GridView.count(
              shrinkWrap: true,

              scrollDirection: Axis.vertical,
            crossAxisCount: 3,
            children: List.generate(choices.length, (index) {
              return Center(
                child: SelectCard(choice: choices[index]),
              );
            }
            ),
          ),
          )

        ],
      ),



);
  }
}












class SelectCard extends StatelessWidget {
  const SelectCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
        color: kBackgroundColor,
        elevation: 5.0,
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size:30.0, color: themeColor)),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0,right:10.0,bottom: 10.0 ),
                // child: Center(
                child: Text(
                    choice.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                ),
              ),
           //   Text(choice.title, style: TextStyle(color: Colors.black, fontSize: 16)),
            //  Text(choice.title, style: textStyle),
            ]
        ),
        )
    );
  }
}


