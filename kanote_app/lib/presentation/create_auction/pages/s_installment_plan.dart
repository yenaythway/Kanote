import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/pages/artworks_detail_page.dart';
import 'package:kanote_app/presentation/widgets/create_post_appbar.dart';

import '../../resources/dimens.dart';

class InstallmentPlan extends StatelessWidget {
  const InstallmentPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: ""),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(MARGIN_MEDIUM_2),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Installment Plan",
                  style: TextStyle(
                      color: Color.fromRGBO(58, 0, 94, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: MARGIN_MEDIUM_2,
                ),
                Text(
                  "The installment feature provides a convenient and flexible way for buyers to own their desired artwork by dividing the payment into manageable installments, ensuring a smooth and secure transaction from start to finish.",
                  style: TextStyle(
                      color: Color.fromRGBO(10, 2, 15, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: MARGIN_MEDIUM_2,
                ),
                Tile(
                  num: "1",
                  title: "Sells",
                  content:
                      "The installment feature begins with the buyer making an initial deposit based on the artist's specified price. This payment serves as the first step towards securing the artwork.",
                  image: "assets/images/sells.png",
                ),
                Tile(
                    num: "2",
                    title: "Holds the artwork",
                    content:
                        "Once the buyer has made the initial payment, the artist will hold the artwork for the buyer. The artwork will be reserved and kept safely until the buyer completes all the installment payments.",
                    image: "assets/images/hold.png"),
                Tile(
                    num: "3",
                    title: "Delivery",
                    content:
                        "Once the buyer has made the initial payment, the artist will hold the artwork for the buyer. The artwork will be reserved and kept safely until the buyer completes all the installment payments.",
                    image: "assets/images/deli.png")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  String num;
  String title;
  String content;
  String image;
  Tile(
      {super.key,
      required this.num,
      required this.title,
      required this.content,
      required this.image});
  Widget _top() {
    return Row(children: [
      Container(
        height: 40,
        width: 40,
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border.all(color: Color.fromRGBO(122, 13, 190, 1), width: 2),
              borderRadius: BorderRadius.circular(100),
              color: Color.fromRGBO(243, 225, 255, 1)),
          child: Center(child: Text(num)),
        ),
      ),
      SizedBox(
        width: 8,
      ),
      Text(title),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _top(),
        Image.asset(
          image,
          height: 100,
          width: 100,
        ),
        SizedBox(
          height: MARGIN_MEDIUM_2,
        ),
        Text(
          content,
          style: TextStyle(
              color: Color.fromRGBO(105, 105, 105, 1),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
