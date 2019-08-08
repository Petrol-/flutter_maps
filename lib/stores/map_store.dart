import 'package:mobx/mobx.dart';

part 'map_store.g.dart';

class MapStore = _MapStore with _$MapStore;


abstract class _MapStore with Store {
  _MapStore(){
    print("init");
  }
  @observable
  int value = 0;

  @action
  void increment(int incrementValue) {
    value += incrementValue;
  }
}
