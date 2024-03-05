# 一个 Dart 的 ffi 示例

通过 Go 编写 OKX 的 Wallet SDK，然后编译为 C 语言可执行文件，最后使用 Dart ffi 调用。

## 步骤

1. Go 编译

```bash
go build -buildmode=c-shared -o ../gen/headers/libokx.so main.go
```

2. Dart ffi 生成

运行

```bash
dart run ffigen
```

3. 把生成的 `gen/` 目录拖到 `lib` 中，已存在则替换，完成
