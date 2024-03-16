import 'package:awesome_bottom_bar/tab_item.dart';
import 'package:flutter/material.dart';

List<TabItem> items = [
  const TabItem(
    icon: Icons.group,
    title: "groups",
  ),
  const TabItem(
    icon: Icons.chat,
    title: "chat",
  ),
  const TabItem(
    icon: Icons.store_mall_directory,
    title: "story",
  ),
  const TabItem(
    icon: Icons.call,
    title: "calls",
  ),
];

List<Tab> listoftabs = [
  const Tab(
    text: "chats",
  ),
  const Tab(
    text: "storys",
  ),
  const Tab(
    text: "calls",
  ),
];
