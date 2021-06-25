import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/plank_records/cubit/plankrecord_cubit.dart';
import 'package:plank_me/presentation/plank_records/ui/widgets/graph_item.dart';

class RecordGraph extends StatelessWidget {
  const RecordGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlankrecordCubit, PlankrecordState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          complete: (_, __, ___, plankBest, records) => Center(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: records.length,
              separatorBuilder: (context, index) => const SizedBox(width: 22.0),
              itemBuilder: (context, index) => GraphItem(
                record: records[index],
                totalTime: plankBest,
              ),
            ),
          ),
        );
      },
    );
  }
}
