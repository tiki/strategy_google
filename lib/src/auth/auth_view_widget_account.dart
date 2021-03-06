/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import 'auth_service.dart';

class AuthViewWidgetAccount extends StatelessWidget {
  final double _rowPadding = 16;
  final double _logoSize = 29;
  final double _rowGap = 7;

  const AuthViewWidgetAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthService service = Provider.of<AuthService>(context);
    return LayoutBuilder(builder: (context, constraints) {
      double cardWidth = constraints.maxWidth;
      return Container(
          padding: EdgeInsets.all(SizeProvider.instance.size(_rowPadding)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: SizeProvider.instance.size(_logoSize),
              child: ImgProvider.googleGmailRound,
            ),
            Container(
                padding:
                    EdgeInsets.only(left: SizeProvider.instance.size(_rowGap)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeProvider.instance.size(4)),
                          child: Text("Gmail",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: ColorProvider.greyFive,
                                  height: 1,
                                  fontSize: SizeProvider.instance.text(14)))),
                      SizedBox(
                          width: SizeProvider.instance.size(cardWidth -
                              _logoSize -
                              (2 * _rowPadding) -
                              _rowGap),
                          child: Text(service.model.email!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: ColorProvider.tikiBlue,
                                  height: 1,
                                  fontSize: SizeProvider.instance.text(18))))
                    ]))
          ]));
    });
  }
}
