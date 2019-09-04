import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'new_contract_store.g.dart';

class NewContractStore = _NewContractStore with _$NewContractStore;

abstract class _NewContractStore with Store {
  
  final _formKey = GlobalKey<FormState>();

  @observable
  GlobalKey<FormState> get key => _formKey;
}
