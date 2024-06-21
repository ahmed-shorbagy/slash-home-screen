import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_responsive_home_screen/Core/errors/simple_bloc_observer.dart';
import 'package:slash_responsive_home_screen/Core/utils/service_locator.dart';
import 'package:slash_responsive_home_screen/Core/utils/size_config.dart';
import 'package:slash_responsive_home_screen/Features/home/Domain/UseCases/get_best_sellers.dart';
import 'package:slash_responsive_home_screen/Features/home/Domain/UseCases/get_new_arrivals.dart';
import 'package:slash_responsive_home_screen/Features/home/Domain/UseCases/get_recommended.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/cubits/get_best_sellers_cubit/get_best_sellers_cubit.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/cubits/get_new_arivals_cubit/get_new_arrivals_cubit.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/cubits/get_recommended_items_cubit/get_recommneded_items_cubit_cubit.dart';
import 'package:slash_responsive_home_screen/Features/home/Presentation/views/Home_view.dart';

void main() {
  Bloc.observer = SimpleBLocObserver();
  setupServiceLocator();
  runApp(const SlashResponsiveHomeSceen());
}

class SlashResponsiveHomeSceen extends StatelessWidget {
  const SlashResponsiveHomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig()
        .init(context); //initialize size config to get screen height and width
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GetBestSellersCubit(getBestSellers: getIt.get<GetBestSellers>())
                ..getBestSellersData(),
        ),
        BlocProvider(
          create: (context) =>
              GetNewArrivalsCubit(getNewArrivals: getIt.get<GetNewArrivals>())
                ..getNewArrivalsData(),
        ),
        BlocProvider(
          create: (context) => GetRecommnededItemsCubit(
              getRecommended: getIt.get<GetRecommended>())
            ..getRecommendedItems(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
