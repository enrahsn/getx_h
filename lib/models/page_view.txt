import 'page_view_item.dart';
import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView(
      {super.key,
      this.pageController,
      required PageController pageViewController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      // controller: pageController?? PageController(),
      controller: pageController,
      // children: <Widget>[
//         MyPageViewItem("assets/images/1.jpg", "Image 1"),
//         MyPageViewItem("assets/images/2.jpg", "Image 2"),
//         MyPageViewItem("assets/images/3.jpg", "Image 3")
//       ],
//     );
//   }
// }
      children: const [
        MyPageViewItem(
          image: 'assets/images/onbrgng1.png',
          title: 'E Shopping',
          subTitle: 'Explore top organic fruits & grab them',
        ),
        MyPageViewItem(
          image: 'assets/images/onbrgng2.png',
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
        ),
        MyPageViewItem(
          image: 'assets/images/onbrgng3.png',
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your place',
        ),
      ],
    );
  }
}
