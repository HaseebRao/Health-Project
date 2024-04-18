import 'package:flutter/material.dart';

class pageeleven extends StatefulWidget {
  @override
  State<pageeleven> createState() => _pagetenState();
}

class _pagetenState extends State<pageeleven> {
  bool isChecked = false;
  bool passwordObscured = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xff0C0928),
            Color(0xff110C3F),
          ], begin: Alignment.topRight, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 4, left: 22, right: 22),
              child: Column(
                children: [
                  Container(
                    height: height * 0.21,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ima.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.023,
                  ),
                  Row(
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            // color: Color(0xff8B5F9C),
                            color: Colors.white,
                            fontSize: height * 0.043,
                            fontWeight: FontWeight.w400,
                            height: 0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.018,
                  ),
                  Container(
                    height: height * 0.073,
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xff181344),
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Color(0xff0D092E),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: TextField(
                        controller: nameController,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(color: Color(0xff423E62)),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            size: 27,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.024,
                  ),
                  Container(
                    height: height * 0.073,
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xff181344),
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Color(0xff0D092E),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: TextField(
                        controller: emailController,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          hintStyle: TextStyle(color: Color(0xff423E62)),
                          prefixIcon: Icon(Icons.alternate_email),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.024,
                  ),
                  Container(
                    height: height * 0.073,
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xff181344),
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Color(0xff0D092E),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: TextField(
                        obscuringCharacter: "y",
                        controller: passwordController,
                        obscureText: passwordObscured,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(color: Color(0xff423E62)),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordObscured = !passwordObscured;
                              });
                            },
                            icon: Icon(
                              passwordObscured
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),

                          // You can replace it with your desired suffix icon
                          border: InputBorder.none,
                        ),
                        // Hide entered text for password fields
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.085),
                  SizedBox(
                    height: height * 0.017,
                  ),
                  Container(
                    height: height * 0.069,
                    width: width * 0.69,
                    decoration: BoxDecoration(
                      color: Color(0xff2D246C),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: Text(
                        "Sign up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // color: Color(0xff8B5F9C),
                            color: Colors.white,
                            fontSize: height * 0.028,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height * 0.001,
                        width: width * 0.2,
                        color: Color(0xff8B5F9C),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        "Or Login with other accounts",
                        style: TextStyle(
                            // color: Color(0xff8B5F9C),
                            color: Color(0xff8B5F9C),
                            fontSize: height * 0.014,
                            fontWeight: FontWeight.w400,
                            height: 0),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Container(
                        height: height * 0.001,
                        width: width * 0.2,
                        color: Color(0xff8B5F9C),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        height: height * 0.062,
                        width: width * 0.415,
                        decoration: BoxDecoration(
                          color: Color(0xff2D246C),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login with",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  // color: Color(0xff8B5F9C),
                                  color: Colors.white,
                                  fontSize: height * 0.016,
                                  fontWeight: FontWeight.w500,
                                  height: 0),
                            ),
                            Container(
                              width: width * 0.09,
                              height: height * 0.04,
                              decoration: BoxDecoration(
                                // Container background color

                                borderRadius: BorderRadius.circular(30.0),
                                // Border radius
                                image: DecorationImage(
                                  image: AssetImage('assets/images/G.jpg'),
                                  // Asset image path
                                  fit: BoxFit.cover,
                                  // Image fit property
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.055,
                      ),
                      Container(
                        height: height * 0.062,
                        width: width * 0.415,
                        decoration: BoxDecoration(
                          color: Color(0xff2D246C),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login with",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  // color: Color(0xff8B5F9C),
                                  color: Colors.white,
                                  fontSize: height * 0.016,
                                  fontWeight: FontWeight.w500,
                                  height: 0),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Container(
                              width: width * 0.09,
                              height: height * 0.04,
                              decoration: BoxDecoration(
                                // Container background color

                                borderRadius: BorderRadius.circular(50.0),
                                // Border radius
                                image: DecorationImage(
                                  image: AssetImage('assets/images/F.jpg'),
                                  // Asset image path
                                  fit: BoxFit.fitHeight,
                                  // Image fit property
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // color: Color(0xff8B5F9C),
                            color: Colors.white,
                            fontSize: height * 0.016,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                      Text(
                        "Sign up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // color: Color(0xff8B5F9C),
                            color: Color(0xff8B5F9C),
                            fontSize: height * 0.016,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
