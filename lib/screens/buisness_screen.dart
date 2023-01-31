import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app2/cubit/news_app_cubit.dart';
import 'package:news_app2/widgets/usedWidgets.dart';

class BuisnessScreen extends StatefulWidget {
  const BuisnessScreen({super.key});

  @override
  State<BuisnessScreen> createState() => _BuisnessScreenState();
}

class _BuisnessScreenState extends State<BuisnessScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsAppCubit, NewsAppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsAppCubit.get(context).buisness;
        return ConditionalBuilder(
          condition: state is! LoadbuisnessScreen,
          builder: (context) => ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: ((context, index) =>
                  ListBuisness(list[index], context)),
              separatorBuilder: ((context, index) => divider()),
              itemCount: list.length),
          fallback: (context) => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
