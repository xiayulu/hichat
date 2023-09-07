// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hichat/src/settings/color.dart';
import 'package:hichat/src/shared/appbar.dart';
import 'package:hichat/src/widgets/gradient_icon.dart';
import 'package:hichat/src/widgets/list.dart';
import 'package:hichat/src/widgets/list_item.dart';

class DisCoverPage extends StatelessWidget {
  const DisCoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: buildAppbar("Discover"),
      body: CustomScrollView(slivers: [
        _buildSingleItem(
          TiListItem(
              leadingIcon: GradientIcon(
                icon: FontAwesomeIcons.circleRadiation,
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    AppColors.green,
                    AppColors.blue,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              title: "Moments"),
        ),
        _buildSliverGap(12),
        TiList(
          items: [
            TiListItem(
                leadingIcon: Icon(
                  FontAwesomeIcons.circleNodes,
                  color: AppColors.orange,
                ),
                title: "Channels"),
            TiListItem(
                leadingIcon: Icon(
                  FontAwesomeIcons.microphoneLines,
                  color: AppColors.orange,
                ),
                title: "Live Stream"),
          ],
        ),
        _buildSliverGap(12),
        TiList(
          items: [
            TiListItem(
                leadingIcon: Icon(
                  FontAwesomeIcons.qrcode,
                  color: AppColors.blue,
                ),
                title: "Scan"),
            TiListItem(
                leadingIcon: Icon(
                  FontAwesomeIcons.creativeCommonsShare,
                  color: AppColors.blue,
                ),
                title: "Shake"),
          ],
        ),
        _buildSliverGap(12),
        TiList(
          items: [
            TiListItem(
                leadingIcon: Icon(
                  FontAwesomeIcons.fan,
                  color: AppColors.orange,
                ),
                title: "Top Stories"),
            TiListItem(
                leadingIcon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.red,
                ),
                title: "Live Stream"),
          ],
        ),
        _buildSliverGap(12),
        _buildSingleItem(
          TiListItem(
            leadingIcon: Icon(
              FontAwesomeIcons.locationDot,
              color: AppColors.blue,
            ),
            title: "Nearby",
          ),
        ),
        _buildSliverGap(12),
        _buildSingleItem(
          TiListItem(
              leadingIcon: GradientIcon(
                icon: FontAwesomeIcons.arrowsToDot,
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    AppColors.green,
                    AppColors.blue,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              title: "Games"),
        ),
        _buildSliverGap(12),
        _buildSingleItem(
          TiListItem(
            leadingIcon: Icon(
              FontAwesomeIcons.microchip,
              color: AppColors.blue,
            ),
            title: "Mini Programs",
          ),
        ),
        _buildSliverGap(12),
      ]),
    );
  }

  Widget _buildSingleItem(Widget child) {
    return SliverToBoxAdapter(
      child: child,
    );
  }

  Widget _buildSliverGap(double gap) {
    return SliverPadding(
      padding: EdgeInsets.only(top: gap),
    );
  }
}
