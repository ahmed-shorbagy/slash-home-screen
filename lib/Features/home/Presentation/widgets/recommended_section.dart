import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/cubits/get_recommended_items_cubit/get_recommneded_items_cubit_cubit.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/horizontal_list_view.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/widgets/section_title.dart';

class RecommededSection extends StatelessWidget {
  const RecommededSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Recommeded",
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child:
              BlocBuilder<GetRecommnededItemsCubit, GetRecommnededItemsState>(
            builder: (context, state) {
              if (state is GetRecommnededItemsLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetRecommnededItemsSuccess) {
                return HorizontalListView(items: state.recommendedItems);
              } else if (state is GetRecommnededItemsFailure) {
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
