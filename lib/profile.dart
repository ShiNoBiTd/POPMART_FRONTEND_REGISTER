import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/profile.jpg'),
                          fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text('ShinoBi_Td',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              elevation: 8,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    
                    SizedBox(
                      height: 100,
                      width: 1000,
                      
                      child: Row(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(width: 10,),
                          Text('Setting',
                          style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      )
                        ]
                      ),
                    ),
                     SizedBox(
                      height: 100,
                      width: 1000,
                      
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 10,),
                          Text('Contact Us',
                          style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      )
                        ]
                      ),
                    ),
                     SizedBox(
                      height: 100,
                      width: 1000,
                      
                      child: Row(
                        children: [
                          Icon(Icons.info),
                          SizedBox(width: 10,),
                          Text('Information',
                          style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                      )
                        ]
                      ),
                    )
                    
                    
                    
                  ],

                ),
                ),
              
            )
          ],
        ),
      ),
    );
  }
}


