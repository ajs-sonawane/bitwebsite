import 'package:bit_web/res/anim_widgets/circle_painter.dart';
import 'package:bit_web/res/anim_widgets/circle_wave.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class SideRedBannerWidget extends StatefulWidget {
  const SideRedBannerWidget({Key? key, this.pgController, this.index})
      : super(key: key);
  final PageController? pgController;
  final int? index;

  @override
  State<SideRedBannerWidget> createState() => _SideRedBannerWidgetState();
}

class _SideRedBannerWidgetState extends State<SideRedBannerWidget>
    with TickerProviderStateMixin {
  final List<String> titles = ["", "", ""];
  final List<String> content = ["ONE", "TWO", "THREE"];
  late double btnSize = 80.0;

  final List<Widget> images = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.grey,
    ),
  ];
  AnimationController? _controller;

  // int? currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();
    // widget.pgController!.addListener(() {
    //   print("listen");
    // });
    // widget.pgController!.addListener(() {
    //   setState(() {
    //     currentPage = widget.pgController!.page! as int?;
    //   });
    // });
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Stack(
        children: [
          Material(
            elevation: 0.0,
            color: Colors.red,
            child: Container(
              height: Get.size.height,
              width: Get.size.width * 0.2,
              // alignment: Alignment.topCenter,
              // padding: EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Positioned(
                    top:Get.size.height*0.13,
                    // left: Get.size.width*0.005,
                    child: CustomPaint(
                      painter: CirclePainter(
                        _controller!,
                        color: Colors.amber,
                      ),
                      child: SizedBox(
                        width: btnSize * 2.5,
                        height: btnSize * 2.5,
                        child: Container(
                          // color: Colors.purple,
                          child: Center(
                            child: ScaleTransition(
                                scale: Tween(begin: 0.95, end: 1.0).animate(
                                  CurvedAnimation(
                                    parent: _controller!,
                                    curve: const CurveWave(),
                                  ),
                                ),
                                child: Container()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset("assets/images/bitlogo.png")),
                      ),
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "3",
                                style: TextStyle(
                                    height: Get.size.height * 0.0008,
                                    fontFamily: "FontleroyBrownNF",
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: Get.size.width * 0.14),
                              ),
                              Text(
                                " Year Young \n Organization.",
                                style: TextStyle(
                                    height: Get.size.height * 0.0014,
                                    fontFamily: "FontleroyBrownNF",
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: Get.size.width * 0.028),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      // Image.asset(
                      //   "assets/images/robot.png",
                      //   height: Get.size.height * 0.3,
                      //   // width: Get.size.width * 0.1,
                      // ),
                    ],
                  ),
                  // Swiper(
                  //   controller: widget.pgController,
                  //   // containerHeight: Get.size.height*0.3,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return RotatedBox(
                  //       quarterTurns: 3,
                  //       child: Container(
                  //         // height: 20,
                  //         // width: 70,
                  //         alignment: Alignment.bottomCenter,
                  //         // color: Colors.blue,
                  //         child: Text(content
                  //             .elementAt(widget.pgController!.index ?? index)),
                  //       ),
                  //     );
                  //   },
                  //   // index: widget.index,
                  //   // containerWidth: 40,
                  //   // containerHeight: 20,outer: true,
                  //   viewportFraction: 0.1,
                  //   scale: 0.1,
                  //   // autoplay: true,
                  //   itemCount: content.length,
                  //   scrollDirection: Axis.vertical,
                  //   loop: false,
                  //   // pagination:
                  //   //     SwiperPagination(alignment: Alignment.centerRight),
                  //   // control: widget.swiperPlugin,
                  // )
                  // Container(
                  //   alignment: Alignment.centerRight,
                  //   padding: EdgeInsets.only(right: 12.0),
                  //   child: RotatedBox(
                  //     quarterTurns: 3,
                  //     child: Text(widget.index == 0
                  //         ? "ONE"
                  //         : widget.index == 1
                  //             ? "TWO"
                  //             : "THREE"),
                  //   ),
                  // ),

                  /// VerticalCardPager
                  // Container(
                  //   // height: ,
                  //   child: VerticalCardPager(
                  //       titles: List.generate(titles.length, (index) => ""),
                  //       images: List.generate(
                  //           titles.length,
                  //           (index) => RotatedBox(
                  //                 quarterTurns: 3,
                  //                 child: Container(
                  //                   width: Get.size.width * 0.1,
                  //                   alignment: Alignment.bottomCenter,
                  //                   color: Colors.blue,
                  //                   child: Text(content.elementAt(index)),
                  //                 ),
                  //               )),
                  //       textStyle: TextStyle(
                  //           color: Colors.white, fontWeight: FontWeight.bold),
                  //       // optional
                  //       onPageChanged: (page) {
                  //         // optional
                  //       },
                  //       onSelectedItem: (index) {
                  //         // optional
                  //       },
                  //       initialPage: 0,
                  //       align: ALIGN.RIGHT // optional
                  //       ),
                  // ),

                  /// VerticalCardPager
                  // ListView(
                  //   controller: widget.pgController,
                  //   children: [
                  //     Text("ONE"),
                  //     Text("TWO"),
                  //     Text("THREE"),
                  //   ]
                  //       .map((item) => Padding(
                  //             child: item,
                  //             padding: EdgeInsets.all(20.0),
                  //           ))
                  //       .toList(),
                  // )
                  // SmoothPageIndicator(
                  //     axisDirection: Axis.vertical,
                  //     controller: pgController!,
                  //     count: 3,
                  //     effect:
                  //         ScrollingDotsEffect(spacing: Get.size.height * 0.2),
                  //     // your preferred effect
                  //     onDotClicked: (index) {}),
                ],
              ),
            ),
          ),
          // Container(
          //   // color: Colors.blue,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     // crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Expanded(
          //         child: Container(
          //           width: Get.size.width * 0.1,
          //           decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/images/bitlogo.png"),
          //                   fit: BoxFit.contain)),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
