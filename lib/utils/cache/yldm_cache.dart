import 'package:shared_preferences/shared_preferences.dart';

class YldmCache {
  SharedPreferences? prefs;

  YldmCache._() {
    init();
  }

  static YldmCache? _instance;

  static YldmCache getInstance() {
    _instance ??= YldmCache._();
    return _instance!;
  }

  void init() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  static Future<YldmCache> preInit() async {
    if (_instance == null) {
      var prefs = await SharedPreferences.getInstance();
      _instance = YldmCache._pre(prefs);
    }
    return _instance!;
  }

  static _pre(SharedPreferences prefs) {
    _instance ??= YldmCache._();
    return _instance!;
  }

  setString(String key, String value) {
    prefs?.setString(key, value);
  }

  setInt(String key, int value) {
    prefs?.setInt(key, value);
  }

  setDouble(String key, double value) {
    prefs?.setDouble(key, value);
  }

  setBool(String key, bool value) {
    prefs?.setBool(key, value);
  }

  setStringList(String key, List<String> value) {
    prefs?.setStringList(key, value);
  }

  get<T>(String key) {
    var name = prefs?.get(key);
    if (name != null) {
      return name as T;
    }
    return null;
  }

  getKeys() {
    return prefs?.getKeys();
  }

  remove(String key) {
    prefs?.remove(key);
  }

  clear() {
    prefs?.clear();
  }

  containsKey(String key) {
    return prefs?.containsKey(key);
  }

  reload() {
    prefs?.reload();
  }
}
