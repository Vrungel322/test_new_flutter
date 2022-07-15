import 'package:bloc/bloc.dart';

import '../core_logic/BaseEvent.dart';
import '../core_logic/BaseState.dart';

abstract class BaseCustomBloc<E, S> extends Bloc<BaseEvent, BaseState> {
  BaseCustomBloc(BaseState initialState) : super(initialState);
}
