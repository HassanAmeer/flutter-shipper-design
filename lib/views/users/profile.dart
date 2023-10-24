import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/colors/materialcolors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController usernametextcont = TextEditingController();
  TextEditingController useremailtextcont = TextEditingController();
  TextEditingController userpasstextcont = TextEditingController();
  String imagpath = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // systemOverlayStyle: const SystemUiOverlayStyle(
        //   statusBarColor: Colors.white,
        //   statusBarIconBrightness: Brightness.dark,
        // ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text('Edit Profile',
            style: TextStyle(color: Colors.black, fontFamily: 'sbold')),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06 / 1,
        child: GestureDetector(
          onTap: () async {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: MaterialColors.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text('save',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'cbold')),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.02 / 1),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              SizedBox(
                height: 110,
                width: 130,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        // Choose an image from gallery
                        var image = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          setState(() {
                            imagpath = image.path;
                          });
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: SizedBox(
                            height: 120,
                            width: 110,
                            child: imagpath != ''
                                ? Image.file(
                                    File(imagpath),
                                    fit: BoxFit.fitWidth,
                                    width: double.infinity,
                                  )
                                : const CircleAvatar(
                                    child: Icon(Icons.person_4_outlined),
                                  )
                            // : Image.asset(
                            //     'assets/images/profile.png',
                            //     fit: BoxFit.fitWidth,
                            //     width: double.infinity,
                            //   ),
                            ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.mode_edit_outline_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08 / 1),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.072 / 1,
                child: TextField(
                  controller: usernametextcont,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_3_outlined),
                    hintText: 'Name',
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 0.05, color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(30)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(width: 0.05),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.05,
                            color:
                                MaterialColors.primaryColor.withOpacity(0.8)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.072 / 1,
                child: TextField(
                  controller: useremailtextcont,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_outlined),
                    hintText: 'Email',
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 0.05, color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(30)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(width: 0.05),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.05,
                            color:
                                MaterialColors.primaryColor.withOpacity(0.8)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.072 / 1,
                child: TextField(
                  controller: userpasstextcont,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password_sharp),
                    hintText: 'Password',
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 0.05, color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(30)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(width: 0.05),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.05,
                            color:
                                MaterialColors.primaryColor.withOpacity(0.8)),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              // SizedBox(height: MediaQuery.of(context).size.height * 0.15 / 1),
            ],
          ),
        ),
      ]),
    );
  }
}
