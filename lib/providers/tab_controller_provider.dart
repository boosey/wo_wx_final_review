import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final tabControllerProvider = Provider.family<TabController, TickerProvider>(
    (ref, tickerProvider) => TabController(
          length: 2,
          vsync: tickerProvider,
        ));
