import 'package:flutter/material.dart';
import 'package:flutter_maps/core/widgets/round_icon_button.dart';
import 'package:flutter_maps/core/widgets/round_searchbar.dart';

class MapTopBar extends StatelessWidget {
  const MapTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 7,
                child: RoundSearchBar(),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: RoundIconButton(
                    icon: Icons.near_me,
                    backgroundColor: theme.backgroundColor,
                    foregroundColor: theme.primaryColor,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
