import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cardNumber = prefs.getString('ff_cardNumber') ?? _cardNumber;
    });
    _safeInit(() {
      _cardHolderName = prefs.getString('ff_cardHolderName') ?? _cardHolderName;
    });
    _safeInit(() {
      _cardName = prefs.getString('ff_cardName') ?? _cardName;
    });
    _safeInit(() {
      _zipCode = prefs.getString('ff_zipCode') ?? _zipCode;
    });
    _safeInit(() {
      _recentSearches =
          prefs.getStringList('ff_recentSearches') ?? _recentSearches;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _cardNumber = '';
  String get cardNumber => _cardNumber;
  set cardNumber(String _value) {
    _cardNumber = _value;
    prefs.setString('ff_cardNumber', _value);
  }

  String _cardHolderName = '';
  String get cardHolderName => _cardHolderName;
  set cardHolderName(String _value) {
    _cardHolderName = _value;
    prefs.setString('ff_cardHolderName', _value);
  }

  String _cardName = '';
  String get cardName => _cardName;
  set cardName(String _value) {
    _cardName = _value;
    prefs.setString('ff_cardName', _value);
  }

  String _zipCode = '';
  String get zipCode => _zipCode;
  set zipCode(String _value) {
    _zipCode = _value;
    prefs.setString('ff_zipCode', _value);
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  bool _searchActive2 = false;
  bool get searchActive2 => _searchActive2;
  set searchActive2(bool _value) {
    _searchActive2 = _value;
  }

  List<String> _recentSearches = [];
  List<String> get recentSearches => _recentSearches;
  set recentSearches(List<String> _value) {
    _recentSearches = _value;
    prefs.setStringList('ff_recentSearches', _value);
  }

  void addToRecentSearches(String _value) {
    _recentSearches.add(_value);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void removeFromRecentSearches(String _value) {
    _recentSearches.remove(_value);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void removeAtIndexFromRecentSearches(int _index) {
    _recentSearches.removeAt(_index);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void updateRecentSearchesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _recentSearches[_index] = updateFn(_recentSearches[_index]);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void insertAtIndexInRecentSearches(int _index, String _value) {
    _recentSearches.insert(_index, _value);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
