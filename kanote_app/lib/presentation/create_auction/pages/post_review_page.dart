import 'package:flutter/material.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/create_auction/viewitems/artwork_view.dart';
import 'package:kanote_app/presentation/create_auction/widgets/artwork_info_view.dart';
import 'package:kanote_app/presentation/create_auction/widgets/artwork_properties_view.dart';
import 'package:kanote_app/presentation/market/pages/auction_detail/viewitems/art_view.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';
import 'package:kanote_app/presentation/widgets/kn_button_view.dart';

class PostReviewPage extends StatelessWidget {
  const PostReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Create an auction post",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(77, 77, 77, 1.0),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: MARGIN_CARD_MEDIUM_2),
            const TitleSectionView(),
            const SizedBox(height: MARGIN_MEDIUM_2),
            EditYourArtworksSectionView(),
            const SizedBox(height: MARGIN_MEDIUM_2),
            const ArtworkInformationSectionView(),
            const SizedBox(height: MARGIN_MEDIUM_2),
            const ArtworkPropertiesSectionView(),
            const SizedBox(height: MARGIN_MEDIUM_2),
            KnButtonView(
              label: "Post an auction post",
              margin: MARGIN_MEDIUM_2,
              onTap: () {},
            ),
            const SizedBox(height: MARGIN_MEDIUM_2),
          ],
        ),
      ),
    );
  }
}

class ArtworkPropertiesSectionView extends StatelessWidget {
  const ArtworkPropertiesSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
        vertical: MARGIN_MEDIUM_2,
      ),
      margin: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 242, 249, 1.0),
        borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
      ),
      child: Column(
        children: [
          const TitleAndEditView(),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkPropertiesView(
            title: "Medium",
            description: "Painting",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkPropertiesView(
            title: "Materials",
            description: "Oil on cardboard",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkPropertiesView(
            title: "Size",
            description: "40 4/5 x 39 1/5 in",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkPropertiesView(
            title: "Frame",
            description: "Included",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkPropertiesView(
            title: "Condition",
            description:
                "This artwork is offered in excellent and its original condition",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkPropertiesView(
            title: "Medium",
            description:
                "Hand-signed by an artiest, Signed and dated on the lower right corner",
          ),
        ],
      ),
    );
  }
}

class ArtworkInformationSectionView extends StatelessWidget {
  const ArtworkInformationSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MARGIN_MEDIUM_2,
        vertical: MARGIN_MEDIUM_2,
      ),
      margin: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 242, 249, 1.0),
        borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleAndEditView(),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkInfoView(
            title: "Artwork Title : ",
            description: "Flower And A Frog",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkInfoView(
            title: "Starting bid Amount :",
            description: "25000ks",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkInfoView(
            title: "Estimated Price :",
            description: "50000ks - 150000ks",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkInfoView(
            title: "Auction Live Time :",
            description:
                "19th Jan, 2023 ( 8:00am ) - 25th Jan, 2023 ( 9:00pm )",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkInfoView(
            title: "Artwork infos :",
            description:
                "Corem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora ",
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          ArtworkInfoView(
            title: "Artist signature: ",
            isSignature: true,
            imageUrl:
                "https://onlinepngtools.com/images/examples-onlinepngtools/george-walker-bush-signature.png",
          ),
        ],
      ),
    );
  }
}

class EditYourArtworksSectionView extends StatefulWidget {
  @override
  State<EditYourArtworksSectionView> createState() =>
      _EditYourArtworksSectionViewState();
}

class _EditYourArtworksSectionViewState
    extends State<EditYourArtworksSectionView> {
  final ScrollController controller = ScrollController();
  ScrollPosition? scrollPosition;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      scrollPosition = controller.position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: MARGIN_MEDIUM_2,
      ),
      margin: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 242, 249, 1.0),
        borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: TitleAndEditView(),
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          Container(
            height: 130,
            child: ListView.separated(
              controller: controller,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ArtworkView();
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: MARGIN_MEDIUM);
              },
            ),
          ),
          const SizedBox(height: MARGIN_MEDIUM_2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ArtworkControllerButtonView(
                iconData: Icons.arrow_back,
                onTap: () {
                  controller.animateTo(
                    (scrollPosition?.pixels ?? 0) - 120,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              const SizedBox(width: MARGIN_MEDIUM_3),
              ArtworkControllerButtonView(
                iconData: Icons.arrow_forward,
                onTap: () {
                  controller.animateTo(
                    (scrollPosition?.pixels ?? 0) + 120,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ArtworkControllerButtonView extends StatelessWidget {
  final IconData iconData;
  final Function onTap;

  ArtworkControllerButtonView({required this.iconData, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 6,
        ),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: Colors.white,
          size: MARGIN_MEDIUM_2,
        ),
      ),
    );
  }
}

class TitleAndEditView extends StatelessWidget {
  const TitleAndEditView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Edit your artworks",
          style: knSubTitle().copyWith(
            color: const Color.fromRGBO(0, 0, 0, 0.8),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "Edit",
          style: knNormalText().copyWith(
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}

class TitleSectionView extends StatelessWidget {
  const TitleSectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Text(
        "Post Review",
        style: knTitle().copyWith(
          color: kPrimaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
