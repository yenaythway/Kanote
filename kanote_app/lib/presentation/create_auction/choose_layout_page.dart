import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/create_post_title.dart';
import '../community/detail_photo.dart/detail_photo.dart';
import '../widgets/create_bot_button.dart';
import '../widgets/create_post_appbar.dart';
import 'add_description.dart';
import 'create_controller.dart';

class ChooseLayout extends StatelessWidget {
  ChooseLayout({super.key});

  @override
  final CreateController createController = Get.put(CreateController());

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar(title: 'Create a community post'),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MARGIN_MEDIUM_2,
              ),
              Text("Step 2 of 3",
                  style: knNormalText()
                      .copyWith(color: Color.fromRGBO(107, 107, 107, 1.0))),
              SizedBox(height: MARGIN_MEDIUM),
              CreatePostTitle(title: "Choose a layout"),
              SizedBox(
                height: MARGIN_XLARGE,
              ),
              Obx(() {
                Widget chosenWidget;
                print(createController.currentWidget.value);
                switch (createController.currentWidget.value) {
                  case 1:
                    chosenWidget = ClassicLayout(
                      isCreate: true,
                    );
                    break;
                  case 2:
                    chosenWidget = BannerLayout(
                      isCreate: true,
                    ); //BannerLayout
                    break;
                  case 3:
                    chosenWidget = ColumnsLayout(
                      isCreate: true,
                    );
                    break;
                  default:
                    chosenWidget = ClassicLayout(
                      isCreate: true,
                    );
                }
                return chosenWidget;
              }),
              Expanded(
                child: SizedBox(
                  height: 1, //MARGIN_XLARGE
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                          onTap: () {
                            createController.changeWidget(1);
                          },
                          child: Image.asset("assets/images/classic.png"))),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: GestureDetector(
                          onTap: () {
                            createController.changeWidget(2);
                          },
                          child: Image.asset("assets/images/banner.png"))),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: GestureDetector(
                          onTap: () {
                            createController.changeWidget(3);
                          },
                          child: Image.asset("assets/images/columns.png"))),
                ],
              ),
              Expanded(
                child: SizedBox(
                  height: 1, //MARGIN_XLARGE
                ),
              ),
              Next(next: AddDescription())
            ],
          ),
        ));
  }
}

class ColumnsLayout extends StatelessWidget {
  bool isCreate;
  ColumnsLayout({super.key, required this.isCreate});

  @override
  Widget build(BuildContext context) {
    double spaceBetweenImages = isCreate ? 5 : 4;
    double spaceButomImage = 20;
    return Container(
      height: 322,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              ImageContainer(height: 285, width: 78),
              SizedBox(
                height: spaceButomImage,
              )
            ],
          )),
          SizedBox(
            width: spaceBetweenImages,
          ),
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: spaceButomImage,
              ),
              ImageContainer(height: 285, width: 78),
            ],
          )),
          SizedBox(
            width: spaceBetweenImages,
          ),
          Expanded(
              child: Column(
            children: [
              ImageContainer(height: 285, width: 78),
              SizedBox(
                height: spaceButomImage,
              )
            ],
          )),
          SizedBox(
            width: spaceBetweenImages,
          ),
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: spaceButomImage,
              ),
              Stack(
                children: [
                  ImageContainer(height: 285, width: 78),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 285,
                      width: 78,
                      color: Color.fromRGBO(0, 0, 0, 0.65),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    right: 30,
                    child: Text(
                      "+2",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ClassicLayout extends StatelessWidget {
  bool isCreate;
  ClassicLayout({super.key, required this.isCreate});
  @override
  Widget build(BuildContext context) {
    double spaceBetweenImages = isCreate ? 12 : 4;
    return Container(
      height: isCreate ? 322 : null,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                    onTap: () => Get.to(DetailPhoto()),
                    child: ImageContainer(
                      height: 137,
                      width: 222,
                    )
                    // Container(
                    //   height: 172,
                    //   width: 187,
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(10),
                    //     child: Image.asset(
                    //       "assets/images/post_image.png",
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                    ),
              ),
              SizedBox(
                width: spaceBetweenImages,
              ),
              GestureDetector(
                onTap: () => Get.to(DetailPhoto()),
                child: ImageContainer(
                  height: 137,
                  width: 108,
                ),
              ),
            ],
          ),
          SizedBox(
            height: spaceBetweenImages,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => Get.to(DetailPhoto()),
                  child: ImageContainer(
                    height: 137,
                    width: 108,
                  ),
                ),
                // Container(
                //   height: 136,
                //   width: 108,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(10),
                //     child: Image.asset(
                //       "assets/images/post_image.png",
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
              ),
              SizedBox(
                width: spaceBetweenImages,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => Get.to(DetailPhoto()),
                  child: ImageContainer(
                    height: 137,
                    width: 108,
                  ),
                ),
                // Container(
                //   height: 136,
                //   width: 108,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(10),
                //     child: Image.asset(
                //       "assets/images/post_image.png",
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
              ),
              SizedBox(
                width: spaceBetweenImages,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => Get.to(DetailPhoto()),
                  child: ImageContainer(
                    height: 137,
                    width: 108,
                  ),
                ),
                // Container(
                //   height: 136,
                //   width: 108,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(10),
                //     child: Image.asset(
                //       "assets/images/post_image.png",
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BannerLayout extends StatelessWidget {
  bool isCreate;
  BannerLayout({super.key, required this.isCreate});
  @override
  Widget build(BuildContext context) {
    double? spaceBetween = isCreate ? 8 : 5;
    return Container(
      height: 322,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Column(
            children: [
              ImageContainer(
                height: 157,
                width: 222,
              ),
              SizedBox(
                height: spaceBetween,
              ),
              ImageContainer(
                height: 157,
                width: 222,
              )
            ],
          ),
          SizedBox(
            width: spaceBetween,
          ),
          Expanded(
            child: Column(
              children: [
                ImageContainer(
                  height: 102,
                  width: 105,
                ),
                SizedBox(
                  height: spaceBetween,
                ),
                ImageContainer(
                  height: 102,
                  width: 105,
                ),
                SizedBox(
                  height: spaceBetween,
                ),
                ImageContainer(
                  height: 102,
                  width: 105,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  double height;
  double width;
  ImageContainer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          "assets/images/post_image.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
