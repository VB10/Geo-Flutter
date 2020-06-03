import UIKit
import Flutter
//import workmanager
import background_locator



func registerPlugins(registry: FlutterPluginRegistry) -> () {
    if (!registry.hasPlugin("BackgroundLocatorPlugin")) {
        GeneratedPluginRegistrant.register(with: registry)
    }
}
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
//    static func registerPlugins(with registry: FlutterPluginRegistry) {
//            GeneratedPluginRegistrant.register(with: registry)
//       }
//    18

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)
        BackgroundLocatorPlugin.setPluginRegistrantCallback(registerPlugins)
//        AppDelegate.registerPlugins(with: self) // Register the app's plugins in the context of a normal run
//
//            WorkmanagerPlugin.setPluginRegistrantCallback { registry in
//                AppDelegate.registerPlugins(with: registry)
//            }

//        UIApplication.shared.setMinimumBackgroundFetchInterval(60*15)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
