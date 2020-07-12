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
      title: 'Supervillain',
      company: 'Self Employed',
      datesActive: 'Feb 08 - Present',
      location: 'Redacted',
      description: 'Oversaw evil device construction of famed Dr. Nefario.' +
          ' Directed nefarious activities of thousands of evil, bright yellow' +
          ' minions. Most famous for stealing, and then returning, the moon.'),
  PriorWorkDetails(
      title: 'Senator',
      company: 'US Senate',
      datesActive: 'Jan 02 - Jan 08',
      location: 'Florida',
      description: 'Campaigned on the promise of a free alligator for all little girls. ' +
          'Did not fulfil campaign promise, but did use time to in office to ' +
          'work great evil through decreasing access to affordable healthcare, ' +
          'limiting the rights of the people, and stoking the flames of global warfare.'),
  PriorWorkDetails(
      title: 'Oddjob Doer',
      company: 'Goldfinger',
      datesActive: 'Aug 97 - Jan 02',
      location: 'Florida',
      description: 'Perfomed oddjobs for well known villan Auric goldfinger.' +
          ' Rose to fame after using hat throwing skills to defeat enemies.'),
  PriorWorkDetails(
      title: 'Lackey',
      company: 'Apple',
      datesActive: 'June 93 - July 97',
      location: 'California',
      description: 'Performed menial evil tasks such as ' +
          'unplugging lamps, telling dogs to chew shoes, datamining customers, and hiding keys.'),
  PriorWorkDetails(
      title: 'Underling',
      company: 'Monsanto',
      datesActive: 'June 90 - June 93',
      location: 'New York',
      description:
          'Strongarmed farms and grocery stores into using mutated corn.'),
  PriorWorkDetails(
      title: 'Scientist',
      company: 'Monsanto',
      datesActive: 'June 89 - June 90',
      location: 'Missouri',
      description: 'Mutated corn.'),
];
