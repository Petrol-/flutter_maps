import 'package:flutter/material.dart';

class FilterBottomSheetButton extends StatefulWidget {
  final IconData icon;
  final Widget bottomSheet;
  const FilterBottomSheetButton(
      {Key key, this.icon, @required this.bottomSheet})
      : super(key: key);

  @override
  _FilterBottomSheetButtonState createState() =>
      _FilterBottomSheetButtonState();
}

class _FilterBottomSheetButtonState extends State<FilterBottomSheetButton> {
  bool _bottomSheetOpen = false;
  PersistentBottomSheetController _bottomSheetController;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(widget.icon),
        onPressed: () {
          if (_bottomSheetOpen)
            _closeBottomSheet(context);
          else
            _openBottomSheet(context);
        });
  }

  void _openBottomSheet(BuildContext context) {
    _bottomSheetController = showBottomSheet(
        context: context, builder: (context) => widget.bottomSheet);
    _bottomSheetOpen = true;
    _bottomSheetController.closed.then((_) => _bottomSheetOpen = false);
  }

  void _closeBottomSheet(BuildContext context) {
    _bottomSheetController.close();
  }
}
