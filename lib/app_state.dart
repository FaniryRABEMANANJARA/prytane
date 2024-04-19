import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
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
    _safeInit(() {
      _recentSearchesevenement =
          prefs.getStringList('ff_recentSearchesevenement') ??
              _recentSearchesevenement;
    });
    _safeInit(() {
      _recentSearchesannonce =
          prefs.getStringList('ff_recentSearchesannonce') ??
              _recentSearchesannonce;
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

  List<String> _recentSearchesevenement = [];
  List<String> get recentSearchesevenement => _recentSearchesevenement;
  set recentSearchesevenement(List<String> _value) {
    _recentSearchesevenement = _value;
    prefs.setStringList('ff_recentSearchesevenement', _value);
  }

  void addToRecentSearchesevenement(String _value) {
    _recentSearchesevenement.add(_value);
    prefs.setStringList('ff_recentSearchesevenement', _recentSearchesevenement);
  }

  void removeFromRecentSearchesevenement(String _value) {
    _recentSearchesevenement.remove(_value);
    prefs.setStringList('ff_recentSearchesevenement', _recentSearchesevenement);
  }

  void removeAtIndexFromRecentSearchesevenement(int _index) {
    _recentSearchesevenement.removeAt(_index);
    prefs.setStringList('ff_recentSearchesevenement', _recentSearchesevenement);
  }

  void updateRecentSearchesevenementAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _recentSearchesevenement[_index] =
        updateFn(_recentSearchesevenement[_index]);
    prefs.setStringList('ff_recentSearchesevenement', _recentSearchesevenement);
  }

  void insertAtIndexInRecentSearchesevenement(int _index, String _value) {
    _recentSearchesevenement.insert(_index, _value);
    prefs.setStringList('ff_recentSearchesevenement', _recentSearchesevenement);
  }

  bool _searchActiveEvenement = false;
  bool get searchActiveEvenement => _searchActiveEvenement;
  set searchActiveEvenement(bool _value) {
    _searchActiveEvenement = _value;
  }

  bool _searchActiveEvenement2 = false;
  bool get searchActiveEvenement2 => _searchActiveEvenement2;
  set searchActiveEvenement2(bool _value) {
    _searchActiveEvenement2 = _value;
  }

  bool _searchActiveannonce = false;
  bool get searchActiveannonce => _searchActiveannonce;
  set searchActiveannonce(bool _value) {
    _searchActiveannonce = _value;
  }

  bool _searchActiveannonce2 = false;
  bool get searchActiveannonce2 => _searchActiveannonce2;
  set searchActiveannonce2(bool _value) {
    _searchActiveannonce2 = _value;
  }

  List<String> _recentSearchesannonce = [];
  List<String> get recentSearchesannonce => _recentSearchesannonce;
  set recentSearchesannonce(List<String> _value) {
    _recentSearchesannonce = _value;
    prefs.setStringList('ff_recentSearchesannonce', _value);
  }

  void addToRecentSearchesannonce(String _value) {
    _recentSearchesannonce.add(_value);
    prefs.setStringList('ff_recentSearchesannonce', _recentSearchesannonce);
  }

  void removeFromRecentSearchesannonce(String _value) {
    _recentSearchesannonce.remove(_value);
    prefs.setStringList('ff_recentSearchesannonce', _recentSearchesannonce);
  }

  void removeAtIndexFromRecentSearchesannonce(int _index) {
    _recentSearchesannonce.removeAt(_index);
    prefs.setStringList('ff_recentSearchesannonce', _recentSearchesannonce);
  }

  void updateRecentSearchesannonceAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _recentSearchesannonce[_index] = updateFn(_recentSearchesannonce[_index]);
    prefs.setStringList('ff_recentSearchesannonce', _recentSearchesannonce);
  }

  void insertAtIndexInRecentSearchesannonce(int _index, String _value) {
    _recentSearchesannonce.insert(_index, _value);
    prefs.setStringList('ff_recentSearchesannonce', _recentSearchesannonce);
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
