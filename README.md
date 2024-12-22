b2c-common-api/
├── proto/                     # 存放所有 proto 文件
│   ├── common.proto           # 通用响应结构及公共定义
│   ├── enums.proto            # 公共枚举类型
│   ├── errors.proto           # 公共错误定义
│   ├── validation.proto       # 通用字段验证规则
├── generated/                 # 存放编译生成的代码
│   ├── go/                    # Go 语言生成的代码
│   │   ├── common.pb.go
│   │   ├── enums.pb.go
│   │   ├── errors.pb.go
│   │   ├── validation.pb.go
│   ├── python/                # Python 语言生成的代码
│   ├── js/                    # JavaScript/TypeScript 生成的代码
├── docs/                      # 项目文档
│   ├── README.md              # 项目说明文档
│   ├── API_GUIDE.md           # 公共 API 使用指南
├── scripts/                   # 辅助脚本 (如 proto 编译脚本)
│   ├── compile.sh             # 编译 proto 文件的脚本
├── Makefile                   # 构建、测试和发布的 Makefile
├── go.mod                     # Go 模块定义文件
├── go.sum                     # Go 依赖锁定文件
└── LICENSE                    # 项目许可协议