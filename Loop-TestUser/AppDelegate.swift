//
//  AppDelegate.swift
//  Loop-TestUser
//
//  Created by Phil Price on 5/26/16.
//  Copyright © 2016 Microsoft. All rights reserved.
//

import UIKit
import LoopSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, LoopSDKListener {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        var appID = "";
        var appToken = "";
        
        var testUserId = ""
        var testUserDeviceId = ""
        
        var keys: NSDictionary?
        
        if let path = NSBundle.mainBundle().pathForResource("Info", ofType: "plist") {
            keys = NSDictionary(contentsOfFile: path)
        }
        
        if let dict = keys {
            appID = (dict["LOOP_APP_ID_PROP"] as? String)!
            appToken = (dict["LOOP_APP_TOKEN_PROP"] as? String)!
            
            testUserId = (dict["LOOP_USER_ID_PROP"] as? String)!
            testUserDeviceId = (dict["LOOP_DEVICE_ID_PROP"] as? String)!
        }
        
        LoopSDK.setUserID(testUserId);
        LoopSDK.setDeviceID(testUserDeviceId);
        LoopSDK.initialize(self, appID: appID, token: appToken)
        print ("Loop SDK initialization started")
        
        return true
    }
    
    func onLoopInitialized() {
        print("Loop SDK initialization completed")
    }
    
    func onLoopInitializeError(err: String) {
        print("Loop SDK initialization error: \(err)");
    }
    
}

