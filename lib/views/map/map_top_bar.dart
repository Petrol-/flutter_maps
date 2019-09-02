import 'package:flutter/material.dart';
import 'package:flutter_maps/core/widgets/round_icon_button.dart';
import 'package:flutter_maps/core/widgets/round_searchbar.dart';

class MapTopBar extends StatelessWidget {
  const MapTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 6,
            child: RoundSearchBar(),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerRight,
              child: RoundIconButton(
                icon: Icons.near_me,
                backgroundColor: Colors.white,
                foregroundColor: Colors.lightBlue,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
