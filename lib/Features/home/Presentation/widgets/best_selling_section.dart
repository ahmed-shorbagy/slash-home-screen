import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/cubits/get_best_sellers_cubit/get_best_sellers_cubit.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/horizontal_list_view.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/section_title.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Bese Selling",
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: BlocBuilder<GetBestSellersCubit, GetBestSellersState>(
            builder: (context, state) {
              if (state is GetBestSellersLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetBestSellersSuccess) {
                return HorizontalListView(items: state.bestSellers);
              } else if (state is GetBestSellersFailure) {
                return const Center(
                  child: Text("Error Happened !, please try again"),
                );
              } else {
                return Container();
              }
            },
          ),
        )
      ],
    );
  }
}
