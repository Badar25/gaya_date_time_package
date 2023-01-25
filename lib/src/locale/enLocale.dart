import 'package:jiffy/src/locale/locale.dart';
import 'package:jiffy/src/locale/relativeTime.dart';
import 'package:jiffy/src/enums/startOfWeek.dart';

class EnLocale extends Locale {
  StartOfWeek strtOfWeek;
  EnLocale(this.strtOfWeek);

  @override
  RelativeTime relativeTime() => EnRelativeTime();

  @override
  List<String>? ordinals() => ['st', 'nd', 'rd', 'th'];

  @override
  StartOfWeek startOfWeek() => strtOfWeek;
}

class EnRelativeTime extends RelativeTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'in';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'just now';
  @override
  String aboutAMinute(int minutes) => '1m';
  @override
  String minutes(int minutes) => '${minutes}m';
  @override
  String aboutAnHour(int minutes) => '1h';
  @override
  String hours(int hours) => '${hours}h';
  @override
  String aDay(int hours) => '1d';
  @override
  String days(int days) => '${days}d';
  @override
  String aboutAMonth(int days) => '1M';
  @override
  String months(int months) => '${months}M';
  @override
  String aboutAYear(int year) => '1Y';
  @override
  String years(int years) => '${years}Y';
  @override
  String wordSeparator() => ' ';
}
