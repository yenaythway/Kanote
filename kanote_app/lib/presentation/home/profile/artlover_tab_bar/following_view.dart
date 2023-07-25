import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/resources/font_manager.dart';

class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.5),
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset("assets/images/profile_image.png"),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 211, 211, 211)),
                  height: 50,
                  width: 50,
                  child: const Icon(
                    Icons.more_vert,
                    size: 34,
                  ),
                )
              ],
            ),
            Text(
              "Fitt Mone Oo",
              style: knTitle(),
            ),
            const Row(
              children: [Text("75 works."), Text("500 followers")],
            )
          ],
        );
      },
    );
  }
}
