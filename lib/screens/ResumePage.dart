import 'package:flutter/material.dart';
import '../UserDetails.dart';
import '../styles.dart';

class ResumePage extends StatelessWidget {
  ResumePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResumeHeader(),
        for (var priorWork in priorWorkList)
          ResumeEntry(
              title: priorWork.title,
              company: priorWork.company,
              datesActive: priorWork.datesActive,
              location: priorWork.location,
              description: priorWork.description)
      ],
    ));
  }
}

class ResumeHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(name, style: Styles.boldedTextStyle),
          Text(email, style: Styles.standardTextStyle),
          Text(website, style: Styles.standardTextStyle),
        ]));
  }
}

class ResumeEntry extends StatelessWidget {
  final title, company, datesActive, location, description;

  ResumeEntry(
      {this.title,
      this.company,
      this.datesActive,
      this.location,
      this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Styles.boldedTextStyle),
            ResumeEntryDetails(
                company: company, datesActive: datesActive, location: location),
            Text(description, style: Styles.standardTextStyle)
          ],
        ));
  }
}

class ResumeEntryDetails extends StatelessWidget {
  final company, datesActive, location;

  ResumeEntryDetails({this.company, this.datesActive, this.location});

  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(company, style: Styles.smallTextStyle))),
      Expanded(
          child: Align(
              alignment: Alignment.center,
              child: Text(datesActive, style: Styles.smallTextStyle))),
      Expanded(
          child: Align(
              alignment: Alignment.centerRight,
              child: Text(location, style: Styles.smallTextStyle))),
    ]);
  }
}
