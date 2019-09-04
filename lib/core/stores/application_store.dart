import 'package:mobx/mobx.dart';

part 'application_store.g.dart';

class ApplicationStore = _ApplicationStore with _$ApplicationStore;

abstract class _ApplicationStore with Store {
  @observable
  String title = "Flutter Maps";

  @observable
  int reportSaved = 0;

  @observable
  int reportPaused = 0;
}
