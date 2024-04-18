import 'package:flutter/material.dart';
class Pagethirtysix extends StatelessWidget {
   Pagethirtysix({super.key});
  int _isPress=0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery . of(context).size;
    double height= size. height;
    double width = size. width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: height,
          width: width,
          child: Stack(
            children: [
              ClipPath(
                clipper: PaintingView(),
                child: Container(
                  height: height * 0.32,
                  color: Colors.indigo.shade900,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.035, vertical: height * 0.035),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 28,
                            ),
                            Text(
                              "Modychat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.search_outlined,
                              color: Colors.white,
                              size: 28,
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Container(
                          height: height * 0.085,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade400,
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.002, vertical: height * 0.016),

                          ),
                        ),
                      ])),
                ),
              ),

            ],
          ),)
        ],
      ),
    );
  }
}
class PaintingView extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 2);
    path.cubicTo(size.width / 8, 3 * (size.height / 3), 3 * (size.width / 3.3),
        size.height / 3, size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}