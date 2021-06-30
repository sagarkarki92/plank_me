import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/presentation/plank_records/cubit/plankrecord_cubit.dart';
import 'package:plank_me/presentation/plank_records/ui/widgets/graph_item.dart';

class RecordGraph extends StatefulWidget {
  const RecordGraph({Key? key}) : super(key: key);

  @override
  _RecordGraphState createState() => _RecordGraphState();
}

class _RecordGraphState extends State<RecordGraph> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    Timer(
      const Duration(milliseconds: 500),
      () => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlankrecordCubit, PlankrecordState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          complete: (_, __, ___, plankBest, records) => Center(
            child: ListView.separated(
              controller: _scrollController,
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
