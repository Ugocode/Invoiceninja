// Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

// Project imports:
import 'package:invoiceninja_flutter/redux/dashboard/dashboard_state.dart';
import 'package:invoiceninja_flutter/utils/strings.dart';

part 'dashboard_model.g.dart';

class DateRange extends EnumClass {
  const DateRange._(String name) : super(name);

  static Serializer<DateRange> get serializer => _$dateRangeSerializer;

  static const DateRange last7Days = _$last7Days;
  static const DateRange last30Days = _$last30Days;
  static const DateRange last365Days = _$last365Days;
  static const DateRange thisMonth = _$thisMonth;
  static const DateRange lastMonth = _$lastMonth;
  static const DateRange thisQuarter = _$thisQuarter;
  static const DateRange lastQuarter = _$lastQuarter;
  static const DateRange thisYear = _$thisYear;
  static const DateRange lastYear = _$lastYear;
  static const DateRange custom = _$custom;

  static BuiltSet<DateRange> get values => _$values;

  String get snakeCase => toSnakeCase(toString());

  static DateRange valueOf(String name) => _$valueOf(name);
}

class DateRangeComparison extends EnumClass {
  const DateRangeComparison._(String name) : super(name);

  static Serializer<DateRangeComparison> get serializer =>
      _$dateRangeComparisonSerializer;

  static const DateRangeComparison previousPeriod = _$previousPeriod;
  static const DateRangeComparison previousYear = _$previousYear;
  static const DateRangeComparison customRange = _$customRange;

  static BuiltSet<DateRangeComparison> get values => _$comparisonValues;

  static DateRangeComparison valueOf(String name) => _$comparisonValueOf(name);
}

class DashboardSettings {
  DateRange dateRange;
  String startDate;
  String endDate;
  bool enableComparison;
  DateRangeComparison compareDateRange;
  String compareStartDate;
  String compareEndDate;

  static DashboardSettings fromState(DashboardUIState state) {
    final settings = state.settings;
    return DashboardSettings()
      ..dateRange = settings.dateRange
      ..startDate = settings.customStartDate
      ..endDate = settings.customEndDate
      ..enableComparison = settings.enableComparison
      ..compareDateRange = settings.compareDateRange
      ..compareStartDate = settings.compareCustomStartDate
      ..compareEndDate = settings.compareCustomEndDate;
  }
}
