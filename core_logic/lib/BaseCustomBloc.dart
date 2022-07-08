import 'package:flutter_bloc/flutter_bloc.dart';

import 'BaseEvent.dart';
import 'BaseState.dart';

abstract class BaseCustomBloc<E, S> extends Bloc<BaseEvent, BaseState> {
  BaseCustomBloc(BaseState initialState) : super(initialState);
}
