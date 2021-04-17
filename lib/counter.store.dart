import 'package:mobx/mobx.dart';

part 'counter.store.g.dart';

/*
 * Para que sejam geradas as classe do MobX rodar comando abaixo -- 
 * -- flutter packages pub run build_runner build
 * 
 * Também é possível rodar o comando em modo watch
 * -- flutter packages pub run build_runner watch
 */

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}
