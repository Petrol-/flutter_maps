import 'package:flutter/material.dart';
import 'package:flutter_maps/features/new_contract/stores/new_contract_store.dart';
import 'package:provider/provider.dart';

class NewContractPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<NewContractStore>(
        builder: (_) => NewContractStore(),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Text("ok"),
          ),
        ));
  }
}
