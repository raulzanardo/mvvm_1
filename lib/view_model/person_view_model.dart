import 'package:flutter/material.dart';

import '../model/person.dart';

class PersonViewModel extends ChangeNotifier {
  final List<Person> _persons = [];

  List<Person> get persons => _persons;

  void addPerson(Person person) {
    _persons.add(person);
    notifyListeners();
  }

  void removePerson(Person person) {
    _persons.remove(person);
    notifyListeners();
  }

  void updatePerson(Person oldPerson, Person newPerson) {
    final index = _persons.indexOf(oldPerson);
    _persons[index] = newPerson;
    notifyListeners();
  }
}
