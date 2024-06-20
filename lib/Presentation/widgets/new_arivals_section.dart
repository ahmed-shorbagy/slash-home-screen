import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_responsive_home_screen/Presentation/cubits/get_new_arivals_cubit/get_new_arrivals_cubit.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/horizontal_list_view.dart';
import 'package:slash_responsive_home_screen/Presentation/widgets/section_title.dart';

class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrivals",
          onTap: () {},
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: BlocBuilder<GetNewArrivalsCubit, GetNewArrivalsState>(
              builder: (context, state) {
                if (state is GetNewArrivalsLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GetNewArrivalsSuccess) {
                  return HorizontalListView(items: state.newArrivals);
                } else if (state is GetNewArrivalsFailure) {
                  return const Center(
                    child: Text("Error Happened !, please try again"),
                  );
                } else {
                  return Container();
                }
              },
            )),
      ],
    );
  }
}
