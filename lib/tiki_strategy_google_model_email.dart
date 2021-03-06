/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'tiki_strategy_google_model_sender.dart';

class TikiStrategyGoogleModelEmail {
  String? extMessageId;
  TikiStrategyGoogleModelSender? sender;
  DateTime? receivedDate;
  DateTime? openedDate;
  String? toEmail;
  String? subject;

  TikiStrategyGoogleModelEmail(
      {this.extMessageId,
      this.sender,
      this.receivedDate,
      this.openedDate,
      this.toEmail,
      this.subject});

  TikiStrategyGoogleModelEmail.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      extMessageId = json['ext_message_id'];
      sender = TikiStrategyGoogleModelSender.fromJson(json['sender']);
      toEmail = json['to_email'];
      if (json['received_date_epoch'] != null) {
        receivedDate =
            DateTime.fromMillisecondsSinceEpoch(json['received_date_epoch']);
      }
      if (json['opened_date_epoch'] != null) {
        openedDate =
            DateTime.fromMillisecondsSinceEpoch(json['opened_date_epoch']);
      }
      subject = json['subject'];
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'ext_message_id': extMessageId,
      'sender': sender?.toJson(),
      'received_date_epoch': receivedDate?.millisecondsSinceEpoch,
      'opened_date_epoch': openedDate?.millisecondsSinceEpoch,
      'to_email': toEmail,
      'subject': subject
    };
  }
}
