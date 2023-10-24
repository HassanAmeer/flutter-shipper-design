import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/colors/materialcolors.dart';
import '../bottomnavbarapage.dart';
import '../home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    loadsui();
    super.initState();
  }

  loadsui() {
    return const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color.fromARGB(255, 255, 255, 255),
        systemNavigationBarIconBrightness: Brightness.dark);
  }

  TextEditingController loginnamecont = TextEditingController();
  TextEditingController loginpasscont = TextEditingController();

  @override
  void dispose() {
    loadsui();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          // systemOverlayStyle: loadsui(),
          leading: const Text(' '),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06 / 1,
          child: GestureDetector(
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNavBarPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: MaterialColors.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text('Login',
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
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03 / 1,
              ),
              const ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontFamily: 'clight',
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Welcome back Shippers!',
                    style: TextStyle(color: Colors.black, fontFamily: 'clight'),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.074 / 1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.074 / 1,
                child: TextField(
                  controller: loginnamecont,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_3_outlined),
                    hintText: 'Name',
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 0.05, color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 0.05),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.05,
                            color:
                                MaterialColors.primaryColor.withOpacity(0.8)),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.074 / 1,
                child: TextField(
                  controller: loginpasscont,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_outlined),
                    hintText: 'Password',
                    helperStyle: const TextStyle(fontSize: 10),
                    disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 0.05, color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 0.05),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.05,
                            color:
                                MaterialColors.primaryColor.withOpacity(0.8)),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                trailing: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Forgotpasw(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'clight'),
                      )),
                ),
              ),
              // GestureDetector(
              //   onTap: () async {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const HomePage(),
              //       ),
              //     );
              //   },
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: MaterialColors.primaryColor,
              //         borderRadius: BorderRadius.circular(20)),
              //     child: const Center(
              //       child: Padding(
              //         padding: EdgeInsets.all(12.0),
              //         child: Text('Login',
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 25,
              //                 fontFamily: 'cbold')),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.26 / 1),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don`t have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signup(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'cbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Forgotpasw extends StatefulWidget {
  const Forgotpasw({Key? key}) : super(key: key);

  @override
  State<Forgotpasw> createState() => _ForgotpaswState();
}

class _ForgotpaswState extends State<Forgotpasw> {
  TextEditingController getnametextcont = TextEditingController();
  TextEditingController getsecpasstextcont = TextEditingController();
  TextEditingController setnewpasstextcont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        // backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06 / 1,
        child: GestureDetector(
          onTap: () async {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: MaterialColors.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text('Update',
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
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: [
            const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontFamily: 'clight',
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'we need your registration secret key for reset password',
                  style: TextStyle(color: Colors.black, fontFamily: 'clight'),
                )),
            const SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.074 / 1,
              child: TextField(
                controller: getnametextcont,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_outline_rounded),
                  hintText: 'Name',
                  helperStyle: const TextStyle(fontSize: 10),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.05, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(23)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(width: 0.05),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.05,
                          color: MaterialColors.primaryColor.withOpacity(0.8)),
                      borderRadius: BorderRadius.circular(23)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.074 / 1,
              child: TextField(
                controller: getsecpasstextcont,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password_outlined),
                  hintText: 'Secret Key',
                  helperStyle: const TextStyle(fontSize: 10),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.05, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(23)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(width: 0.05),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.05,
                          color: MaterialColors.primaryColor.withOpacity(0.8)),
                      borderRadius: BorderRadius.circular(23)),
                ),
              ),
            ),
            // const SizedBox(height: 16),
            // GestureDetector(
            //   onTap: () async {},
            //   child: Container(
            //     decoration: BoxDecoration(
            //         color: MaterialColors.primaryColor,
            //         borderRadius: BorderRadius.circular(20)),
            //     child: const Center(
            //       child: Padding(
            //         padding: EdgeInsets.all(12.0),
            //         child: Text('Submit',
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 25,
            //                 fontFamily: 'cbold')),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

/////////////////////////////////
///   For SignUp
////////////////////////
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController nametextcont = TextEditingController();
  TextEditingController passtextcont = TextEditingController();
  TextEditingController emailtextcont = TextEditingController();
  TextEditingController seckeytextcont = TextEditingController();

  // @override
  // void initState() {
  //   chekhivef();
  //   super.initState();
  // }

  bool agreeval = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: [
            const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontFamily: 'clight',
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Create Account',
                  style: TextStyle(color: Colors.black, fontFamily: 'clight'),
                )),
            const SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.074 / 1,
              child: TextField(
                controller: nametextcont,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_outline_outlined),
                  hintText: 'Full Name',
                  helperStyle: const TextStyle(fontSize: 10),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.05, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(23)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(width: 0.05),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.05,
                          color: MaterialColors.primaryColor.withOpacity(0.8)),
                      borderRadius: BorderRadius.circular(23)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.074 / 1,
              child: TextField(
                controller: emailtextcont,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: 'Email',
                  helperStyle: const TextStyle(fontSize: 10),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.05, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(23)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(width: 0.05),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.05,
                          color: MaterialColors.primaryColor.withOpacity(0.8)),
                      borderRadius: BorderRadius.circular(23)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.074 / 1,
              child: TextField(
                controller: passtextcont,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password_outlined),
                  hintText: 'Password',
                  helperStyle: const TextStyle(fontSize: 10),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.05, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(23)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(width: 0.05),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.05,
                          color: MaterialColors.primaryColor.withOpacity(0.8)),
                      borderRadius: BorderRadius.circular(23)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.074 / 1,
              child: TextField(
                controller: seckeytextcont,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password_outlined),
                  hintText: 'Secret Key',
                  helperStyle: const TextStyle(fontSize: 10),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0.05, color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(23)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(width: 0.05),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.05,
                          color: MaterialColors.primaryColor.withOpacity(0.8)),
                      borderRadius: BorderRadius.circular(23)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: const BorderSide(
                  color: MaterialColors.primaryColor,
                  width: 0.58,
                ),
                splashRadius: 30,
                value: agreeval,
                onChanged: (v) {
                  setState(() {
                    agreeval = !agreeval;
                  });
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
                checkColor: Colors.white,
              ),
              title: Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: Row(
                  children: [
                    const Text(
                      'i agree with',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'clight',
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Termsandcondition(),
                            ),
                          );
                        },
                        child: const Text(
                          'Terms & Privacy',
                          style: TextStyle(
                            color: MaterialColors.primaryColor,
                            fontSize: 12,
                            fontFamily: 'clight',
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: agreeval
                  ? Container(
                      decoration: BoxDecoration(
                          color: MaterialColors.primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text('Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'cbold')),
                        ),
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                          color: MaterialColors.primaryColor[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text('Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'cbold')),
                        ),
                      ),
                    ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.4 / 4),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'cbold',
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Termsandcondition extends StatelessWidget {
  const Termsandcondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shippers: FTL & LTL Loading',
          style: TextStyle(color: Colors.grey),
        ),
        // Customize your app bar as needed
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              'By accessing and using the Shippers app, you agree to be bound by these terms and conditions, as well as our privacy policy.',
              style: TextStyle(fontSize: 14),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy(),
                    ),
                  );
                },
                child: const Text('Privacy Policey')),
            const SizedBox(height: 20),
            const Text(
              '1. USE OF APP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Full Truckload (FTL) Shipments',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'FTL shipments involve loading an entire truck with a single shipment. This is often used when you have a large volume of goods that fill the entire truck\'s capacity.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              'Less Than Truckload (LTL) Shipments',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'LTL shipments are used when your cargo doesn\'t fill an entire truck. It allows multiple shippers to share space in the same truck, reducing costs for each shipper.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              'Loading Process',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'The loading process for both FTL and LTL shipments involves properly securing your cargo, ensuring it\'s labeled correctly, and following safety guidelines to prevent damage during transit.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            // Add more sections related to shipping as needed
          ],
        ),
      ),
    );
  }
}

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Privacy Policy',
          style: TextStyle(color: Colors.grey),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Text(
              '1. Information We Collect',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'We may collect information from you when you use our app, including your name, email address, and workout information. We may also collect information automatically, such as your device type, IP address, and usage data.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              '2. How We Use Your Information',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'We may use the information we collect from you to personalize your experience, improve our app, and communicate with you about our services. We may also share your information with third-party service providers that help us operate our app.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              '3. Cookies and Similar Technologies',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'We may use cookies and similar technologies to collect information about your use of our app and to improve your experience. You can manage your cookie settings in your device or browser settings.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              '4. Third-Party Links',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Our app may contain links to third-party websites or services that are not owned or controlled by us. We are not responsible for the privacy practices of these third-party websites or services. We encourage you to review the privacy policies of these third-party websites or services before providing any personal information',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              '5. Children`s Privacy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Our app is not intended for children under the age of 13. We do not knowingly collect personal information from children under the age of 13. If you are under the age of 13, please do not use our app or provide any personal information to us.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              '6. Changes to This Privacy Policy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'We may update our privacy policy from time to time. We will notify you of any changes by posting the new privacy policy on this page. You are advised to review this privacy policy periodically for any changes.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            Text(
              'If you have any questions about our privacy policy, please contact us at [insert your contact information].',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 12,
              ),
            ),
            // Add more sections as needed
          ],
        ),
      ),
    );
  }
}
