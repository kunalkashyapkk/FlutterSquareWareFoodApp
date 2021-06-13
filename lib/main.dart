import 'package:flutter/material.dart';  
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  

  // This widget is the root of your application.  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Hello World Flutter Application',  
      theme: ThemeData(  
        // This is the theme of your application.  
        primarySwatch: Colors.blue,  
      ),  
      home: MyHomePage(),  
    );  
  }  
}  
class  MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var padding2 = Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 250, 24),
                  child: Text("Category", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xff3E5481),) ),
                );
     var padding3 = Padding(
                  padding: EdgeInsets.fromLTRB(24, 20, 3, 24),
                  child: Text("", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.blue,) ),
                );          
    var body;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          // Respond to item press.
          //setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text('Home', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xff000000)))),
            icon: new Image.asset('assets/images/Home.png'),
          ),
          BottomNavigationBarItem(
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text('Post', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xff9FA5C0)))),
            icon: new Image.asset('assets/images/Edit.png'),
          ),
          BottomNavigationBarItem(
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text('Search', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xff9FA5C0)))),
            icon: new Image.asset('assets/images/Vector.png'),
          ),
          BottomNavigationBarItem(
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text('Notifications', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xff9FA5C0)))),
            icon: new Image.asset('assets/images/Notification.png'),
          ),
          BottomNavigationBarItem(
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text('Profile', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xff9FA5C0)))),
            icon: new Image.asset('assets/images/Profile.png'),
          ),
        ],
      ),
      body: ListView(
        children: [
        Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 3, 24),
          child: Text(""),
        ),
          Container(
                                 margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: CarouselSlider(
                items: [
                  //1st Image of Slider
                     Container(
                       padding: const EdgeInsets.all(2),
                       decoration: BoxDecoration(color: Color(0xffFFF395), shape: BoxShape.circle),
                       child: CircleAvatar(
                         radius: 65,
                         backgroundImage: AssetImage('assets/images/s1.jpeg'),
                       ),
                     ),
                     Container(
                       padding: const EdgeInsets.all(2),
                       decoration: BoxDecoration(color: Color(0xffFFF395), shape: BoxShape.circle),
                       child: CircleAvatar(
                         radius: 65,
                         backgroundImage: AssetImage('assets/images/s2.jpeg'),
                       ),
                     ),
                     Container(
                       padding: const EdgeInsets.all(2),
                       decoration: BoxDecoration(color: Color(0xffFFF395), shape: BoxShape.circle),
                       child: CircleAvatar(
                         radius: 65,
                         backgroundImage: AssetImage('assets/images/s3.jpeg'),
                       ),
                     ),
                     Container(
                       padding: const EdgeInsets.all(2),
                       decoration: BoxDecoration(color: Color(0xffFFF395), shape: BoxShape.circle),
                       child: CircleAvatar(
                         radius: 65,
                         backgroundColor: Color(0xffFFF395),
                         backgroundImage: AssetImage('assets/images/s4.jpeg'),
                       ),
                     ),
                     Container(
                       padding: const EdgeInsets.all(2),
                       decoration: BoxDecoration(color: Color(0xffFFF395), shape: BoxShape.circle),
                       child: CircleAvatar(
                         radius: 65,
                         backgroundColor: Color(0xffFFF395),
                         backgroundImage: AssetImage('assets/images/s5.jpeg'),
                       ),
                     ),
                    
            ],
                
              //Slider Container properties
                options: CarouselOptions(
                  height: 56.0,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.2,
                ),
            ),
          ),
          Expanded( 
            
            child: Column(
              children: [
                padding2,
                CarouselSlider(
                  items: [
                    
                    //1st Image of Slider
                       Container(
                width: 96,
                height: 47,
                decoration: BoxDecoration(
                  color: Color(0xffFFF395),
                borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text("All", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color(0xff000000))
    ),
  ),
                       ),

                       Container(
                width: 96,
                height: 47,
                decoration: BoxDecoration(
                  color: Color(0xffF4F5F7),
                 borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text("Vegan", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff9FA5C0))
    ),
  ),
                       ),
                       Container(
                width: 96,
                height: 47,
                decoration: BoxDecoration(
                  color: Color(0xffF4F5F7),
                 borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text("Keto", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff9FA5C0))
    ),
  ),
                       ),

                       Container(
                width: 96,
                height: 47,
                decoration: BoxDecoration(
                  color: Color(0xffF4F5F7),
                 borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text("Vegan", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff9FA5C0))
    ),
  ),
                       ),


          ],
                  
                //Slider Container properties
                  options: CarouselOptions(
                    height: 56.0,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.32,
                  ),
          ),
              ],
            ),
          ),
          Expanded( 
            
            child: Column(
              children: [
                Container(
                  height: 8,
                  margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(0.0),
    color: Color(0xffF4F5F7),
  ),
),
              ],
            ),
          ),
        Container(
          color: Colors.white,
          child: Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(
      child: Card(
          elevation: 0,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/f.jpeg', height: 31, width: 31,fit:BoxFit.cover)),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                      child: Text(
                        'Calum Lewis',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff2E3E5C)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/f2.jpeg', width: 151, height: 151,fit:BoxFit.cover)
                      ),
                  ),
                  ButtonBar(

                    alignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text("Pancake", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xff3E5481),)),
                        ),
                      ),
                      Row(
                        children: [
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                                                    child: Text("Food", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff9FA5C0)),),
                                                  ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(21, 8, 0, 0),
                            child: Text("> 60 mins", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff9FA5C0)),),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    ),
    Expanded(
      child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              child: Column(
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/c2.jpeg', height: 31, width: 31,fit:BoxFit.fill)),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                      child: Text(
                        'Eilif Sonas',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff2E3E5C)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/c21.jpeg', width: 151, height: 151,fit:BoxFit.cover)
                      ),
                  ),
                  ButtonBar(

                    alignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text("Salad", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xff3E5481),)),
                        ),
                      ),
                      Row(
                        children: [
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                                                    child: Text("Food", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff9FA5C0)),),
                                                  ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(21, 8, 0, 0),
                            child: Text("> 60 mins", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff9FA5C0)),),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    ),
  ],
),
        ),
        Container(
          color: Colors.white,
          child: Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(
      child: Card(
        elevation: 0,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/c3.jpeg', height: 31, width: 31,fit:BoxFit.fill)),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                      child: Text(
                        'Elena Shelby',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff2E3E5C)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/c31.jpeg', width: 151, height: 151,fit:BoxFit.cover,)
                      ),
                      
                  ),
                  ButtonBar(

                    alignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text("Pancake", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xff3E5481),)),
                        ),
                      ),
                      Row(
                        children: [
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                                                    child: Text("Food", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff9FA5C0),),),
                                                  ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(21, 8, 0, 0),
                            child: Text("> 60 mins", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff9FA5C0)),),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    ),
    Expanded(
      child: Card(
        elevation: 0,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/c4.jpeg', height: 31, width: 31,fit:BoxFit.fitHeight)),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 0, 15),
                      child: Text(
                        'John Priyadi',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff2E3E5C)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/c41.jpeg', width: 151, height: 151,fit:BoxFit.cover)
                      ),
                  ),
                  ButtonBar(

                    alignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text("Salad", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xff3E5481),)),
                        ),
                      ),
                      Row(
                        children: [
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                                                    child: Text("Food", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff9FA5C0),)),
                                                  ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(21, 8, 0, 0),
                            child: Text("> 60 mins", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff9FA5C0)),),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
    ),
  ],
),
        ),
        ],
      ),
    );
  }
}