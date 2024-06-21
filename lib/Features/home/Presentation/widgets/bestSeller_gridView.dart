import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/cubits/get_best_sellers_cubit/get_best_sellers_cubit.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/desktop_grid_view.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBestSellersCubit, GetBestSellersState>(
      builder: (context, state) {
        if (state is GetBestSellersLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetBestSellersSuccess) {
          return DesktopGridView(items: state.bestSellers);
        } else if (state is GetBestSellersFailure) {
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
