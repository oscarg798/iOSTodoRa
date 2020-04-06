# TodoRa iOS

![Platform](https://img.shields.io/badge/platform-iOS-blue.svg) ![Swift version](https://img.shields.io/badge/Swift-5.0%2B-orange.svg)


Basic KMPP project implementation of a **Todo list** app:

#### Common(Shared code):
- Gradle version (3.6.1)
- [Ktor-Client (HTTP Client)](https://ktor.io/clients/http-client/multiplatform.html)
- [Klock (Date & Time library)](https://github.com/korlibs/klock)
- [Coroutines](https://github.com/Kotlin/kotlinx.coroutines)
- [Serialization](https://github.com/Kotlin/kotlinx.serialization)

#### iOS:
Right now it's a pretty basic project, no specific libraries included yet

## :gear: Run project
There's a few steps you need to complete before running this project in XCode:
- You need to clone and run the [*ToDoRa* Android Project](https://github.com/oscarg798/TODORa).
- Once you do that, run the following command in the Android project root folder:
 ```./gradlew common:build```  => This will compile common module
- Clone this repo and modify the **Podfile** to include the route of the **podspecs** file from the common folder.
- Run ```pod install``` to generate and connect the library needed.
- Open the *.xcworspace* file.
- Run the project, if anything works OK the app will show a simple white screen, there isn't much to see yet. 
- If you see any problem related to Cocoapods, go to Cocapod's section below.

## :point_up: Wanna help
Submit a PR with comments/suggestions/more code

## :coffee: Cocoapods
For integration with cocoapods we use this guide:

[Kotlin-Native Cocoapods integration](https://github.com/JetBrains/kotlin-native/blob/master/COCOAPODS.md#cocoapods-integration)

To generate podspecs file run this command in Todora common project:

- ```./gradlew common:build```  => This will compile common module
- ```./gradlew common:podspec``` => This will create podspec file inside the common module

Open the _podspec_ file created and include a value for **spec.version**(if not it will throw an error), go to iOS project and create a Podfile an add this:

```
target 'Todora' do
  pod 'common', :path => '/Users/MyUserName/RestOfThePathtothePodSpecsFile'
end
```

Keep in mind that the "path" will change accordding to your project location, after this run ```pod install``` in the root of your iOS project, if all goes well, open the .xcworkspace file and run the project.