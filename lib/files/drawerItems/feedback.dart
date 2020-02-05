import 'package:flutter/material.dart';

class FeedbackReport extends StatefulWidget {
  @override
  _FeedbackReportState createState() => new _FeedbackReportState();
}

class _FeedbackReportState extends State<FeedbackReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
            "Cette application est une beta, pourriez vous s'il vous plait envoyez vos suggestions ou des bugs que vous auriez trouvé à l'adresse : Stelapix.bonap@gmail.com"),
      ),
    );
  }
}