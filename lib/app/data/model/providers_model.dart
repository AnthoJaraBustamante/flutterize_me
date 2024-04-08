import 'package:flutter/material.dart';

class ProviderModel {
  final String avatar;
  final double score;
  final String title;
  final String description;
  final List<Services> services;

  ProviderModel({required this.avatar, required this.score, required this.title, required this.description, required this.services});
}

class Services {
  final String title;
  final IconData icon;

  Services({required this.title, required this.icon});
}
