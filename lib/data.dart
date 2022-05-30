import 'package:flutter/material.dart';

class SettingElements {
  String elements;
  int index;

  SettingElements({required this.elements, required this.index});
}

List<SettingElements> elements = [
  SettingElements(elements: 'Picture', index: 1),
  SettingElements(elements: 'Passeword', index: 2),
  SettingElements(elements: 'Username', index: 3),
  SettingElements(elements: 'Volume', index: 4),
  SettingElements(elements: 'Brightness', index: 5),
  SettingElements(elements: 'Location', index: 6),
  SettingElements(elements: 'Notifications', index: 7),
  SettingElements(elements: 'Time', index: 8),
  SettingElements(elements: 'Screentime', index: 9),
  SettingElements(elements: 'Contacts', index: 10),
  SettingElements(elements: 'Logs', index: 11),
  SettingElements(elements: 'Apps', index: 12),
  SettingElements(elements: 'Help', index: 13),
  SettingElements(elements: 'Other', index: 14),
];

