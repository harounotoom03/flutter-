import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterProject());
}

class FlutterProject extends StatelessWidget {
  const FlutterProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Spacer(),
              const Text(
                "HI, ANNA!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.56),
              ),
              const Spacer(),
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.5),
              child: Column(
                children: [
                  const Text(
                    "GET READY FOR YOUR HOLIDAYS!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.55),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Search',
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      onChanged: (value) {
                        print("Searching for: $value");
                      },
                    ),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildLargeButton('', 'images/photo1.png', () {
                        print('Button FLIGHTS pressed');
                      }),
                      SizedBox(width: 30,),
                      _buildLargeButton('', 'images/photo2.png', () {
                        print('Button BUS pressed');
                      }),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildLargeButton('', 'images/photo3.png', () {
                        print('Button TRAIN pressed');
                      }),
                      SizedBox(width: 30,),
                      _buildLargeButton('', 'images/photo4.png', () {
                        print('Button HOTELS pressed');
                      }),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildLargeButton('', 'images/photo5.png', () {
                        print('Button MY TRIPS pressed');
                      }),
                      SizedBox(width: 30,),
                      _buildLargeButton('', 'images/photo6.png', () {
                        print('Button SITTING pressed');
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLargeButton(String label, String imagePath, VoidCallback onPressed) {
    return Container(
      width: 130,
      height: 130,
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text(label, style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
