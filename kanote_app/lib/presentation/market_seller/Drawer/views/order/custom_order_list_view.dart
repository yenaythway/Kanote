import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';

import '../../../widgets/custom_divider.dart';

class CustomOrdeListView extends StatelessWidget {
  const CustomOrdeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Image.network(
                "https://images.unsplash.com/photo-1547826039-bfc35e0f1ea8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGFydHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
                height: 48,
                width: 44,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              "Cabin Fevers",
              style: styleWithDeePurpleSmall(),
            ),
            subtitle: const Text("03/04/2023 18:35:16"),
            trailing: Text(
              "1,500MMk",
              style: styleWithDeePurpleSmall(),
            ),
          );
        },
        separatorBuilder: (context, index) => customDivider(),
        itemCount: 7);
  }
}
