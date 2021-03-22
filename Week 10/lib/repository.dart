import 'package:flutter_app/state_model.dart';

class Repository {
  // http://locationsng-api.herokuapp.com/api/v1/lgas
  // test() => _nigeria.map((map) => StateModel.fromJson(map));
  List<Map> getAll() => _nigeria;

  getLocalByState(String state) => _nigeria
      .map((map) => StateModel.fromJson(map))
      .where((item) => item.state == state)
      .map((item) => item.lgas)
      .expand((i) => i)
      .toList();
  // _nigeria.where((list) => list['state'] == state);
  // .map((item) => item['lgas'])
  // .expand((i) => i)
  // .toList();

  List<String> getStates() => _nigeria
      .map((map) => StateModel.fromJson(map))
      .map((item) => item.state)
      .toList();
  // _nigeria.map((item) => item['state'].toString()).toList();

  List _nigeria = [
    {
      "state": "Andhra Pradesh",
      "alias": "Andhra Pradesh",
      "lgas": [
      ]
    },
    {
      "state": "Arunachal Pradesh",
      "alias": "Arunachal Pradesh",
      "lgas": [
      ]
    },
    {
      "state": "Assam",
      "alias": "Assam",
      "lgas": [
      ]
    },
    {
      "state": "Bihar",
      "alias": "Bihar",
      "lgas": [
      ]
    },
    {
      "state": "Chhattisgarh",
      "alias": "Chhattisgarh",
      "lgas": [
      ]
    },
    {
      "state": "Goa",
      "alias": "Goa",
      "lgas": [
      ]
    },
    {
      "state": "Gujarat",
      "alias": "Gujarat",
      "lgas": [
        "Ahmedabad",
        "Amreli",
        "Anand",
        "Aravalli",
        "Banaskantha",
        "Bharuch",
        "Bhavnagar",
        "Botad",
        "Dahod",
        "Devbhoomi Dwarka",
        "Gandhinagar",
        "Gir Somnath",
        "Jamnagar"
      ]
    },
    {
      "state": "Haryana",
      "alias": "Haryana",
      "lgas": [
      ]
    },
    {
      "state": "Himachal Pradesh",
      "alias": "Himachal Pradesh",
      "lgas": [
      ]
    },
    {
      "state": "Jharkhand",
      "alias": "Jharkhand",
      "lgas": [
      ]
    },
    {
      "state": "Karnataka",
      "alias": "Karnataka",
      "lgas": [
      ]
    },
    {
      "state": "Kerala",
      "alias": "Kerala",
      "lgas": [
      ]
    },
  ];
}