// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings to `gen/headers/**.h`
class OkxSDK {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  OkxSDK(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  OkxSDK.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ffi.Char> GenerateMnemonic() {
    return _GenerateMnemonic();
  }

  late final _GenerateMnemonicPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'GenerateMnemonic');
  late final _GenerateMnemonic =
      _GenerateMnemonicPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  ffi.Pointer<ffi.Char> GetDerivedPath(
    int index,
  ) {
    return _GetDerivedPath(
      index,
    );
  }

  late final _GetDerivedPathPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function(GoInt)>>(
          'GetDerivedPath');
  late final _GetDerivedPath =
      _GetDerivedPathPtr.asFunction<ffi.Pointer<ffi.Char> Function(int)>();

  GetDerivedKey_return GetDerivedKey(
    ffi.Pointer<ffi.Char> mnemonic,
    ffi.Pointer<ffi.Char> hdPath,
  ) {
    return _GetDerivedKey(
      mnemonic,
      hdPath,
    );
  }

  late final _GetDerivedKeyPtr = _lookup<
      ffi.NativeFunction<
          GetDerivedKey_return Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>>('GetDerivedKey');
  late final _GetDerivedKey = _GetDerivedKeyPtr.asFunction<
      GetDerivedKey_return Function(
          ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<ffi.Char> GetNewAddress(
    ffi.Pointer<ffi.Char> prvHex,
  ) {
    return _GetNewAddress(
      prvHex,
    );
  }

  late final _GetNewAddressPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Char>)>>('GetNewAddress');
  late final _GetNewAddress = _GetNewAddressPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>();

  int IsValidAddress(
    ffi.Pointer<ffi.Char> address,
  ) {
    return _IsValidAddress(
      address,
    );
  }

  late final _IsValidAddressPtr =
      _lookup<ffi.NativeFunction<GoUint8 Function(ffi.Pointer<ffi.Char>)>>(
          'IsValidAddress');
  late final _IsValidAddress =
      _IsValidAddressPtr.asFunction<int Function(ffi.Pointer<ffi.Char>)>();
}

final class __mbstate_t extends ffi.Union {
  @ffi.Array.multi([128])
  external ffi.Array<ffi.Char> __mbstate8;

  @ffi.LongLong()
  external int _mbstateL;
}

final class __darwin_pthread_handler_rec extends ffi.Struct {
  external ffi
      .Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>
      __routine;

  external ffi.Pointer<ffi.Void> __arg;

  external ffi.Pointer<__darwin_pthread_handler_rec> __next;
}

final class _opaque_pthread_attr_t extends ffi.Struct {
  @ffi.Long()
  external int __sig;

  @ffi.Array.multi([56])
  external ffi.Array<ffi.Char> __opaque;
}

final class _opaque_pthread_cond_t extends ffi.Struct {
  @ffi.Long()
  external int __sig;

  @ffi.Array.multi([40])
  external ffi.Array<ffi.Char> __opaque;
}

final class _opaque_pthread_condattr_t extends ffi.Struct {
  @ffi.Long()
  external int __sig;

  @ffi.Array.multi([8])
  external ffi.Array<ffi.Char> __opaque;
}

final class _opaque_pthread_mutex_t extends ffi.Struct {
  @ffi.Long()
  external int __sig;

  @ffi.Array.multi([56])
  external ffi.Array<ffi.Char> __opaque;
}

final class _opaque_pthread_mutexattr_t extends ffi.Struct {
  @ffi.Long()
  external int __sig;

  @ffi.Array.multi([8])
  external ffi.Array<ffi.Char> __opaque;
}

final class _opaque_pthread_once_t extends ffi.Struct {
  @ffi.Long()
  external int __sig;

  @ffi.Array.multi([8])
  external ffi.Array<ffi.Char> __opaque;
}

final class _opaque_pthread_rwlock_t extends ffi.Struct {
  @ffi.Long()
  external int __sig;

  @ffi.Array.multi([192])
  external ffi.Array<ffi.Char> __opaque;
}

final class _opaque_pthread_rwlockattr_t extends ffi.Struct {
  @ffi.Long()
  external int __sig;

  @ffi.Array.multi([16])
  external ffi.Array<ffi.Char> __opaque;
}

final class _opaque_pthread_t extends ffi.Struct {
  @ffi.Long()
  external int __sig;

  external ffi.Pointer<__darwin_pthread_handler_rec> __cleanup_stack;

  @ffi.Array.multi([8176])
  external ffi.Array<ffi.Char> __opaque;
}

final class _GoString_ extends ffi.Struct {
  external ffi.Pointer<ffi.Char> p;

  @ptrdiff_t()
  external int n;
}

typedef ptrdiff_t = __darwin_ptrdiff_t;
typedef __darwin_ptrdiff_t = ffi.Long;

final class GoInterface extends ffi.Struct {
  external ffi.Pointer<ffi.Void> t;

  external ffi.Pointer<ffi.Void> v;
}

final class GoSlice extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @GoInt()
  external int len;

  @GoInt()
  external int cap;
}

typedef GoInt = GoInt64;
typedef GoInt64 = ffi.LongLong;

final class GetDerivedKey_return extends ffi.Struct {
  external ffi.Pointer<ffi.Char> r0;

  external ffi.Pointer<ffi.Char> r1;
}

typedef GoUint8 = ffi.UnsignedChar;

const int __DARWIN_ONLY_64_BIT_INO_T = 1;

const int __DARWIN_ONLY_UNIX_CONFORMANCE = 1;

const int __DARWIN_ONLY_VERS_1050 = 1;

const int __DARWIN_UNIX03 = 1;

const int __DARWIN_64_BIT_INO_T = 1;

const int __DARWIN_VERS_1050 = 1;

const int __DARWIN_NON_CANCELABLE = 0;

const String __DARWIN_SUF_EXTSN = '\$DARWIN_EXTSN';

const int __DARWIN_C_ANSI = 4096;

const int __DARWIN_C_FULL = 900000;

const int __DARWIN_C_LEVEL = 900000;

const int __STDC_WANT_LIB_EXT1__ = 1;

const int __DARWIN_NO_LONG_LONG = 0;

const int _DARWIN_FEATURE_64_BIT_INODE = 1;

const int _DARWIN_FEATURE_ONLY_64_BIT_INODE = 1;

const int _DARWIN_FEATURE_ONLY_VERS_1050 = 1;

const int _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = 1;

const int _DARWIN_FEATURE_UNIX_CONFORMANCE = 3;

const int __has_ptrcheck = 0;

const int __DARWIN_NULL = 0;

const int __PTHREAD_SIZE__ = 8176;

const int __PTHREAD_ATTR_SIZE__ = 56;

const int __PTHREAD_MUTEXATTR_SIZE__ = 8;

const int __PTHREAD_MUTEX_SIZE__ = 56;

const int __PTHREAD_CONDATTR_SIZE__ = 8;

const int __PTHREAD_COND_SIZE__ = 40;

const int __PTHREAD_ONCE_SIZE__ = 8;

const int __PTHREAD_RWLOCK_SIZE__ = 192;

const int __PTHREAD_RWLOCKATTR_SIZE__ = 16;

const int __DARWIN_WCHAR_MAX = 2147483647;

const int __DARWIN_WCHAR_MIN = -2147483648;

const int __DARWIN_WEOF = -1;

const int _FORTIFY_SOURCE = 2;

const int NULL = 0;

const int USER_ADDR_NULL = 0;
