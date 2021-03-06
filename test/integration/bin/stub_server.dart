import 'dart:io';

import 'package:_test/stub_lsp.dart';
import 'package:lsp/lsp.dart';
import 'package:json_rpc_2/json_rpc_2.dart';

void main() async {
  final server = Peer(lspChannel(stdin, stdout))
    ..registerLifecycleMethods({})
    ..listen();
  await server.done;
}
