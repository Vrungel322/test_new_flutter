part of core_logic;

abstract class BaseCustomBloc<E, S> extends Bloc<BaseEvent, BaseState> {
  BaseCustomBloc(BaseState initialState) : super(initialState);
}
