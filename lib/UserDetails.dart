//Basic User Information
const name = 'Felonius Gru';
const role = 'Most Evil Supervillain';
const phone = '555-555-5555';
const email = 'gru@minions.evil';
const website = 'flutter.dev';

//Class to hold prior work details
class PriorWorkDetails {
  final title, company, datesActive, location, description;

  PriorWorkDetails(
      {this.title,
      this.company,
      this.datesActive,
      this.location,
      this.description});
}

//List of all prior work details, ordered most recent to least recent
final List<PriorWorkDetails> priorWorkList = [
  PriorWorkDetails(
      title: 'Lackey',
      company: 'Apple',
      datesActive: 'June 95 - July 98',
      location: 'California',
      description: 'Performed menial evil tasks such as ' +
          'unplugging lamps and hiding keys'),
  PriorWorkDetails(
      title: 'Lackey',
      company: 'Apple',
      datesActive: 'June 95 - July 97',
      location: 'California',
      description: 'Performed menial evil tasks such as ' +
          'unplugging lamps and hiding keys'),
  PriorWorkDetails(
      title: 'Lackey',
      company: 'Apple',
      datesActive: 'June 93 - July 97',
      location: 'California',
      description: 'Performed menial evil tasks such as ' +
          'unplugging lamps and hiding keys')
];
