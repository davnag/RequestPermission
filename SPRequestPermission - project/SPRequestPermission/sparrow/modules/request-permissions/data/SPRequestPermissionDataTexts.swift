// The MIT License (MIT)
// Copyright © 2017 Ivan Vorobei (hello@ivanvorobei.by)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

struct SPRequestPermissionData {}

extension SPRequestPermissionData {
    
    struct texts {
        static func title() -> String {
            return NSLocalizedString("SPRequestPermission.Title", comment: "")
        }
        
        static func subtitile() -> String {
            return NSLocalizedString("SPRequestPermission.Subtitle", comment: "")
        }
        
        static func advice() -> String {
            return NSLocalizedString("SPRequestPermission.Advice", comment: "")
        }
        
        static func advice_additional() -> String {
            return NSLocalizedString("SPRequestPermission.Advice.Additional", comment: "")
        }
        
        static func enable_camera() -> String {
            return NSLocalizedString("SPRequestPermission.Option.Camera", comment: "")
        }
        
        static func enable_photoLibrary() -> String {
            return NSLocalizedString("SPRequestPermission.Option.PhotoLibrary", comment: "")
        }
        
        static func enable_notification() -> String {
            return NSLocalizedString("SPRequestPermission.Option.Notification", comment: "")
        }
        
        static func enable_location() -> String {
            return NSLocalizedString("SPRequestPermission.Option.Location", comment: "")
        }
        
        static func enable_calendar() -> String {
            return NSLocalizedString("SPRequestPermission.Option.Calendar", comment: "")
        }
        
        static func enable_microphone() -> String {
            return NSLocalizedString("SPRequestPermission.Option.Microphone", comment: "")
        }
        
        static func enable_speech() -> String {
            return NSLocalizedString("SPRequestPermission.Option.Speech", comment: "")
        }
        
        static func swipe_for_hide() -> String {
            return NSLocalizedString("SPRequestPermission.Swipe.Hide", comment: "")
        }
        
        static func cancel() -> String {
            return NSLocalizedString("SPRequestPermission.Cancel", comment: "")
        }
        
        static func settings() -> String {
            return NSLocalizedString("SPRequestPermission.Settings", comment: "")
        }
        
        static func titleDisablePermissionAlertText() -> String {
            return NSLocalizedString("SPRequestPermission.PermissionDisableTitle", comment: "")
        }
        
        static func subtitleDisablePermissionAlertText() -> String {
            return NSLocalizedString("SPRequestPermission.PermissionDisableText", comment: "")
        }
    }
}
