import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DocumentReference> _pedidosTemp = [];
  List<DocumentReference> get pedidosTemp => _pedidosTemp;
  set pedidosTemp(List<DocumentReference> _value) {
    _pedidosTemp = _value;
  }

  void addToPedidosTemp(DocumentReference _value) {
    _pedidosTemp.add(_value);
  }

  void removeFromPedidosTemp(DocumentReference _value) {
    _pedidosTemp.remove(_value);
  }

  void removeAtIndexFromPedidosTemp(int _index) {
    _pedidosTemp.removeAt(_index);
  }

  List<String> _TarIPs = [
    '23ngBTUZ71KD0YCADA3Y',
    '6VnrLkll8UKOpR1s7ORp',
    'Cyazb0mbiwWEZg1RNaRZ'
  ];
  List<String> get TarIPs => _TarIPs;
  set TarIPs(List<String> _value) {
    _TarIPs = _value;
  }

  void addToTarIPs(String _value) {
    _TarIPs.add(_value);
  }

  void removeFromTarIPs(String _value) {
    _TarIPs.remove(_value);
  }

  void removeAtIndexFromTarIPs(int _index) {
    _TarIPs.removeAt(_index);
  }

  DocumentReference? _servicoBaseIdVar =
      FirebaseFirestore.instance.doc('/servicosBase/c7lZ7K6EUPwVfez3d88i');
  DocumentReference? get servicoBaseIdVar => _servicoBaseIdVar;
  set servicoBaseIdVar(DocumentReference? _value) {
    _servicoBaseIdVar = _value;
  }

  bool _flagLogin = true;
  bool get flagLogin => _flagLogin;
  set flagLogin(bool _value) {
    _flagLogin = _value;
  }

  bool _ListaTarBaseTodas = true;
  bool get ListaTarBaseTodas => _ListaTarBaseTodas;
  set ListaTarBaseTodas(bool _value) {
    _ListaTarBaseTodas = _value;
  }

  bool _ListaTarBaseFiltro = true;
  bool get ListaTarBaseFiltro => _ListaTarBaseFiltro;
  set ListaTarBaseFiltro(bool _value) {
    _ListaTarBaseFiltro = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
