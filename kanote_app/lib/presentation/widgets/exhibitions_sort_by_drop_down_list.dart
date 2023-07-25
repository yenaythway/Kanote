import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/colors.dart';
import '../resources/dimens.dart';

class ExhibitionsSortByDropDownView extends StatefulWidget {
  const ExhibitionsSortByDropDownView({Key? key}) : super(key: key);

  @override
  State<ExhibitionsSortByDropDownView> createState() =>
      _ExhibitionsSortByDropDownViewState();
}

class _ExhibitionsSortByDropDownViewState
    extends State<ExhibitionsSortByDropDownView> {
  bool _isExpanded = false;
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomExpansionTile(
            onExpansionChanged: (isExpanded) {
              setState(() {
                _isExpanded = isExpanded;
              });
            },
            title: Text(
              "Sort By",
              style: GoogleFonts.poppins(
                fontSize: MARGIN_MEDIUM_2,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            children: [
              RadioListTile(
                title:  Text(
                  'All',
                  style: GoogleFonts.poppins(
                   fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                value: 1,
                groupValue: selectedValue,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
              RadioListTile(
                title: Text(
                  'Upcoming',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                value: 2,
                groupValue: selectedValue,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
              RadioListTile(
                title: Text(
                  'Now Live',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                value: 3,
                groupValue: selectedValue,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
            ],
          ),
        ),
        if (_isExpanded)
          Container(
            width: 365,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Show Results",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}


class CustomExpansionTile extends StatefulWidget {
  final Widget title;
  final List<Widget> children;
  final ValueChanged<bool> onExpansionChanged;

  const CustomExpansionTile({
    Key? key,
    required this.title,
    required this.children,
    required this.onExpansionChanged,
  }) : super(key: key);

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _iconTurns;
  late Animation<double> _contentScale;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _iconTurns = Tween<double>(begin: 0.0, end: 0.5).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
    _contentScale = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void handleExpansionChange() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
    widget.onExpansionChanged(_isExpanded);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: handleExpansionChange,
          title: widget.title,
          trailing: RotationTransition(
            turns: _iconTurns,
            child: const Icon(Icons.expand_more,color: kPrimaryColor,),
          ),
        ),
        SizeTransition(
          axisAlignment: -1.0,
          sizeFactor: _contentScale,
          child: Column(children: widget.children),
        ),
      ],
    );
  }
}



