// ignore_for_file: must_be_immutable

part of 'account_five_bloc.dart';

/// Represents the state of AccountFive in the application.
class AccountFiveState extends Equatable {
  AccountFiveState({this.accountFiveModelObj});

  AccountFiveModel? accountFiveModelObj;

  @override
  List<Object?> get props => [
        accountFiveModelObj,
      ];
  AccountFiveState copyWith({AccountFiveModel? accountFiveModelObj}) {
    return AccountFiveState(
      accountFiveModelObj: accountFiveModelObj ?? this.accountFiveModelObj,
    );
  }
}
