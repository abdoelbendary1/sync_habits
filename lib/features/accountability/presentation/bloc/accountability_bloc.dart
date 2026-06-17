import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'accountability_event.dart';
part 'accountability_state.dart';

class AccountabilityBloc extends Bloc<AccountabilityEvent, AccountabilityState> {
  AccountabilityBloc() : super(AccountabilityInitial()) {
    on<AccountabilityEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
