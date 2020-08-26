//
//  AppDelegate.swift
//  MyApp
//
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow? // これを追加
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        application.setMinimumBackgroundFetchInterval(UIApplication.backgroundFetchIntervalMinimum)

        FirebaseApp.configure()
        return true
    }

    // MARK: UISceneSession Lifecycle


    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        //バックグラウンドで実行する処理

        //適切なものを渡します → 新規データ: .newData 失敗: .failed データなし: .noData
        completionHandler(.newData)
    }

}

