import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summuryData});

  final List<Map<String, Object>> summuryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summuryData.map(
            (data) {
              return SummaryItem(itemData: data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
