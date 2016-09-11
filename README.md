# NetworkKitHelper for iOS
-------
## Installions
-------
##### Cocoapods    
```
    pod 'NetworkKitHelper', :git => "https://github.com/tin612/NetworkHelperKit.git"
```
## How to use it
All the method in NetworkHelperKit class has 2 callback method, a successBlock and a failureBlock  
For successBlock, it will return a BaseModel with Decoable protocol of Gloss to map your JSON data to code. You can override a BaseModel class and add more properties to map.  
For failureBlock, it will return a HTTP Status Code and a BaseErrorModel with Decoable protocol of Gloss to map your JSON data to code. You can override a BaseErrorModel class and add more properties to see more details in errors message of your API calls.
