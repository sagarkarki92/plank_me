import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plank_me/data/models/plank_info.dart';
import 'package:plank_me/presentation/plank_records/cubit/plankrecord_cubit.dart';

class PlankRecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlankrecordCubit()..getAllRecords(),
      child: Scaffold(
        body: const PlankRecordBody(),
      ),
    );
  }
}

class PlankRecordBody extends StatelessWidget {
  const PlankRecordBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlankrecordCubit, PlankrecordState>(
      builder: (context, state) {
        return state.when(
            initial: () => _buildInitial(),
            loading: () => _buildLoading(),
            complete: (totalMinutes, records) =>
                _buildComplete(totalMinutes, records),
            error: () => _buildError());
      },
    );
  }

  Widget _buildInitial() {
    return const SizedBox();
  }

  Widget _buildLoading() {
    return const CircularProgressIndicator();
  }

  Widget _buildComplete(String? totalMinutes, List<PlankInfo>? records) {
    return Center(
      child: Text('you planked $totalMinutes'),
    );
  }

  Widget _buildError() {
    return const Text('This is error');
  }
}
