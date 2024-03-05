import "dart:ffi";

import "package:ffi/ffi.dart";

class Tuple<T extends NativeType> {
  final String str;
  final Pointer<T> ptr;

  Tuple(this.str, this.ptr);

  // 默认访问指针的值，无需 `tuple.str`
  @override
  String toString() => str;
}

class ffiUtils {
  /// 将一个字符串指针转为 dart 的字符串
  static Tuple<T> toDartString<T extends NativeType>(Pointer<T> ptr) {
    return Tuple(ptr.cast<Utf8>().toDartString(), ptr);
  }

  /// 释放指针
  static void freePtrs<T extends NativeType>(
    dynamic ptrs, [
    bool isDebug = false,
  ]) {
    ptrs = ptrs is List ? ptrs : [ptrs];
    ptrs.forEach((p) => calloc.free(p is Tuple ? p.ptr : p));

    if (isDebug) {
      print('========== ${ptrs.length} pointer is freed ==========');
    }
  }

  /// 将C语言的整型布尔转为 dart 真正的布尔
  static bool intToBool(int n) => n != 0;
}
