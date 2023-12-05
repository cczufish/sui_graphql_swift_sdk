## 要完成的查询

![示例图片](https://github.com/cczufish/sui_graphql_swift_sdk/blob/main/images/WechatIMG179.jpg)


## 配置apollo-codegen-config.json

```
./apollo-ios-cli init --schema-namespace SUIAPI --module-type swiftPackageManager
./apollo-ios-cli fetch-schema
./apollo-ios-cli generate

```


```
{
  "schemaNamespace" : "SUIAPI",
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
      "path" : "./schema.json",
      "moduleType" : {
        "swiftPackageManager" : {
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

## Add the generated SPM package to your project

Once the code generation is complete, we need to add the generated Swift Package Manager (SPM) package to our Xcode project. Follow these steps:
In Xcode, go to File > Add Packages….
In the Add Package dialog, select Add Local….
Navigate to the SUIAPI folder in the file dialog and click Add Package.
The SUIAPI package will now be included in your project.
Next, select your project in Xcode, then select the SUIAPI GraphQL target, and navigate to Build Phases.
Under the Link Binary With Libraries section, click the + sign.
In the dialog that appears, select the SUIAPI library and click Add Package....
Now the generated SPM package is added to your Xcode project, allowing you to use the generated code in your app.

## Execute your first query

```
import Foundation
import Apollo

class Network {
    
  static let shared = Network()

  private init() {}

  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://graphql-beta.mainnet.sui.io/")!)
    
    
}
```

```
import Foundation
import Apollo
import SUIAPI

@MainActor
final class StationListViewModel: ObservableObject {
    init() {
        Network.shared.apollo.fetch(query: AddressQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
    }
}
```

```

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = StationListViewModel()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

```


![示例图片](https://github.com/cczufish/sui_graphql_swift_sdk/blob/main/images/WechatIMG180.jpg)


