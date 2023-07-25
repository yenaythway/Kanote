import 'package:flutter/material.dart';

class NearbyGalleries extends StatelessWidget {
  const NearbyGalleries({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 334,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
           padding:const EdgeInsets.only(top: 8,bottom: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                height: 144,
                width: double.infinity,
                child: Image.network(
                  "https://images.unsplash.com/photo-1623082691619-f6cacbdaffa5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1228&q=80",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
      const  Row(
          children: [
              Text(
                "Art Winniethepooh",
                style: TextStyle(fontSize:18,fontWeight: FontWeight.w500 ),
              ),
               SizedBox(width: 10,),
              Text("2023",style: TextStyle(fontSize:18,fontWeight: FontWeight.w500 ),)
          ],
        ),
        const  Row(
            children: [
              Icon(Icons.calendar_view_week),
              SizedBox(width: 10,),
              Text("Feb 16 - Mar 6,2023"),
            ],
          ),
           const  Row(
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(width: 10,),
              Text("Yangon, Myanmar"),
            ],
          ),
        ],
      ),
    );
  }
}