#!/bin/bash

# 定义目录
BASE_DIR=$(cd "$(dirname "$0")/.." && pwd) # 项目根目录
PROTO_DIR="$BASE_DIR/proto"               # proto 文件目录
OUTPUT_DIR="$BASE_DIR/generated"      # 生成代码的输出目录

# 检查 proto 目录是否存在
if [ ! -d "$PROTO_DIR" ]; then
  echo "Error: proto directory does not exist: $PROTO_DIR"
  exit 1
fi

# 清空输出目录（防止冗余文件残留）
if [ -d "$OUTPUT_DIR" ]; then
  rm -rf "$OUTPUT_DIR"
fi

# 重新创建输出目录
mkdir -p "$OUTPUT_DIR"

# 编译 Go 代码
protoc --proto_path="$PROTO_DIR" \
  --go_out="$OUTPUT_DIR" \
  --go-grpc_out="$OUTPUT_DIR" \
  "$PROTO_DIR"/*.proto

echo "Proto files compiled successfully!"