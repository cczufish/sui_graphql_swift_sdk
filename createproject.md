# 创建 Xcode 项目sui-graphql-swift

启动 Xcode，然后在“Welcome to Xcode”(欢迎使用 Xcode) 窗口中点按“Create a new Xcode project”(新建 Xcode 项目)。
或选取“File”(文件) >“New”(新建) >“Project”(项目)。在出现的表单中，选择目标操作系统或平台并在“Application”(应用程序)。
下选择一个模板。在接下来的表单中，填写表单并选取各个选项来配置你的项目。  

# 为项目集成Apollo GraphQL

1. Add Apollo to your Podfile

```
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '17.0'

use_frameworks!
install! 'cocoapods', :disable_input_output_paths => true
# 消除警告
inhibit_all_warnings!

target 'sui-graphql-swift' do
pod "Apollo"
end

```

2. Run pod install


# Codegen Configuration

[Apollo官方文档](https://www.apollographql.com/docs/ios/get-started/)

https://www.apollographql.com/docs/ios/code-generation/codegen-cli/#fetch-schema

1. 生成apollo-codegen-config.json 文件
   
打开终端cd到当前的项目目录，执行apollo-ios-cli init
```
./Pods/Apollo/apollo-ios-cli init --schema-namespace ApolloSchema --target-name sui-graphql-swift --module-type embeddedInTarget

```
执行完后当前目录会生成一个 apollo-codegen-config.json 文件
```

{
  "schemaNamespace" : "ApolloSchema",
  "input" : {
    "operationSearchPaths" : [
      "**/*.graphql"
    ],
    "schemaSearchPaths" : [
      "**/*.graphqls"
    ]
  },
  "output" : {
    "testMocks" : {
      "none" : {
      }
    },
    "schemaTypes" : {
      "path" : "./ApolloSchema",
      "moduleType" : {
        "embeddedInTarget" : {
          "name" : "sui-graphql-swift"
        }
      }
    },
    "operations" : {
      "inSchemaModule" : {
      }
    }
  },
  "schemaDownloadConfiguration": {
    "downloadMethod": {
          "introspection": {
              "endpointURL": "https://graphql-beta.mainnet.sui.io/",
              "httpMethod": {
                  "POST": {}
              },
              "includeDeprecatedInputValues": false,
              "outputFormat": "SDL"
          }
      },
      "downloadTimeout": 60,
      "headers": [],
      "outputPath": "./graphql/schema.graphqls"
  }
}
```
schemaDownloadConfiguration部分需要手动添加到json文件

2.  Download your server’s schema
终端执行apollo-ios-cli fetch-schema命令拉取schema.graphqls，文件会生成在"./graphql/schema.graphqls"目录
```
./Pods/Apollo/apollo-ios-cli fetch-schema
```

3. Add your GraphQL querys to Xcode
在项目中新建.graphql文件，添加你的查询语句
```
# Get the address' balance and its coins' id and type
query address {
  address(
    address: "0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9"
  ) {
    location
    balance {
      coinType {
        repr
      }
      coinObjectCount
      totalBalance
    }
    coinConnection {
      nodes {
        asMoveObject {
          contents {
            type {
              repr
            }
          }
        }

      }
    }
  }
}

```
4. Code Generation
终端执行apollo-ios-cli generate命令生成swift文件
```
 ./Pods/Apollo/apollo-ios-cli generate
```
5. Add generated files to your target
添加生成的文件到你的项目工程里，就可以愉快的调用了。




