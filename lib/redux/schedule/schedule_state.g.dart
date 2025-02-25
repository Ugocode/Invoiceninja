// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScheduleState> _$scheduleStateSerializer =
    new _$ScheduleStateSerializer();
Serializer<ScheduleUIState> _$scheduleUIStateSerializer =
    new _$ScheduleUIStateSerializer();

class _$ScheduleStateSerializer implements StructuredSerializer<ScheduleState> {
  @override
  final Iterable<Type> types = const [ScheduleState, _$ScheduleState];
  @override
  final String wireName = 'ScheduleState';

  @override
  Iterable<Object> serialize(Serializers serializers, ScheduleState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'map',
      serializers.serialize(object.map,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(ScheduleEntity)])),
      'list',
      serializers.serialize(object.list,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  ScheduleState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScheduleStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'map':
          result.map.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(ScheduleEntity)
              ])));
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ScheduleUIStateSerializer
    implements StructuredSerializer<ScheduleUIState> {
  @override
  final Iterable<Type> types = const [ScheduleUIState, _$ScheduleUIState];
  @override
  final String wireName = 'ScheduleUIState';

  @override
  Iterable<Object> serialize(Serializers serializers, ScheduleUIState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'listUIState',
      serializers.serialize(object.listUIState,
          specifiedType: const FullType(ListUIState)),
      'tabIndex',
      serializers.serialize(object.tabIndex,
          specifiedType: const FullType(int)),
    ];
    Object value;
    value = object.editing;
    if (value != null) {
      result
        ..add('editing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ScheduleEntity)));
    }
    value = object.selectedId;
    if (value != null) {
      result
        ..add('selectedId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.forceSelected;
    if (value != null) {
      result
        ..add('forceSelected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ScheduleUIState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScheduleUIStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'editing':
          result.editing.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScheduleEntity)) as ScheduleEntity);
          break;
        case 'listUIState':
          result.listUIState.replace(serializers.deserialize(value,
              specifiedType: const FullType(ListUIState)) as ListUIState);
          break;
        case 'selectedId':
          result.selectedId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'forceSelected':
          result.forceSelected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'tabIndex':
          result.tabIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ScheduleState extends ScheduleState {
  @override
  final BuiltMap<String, ScheduleEntity> map;
  @override
  final BuiltList<String> list;

  factory _$ScheduleState([void Function(ScheduleStateBuilder) updates]) =>
      (new ScheduleStateBuilder()..update(updates))._build();

  _$ScheduleState._({this.map, this.list}) : super._() {
    BuiltValueNullFieldError.checkNotNull(map, r'ScheduleState', 'map');
    BuiltValueNullFieldError.checkNotNull(list, r'ScheduleState', 'list');
  }

  @override
  ScheduleState rebuild(void Function(ScheduleStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleStateBuilder toBuilder() => new ScheduleStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleState && map == other.map && list == other.list;
  }

  int __hashCode;
  @override
  int get hashCode {
    if (__hashCode != null) return __hashCode;
    var _$hash = 0;
    _$hash = $jc(_$hash, map.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jf(_$hash);
    return __hashCode ??= _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduleState')
          ..add('map', map)
          ..add('list', list))
        .toString();
  }
}

class ScheduleStateBuilder
    implements Builder<ScheduleState, ScheduleStateBuilder> {
  _$ScheduleState _$v;

  MapBuilder<String, ScheduleEntity> _map;
  MapBuilder<String, ScheduleEntity> get map =>
      _$this._map ??= new MapBuilder<String, ScheduleEntity>();
  set map(MapBuilder<String, ScheduleEntity> map) => _$this._map = map;

  ListBuilder<String> _list;
  ListBuilder<String> get list => _$this._list ??= new ListBuilder<String>();
  set list(ListBuilder<String> list) => _$this._list = list;

  ScheduleStateBuilder();

  ScheduleStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _map = $v.map.toBuilder();
      _list = $v.list.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduleState;
  }

  @override
  void update(void Function(ScheduleStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduleState build() => _build();

  _$ScheduleState _build() {
    _$ScheduleState _$result;
    try {
      _$result =
          _$v ?? new _$ScheduleState._(map: map.build(), list: list.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduleState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ScheduleUIState extends ScheduleUIState {
  @override
  final ScheduleEntity editing;
  @override
  final ListUIState listUIState;
  @override
  final String selectedId;
  @override
  final bool forceSelected;
  @override
  final int tabIndex;
  @override
  final Completer<SelectableEntity> saveCompleter;
  @override
  final Completer<Null> cancelCompleter;

  factory _$ScheduleUIState([void Function(ScheduleUIStateBuilder) updates]) =>
      (new ScheduleUIStateBuilder()..update(updates))._build();

  _$ScheduleUIState._(
      {this.editing,
      this.listUIState,
      this.selectedId,
      this.forceSelected,
      this.tabIndex,
      this.saveCompleter,
      this.cancelCompleter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        listUIState, r'ScheduleUIState', 'listUIState');
    BuiltValueNullFieldError.checkNotNull(
        tabIndex, r'ScheduleUIState', 'tabIndex');
  }

  @override
  ScheduleUIState rebuild(void Function(ScheduleUIStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleUIStateBuilder toBuilder() =>
      new ScheduleUIStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleUIState &&
        editing == other.editing &&
        listUIState == other.listUIState &&
        selectedId == other.selectedId &&
        forceSelected == other.forceSelected &&
        tabIndex == other.tabIndex &&
        saveCompleter == other.saveCompleter &&
        cancelCompleter == other.cancelCompleter;
  }

  int __hashCode;
  @override
  int get hashCode {
    if (__hashCode != null) return __hashCode;
    var _$hash = 0;
    _$hash = $jc(_$hash, editing.hashCode);
    _$hash = $jc(_$hash, listUIState.hashCode);
    _$hash = $jc(_$hash, selectedId.hashCode);
    _$hash = $jc(_$hash, forceSelected.hashCode);
    _$hash = $jc(_$hash, tabIndex.hashCode);
    _$hash = $jc(_$hash, saveCompleter.hashCode);
    _$hash = $jc(_$hash, cancelCompleter.hashCode);
    _$hash = $jf(_$hash);
    return __hashCode ??= _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduleUIState')
          ..add('editing', editing)
          ..add('listUIState', listUIState)
          ..add('selectedId', selectedId)
          ..add('forceSelected', forceSelected)
          ..add('tabIndex', tabIndex)
          ..add('saveCompleter', saveCompleter)
          ..add('cancelCompleter', cancelCompleter))
        .toString();
  }
}

class ScheduleUIStateBuilder
    implements Builder<ScheduleUIState, ScheduleUIStateBuilder> {
  _$ScheduleUIState _$v;

  ScheduleEntityBuilder _editing;
  ScheduleEntityBuilder get editing =>
      _$this._editing ??= new ScheduleEntityBuilder();
  set editing(ScheduleEntityBuilder editing) => _$this._editing = editing;

  ListUIStateBuilder _listUIState;
  ListUIStateBuilder get listUIState =>
      _$this._listUIState ??= new ListUIStateBuilder();
  set listUIState(ListUIStateBuilder listUIState) =>
      _$this._listUIState = listUIState;

  String _selectedId;
  String get selectedId => _$this._selectedId;
  set selectedId(String selectedId) => _$this._selectedId = selectedId;

  bool _forceSelected;
  bool get forceSelected => _$this._forceSelected;
  set forceSelected(bool forceSelected) =>
      _$this._forceSelected = forceSelected;

  int _tabIndex;
  int get tabIndex => _$this._tabIndex;
  set tabIndex(int tabIndex) => _$this._tabIndex = tabIndex;

  Completer<SelectableEntity> _saveCompleter;
  Completer<SelectableEntity> get saveCompleter => _$this._saveCompleter;
  set saveCompleter(Completer<SelectableEntity> saveCompleter) =>
      _$this._saveCompleter = saveCompleter;

  Completer<Null> _cancelCompleter;
  Completer<Null> get cancelCompleter => _$this._cancelCompleter;
  set cancelCompleter(Completer<Null> cancelCompleter) =>
      _$this._cancelCompleter = cancelCompleter;

  ScheduleUIStateBuilder();

  ScheduleUIStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _editing = $v.editing?.toBuilder();
      _listUIState = $v.listUIState.toBuilder();
      _selectedId = $v.selectedId;
      _forceSelected = $v.forceSelected;
      _tabIndex = $v.tabIndex;
      _saveCompleter = $v.saveCompleter;
      _cancelCompleter = $v.cancelCompleter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleUIState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduleUIState;
  }

  @override
  void update(void Function(ScheduleUIStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduleUIState build() => _build();

  _$ScheduleUIState _build() {
    _$ScheduleUIState _$result;
    try {
      _$result = _$v ??
          new _$ScheduleUIState._(
              editing: _editing?.build(),
              listUIState: listUIState.build(),
              selectedId: selectedId,
              forceSelected: forceSelected,
              tabIndex: BuiltValueNullFieldError.checkNotNull(
                  tabIndex, r'ScheduleUIState', 'tabIndex'),
              saveCompleter: saveCompleter,
              cancelCompleter: cancelCompleter);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'editing';
        _editing?.build();
        _$failedField = 'listUIState';
        listUIState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScheduleUIState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
