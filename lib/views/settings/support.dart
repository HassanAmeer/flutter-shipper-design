import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import '../../utils/colors/materialcolors.dart';

class CustomerSupportPage extends StatelessWidget {
  const CustomerSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: MaterialColors.primaryColor,
        title: const Text(
          'Customer Support',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.headphones_sharp,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1 / 1,
        child: MessageBar(
          onSend: (_) => print(_),
          sendButtonColor: MaterialColors.primaryColor,
          actions: [
            InkWell(
              child: const Icon(
                Icons.attach_file,
                color: Colors.black,
                size: 24,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: const Column(
          children: [
            BubbleSpecialThree(
              text: 'Please try and give some feedback on it!',
              color: MaterialColors.primaryColor,
              tail: true,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: "Thanks",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: 'Welcome !',
              color: MaterialColors.primaryColor,
              tail: true,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
