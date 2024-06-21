import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_responsive_home_screen/Presentation/cubits/get_recommended_items_cubit/get_recommneded_items_cubit_cubit.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/desktop_grid_view.dart';

class RecommendedGridView extends StatelessWidget {
  const RecommendedGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetRecommnededItemsCubit, GetRecommnededItemsState>(
      builder: (context, state) {
        if (state is GetRecommnededItemsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetRecommnededItemsSuccess) {
          return DesktopGridView(items: state.recommendedItems);
        } else if (state is GetRecommnededItemsFailure) {
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
