// reel.dart

import 'package:flutter/material.dart';
import 'home.dart';

class Reel extends StatefulWidget {
  @override
  _ReelState createState() => _ReelState();
}

class _ReelState extends State<Reel> {
  IconData _fabIcon = Icons.thumb_up_alt_outlined;
  IconData _volumeIcon = Icons.volume_up;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.video_collection_outlined),
          onPressed: () {
            //handle events
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              //handle events
            },
          )
        ],
      ),
      body: Container(
        color: Colors.transparent,
        child: Center(
          child: Container(
            color: Colors.transparent,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 16),
                    // Remove the floating action buttons here
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          onPressed: () {
                            // Change the FAB icon
                            setState(() {
                              _fabIcon = _fabIcon == Icons.thumb_up_alt_outlined
                                  ? Icons.thumb_up_alt
                                  : Icons.thumb_up_alt_outlined;
                            });
                          },
                          child: Icon(_fabIcon, color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          onPressed: () {
                            // Do something
                          },
                          child: Icon(Icons.share, color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          onPressed: () {
                            // Do something
                          },
                          child: Icon(Icons.message, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        //  4 bottom bars
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.fullscreen),
              onPressed: () {
                // give fullscreen view
              },
            ),
            label: 'Fullscreen',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigate to home
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.create_new_folder),
              onPressed: () {
                // action is to open a folder
              },
            ),
            label: 'Add Folder',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(_volumeIcon),
              onPressed: () {
                // Change the FAB icon
                setState(() {
                  _volumeIcon = _volumeIcon == Icons.volume_up
                      ? Icons.volume_off
                      : Icons.volume_up;
                });
              },
            ),
            label: 'Volume Up',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),


    );
  }
}
