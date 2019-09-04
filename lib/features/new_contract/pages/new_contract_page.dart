import 'package:flutter/material.dart';
import 'package:flutter_maps/core/stores/application_store.dart';
import 'package:flutter_maps/core/widgets/AppMainDrawer.dart';
import 'package:flutter_maps/features/new_contract/stores/new_contract_store.dart';
import 'package:flutter_maps/routes.dart';
import 'package:provider/provider.dart';

class NewContractPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<NewContractStore>(
        builder: (_) => NewContractStore(),
        child: Builder(builder: (context) {
          final appStore = Provider.of<ApplicationStore>(context);
          final newContractStore = Provider.of<NewContractStore>(context);

          return Scaffold(
            drawer: AppMainDrawer(currentRouteName: Routes.newContract),
            appBar: AppBar(title: Text(appStore.title), centerTitle: true),
            body: Container(
              child: Form(
                key: newContractStore.key,
                child: Container(),
              ),
            ),
          );
        }));
  }
}
