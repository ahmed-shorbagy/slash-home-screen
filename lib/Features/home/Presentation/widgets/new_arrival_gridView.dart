import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/cubits/get_new_arivals_cubit/get_new_arrivals_cubit.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/desktop_grid_view.dart';

class NewArrivalGridView extends StatelessWidget {
  const NewArrivalGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewArrivalsCubit, GetNewArrivalsState>(
      builder: (context, state) {
        if (state is GetNewArrivalsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetNewArrivalsSuccess) {
          return DesktopGridView(items: state.newArrivals);
        } else if (state is GetNewArrivalsFailure) {
          return const Center(
            child: Text("Error Happened !, please try again"),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
