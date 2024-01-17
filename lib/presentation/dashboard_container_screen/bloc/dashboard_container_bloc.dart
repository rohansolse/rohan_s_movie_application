import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rohan_s_movie_application/presentation/dashboard_container_screen/models/dashboard_container_model.dart';
part 'dashboard_container_event.dart';
part 'dashboard_container_state.dart';

/// A bloc that manages the state of a DashboardContainer according to the event that is dispatched to it.
class DashboardContainerBloc
    extends Bloc<DashboardContainerEvent, DashboardContainerState> {
  DashboardContainerBloc(DashboardContainerState initialState)
      : super(initialState) {
    on<DashboardContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardContainerInitialEvent event,
    Emitter<DashboardContainerState> emit,
  ) async {
    NavigatorService.pushNamed(
      AppRoutes.dashboardPage,
    );
    NavigatorService.pushNamed(
      AppRoutes.accountFivePage,
    );
    NavigatorService.pushNamed(
      AppRoutes.channelSixPage,
    );
    NavigatorService.pushNamed(
      AppRoutes.exploreEightPage,
    );
  }
}
