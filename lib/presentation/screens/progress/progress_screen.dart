import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Circular progress indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.black45,
          ),
          SizedBox(height: 20),
          Text('Circular y Linear controlado'),
          SizedBox(height: 10),
          _ControlledProgessIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgessIndicator extends StatelessWidget {
  const _ControlledProgessIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
        // debe ser StreamBuilder<double>
        stream: Stream.periodic(
          const Duration(milliseconds: 300),
          (value) => (value * 2) / 100.0,
        ).takeWhile((value) => value <= 1).cast<double>(),
        builder: (context, AsyncSnapshot<double> snapshot) {
          final double progressValue = snapshot.data ?? 0.0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 2,
                  backgroundColor: Colors.black45,
                  value: progressValue,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: LinearProgressIndicator(value: progressValue),
                )
              ],
            ),
          );
        });
  }
}
