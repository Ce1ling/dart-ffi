import 'dart:ffi';

import "package:okx_demo/utils/ffi.dart";

import "./gen/ffigen_output/bindings.dart";

main() {
  final okxSdk = OkxSDK(DynamicLibrary.open('lib/gen/headers/libokx.so'));
  final mnemonic = ffiUtils.toDartString(okxSdk.GenerateMnemonic());
  final hdPath = ffiUtils.toDartString(okxSdk.GetDerivedPath(0));
  final keys = okxSdk.GetDerivedKey(mnemonic.ptr, hdPath.ptr);
  final privateKey = ffiUtils.toDartString(keys.r0);
  final publicKey = ffiUtils.toDartString(keys.r1);
  final addr = ffiUtils.toDartString(okxSdk.GetNewAddress(privateKey.ptr));
  final isValidAddr = ffiUtils.intToBool(okxSdk.IsValidAddress(addr.ptr));

  print('mnemonic: $mnemonic');
  print('derived path: $hdPath');
  print('private key: $privateKey');
  print('public key: $publicKey');
  print('address: $addr');
  print('is valid addr: $isValidAddr');

  ffiUtils.freePtrs([mnemonic, hdPath, privateKey], true);
}
