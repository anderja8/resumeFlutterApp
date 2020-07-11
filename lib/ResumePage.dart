import 'package:flutter/material.dart';
import 'UserDetails.dart';

class ResumePage extends StatelessWidget {
  ResumePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

class ResumeHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(name),
          Text(email),
          Text(website),
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
            Text(title),
            ResumeEntryDetails(
                company: company, datesActive: datesActive, location: location),
            Text(description)
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
          child: Align(alignment: Alignment.centerLeft, child: Text(company))),
      Expanded(
          child: Align(alignment: Alignment.center, child: Text(datesActive))),
      Expanded(
          child:
              Align(alignment: Alignment.centerRight, child: Text(location))),
    ]);
  }
}
