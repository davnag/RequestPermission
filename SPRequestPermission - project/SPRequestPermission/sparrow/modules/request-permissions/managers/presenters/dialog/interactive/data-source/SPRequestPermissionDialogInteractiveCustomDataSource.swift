//
//  Custom.swift
//  SPRequestPermission
//
//  Created by David Nagy on 2017-03-02.
//  Copyright © 2017 Ivan Vorobei. All rights reserved.
//

import UIKit

class SPRequestPermissionDialogInteractiveCustomDataSource: SPRequestPermissionDialogInteractiveDataSource {
    var customHeaderTitle:String?
    var customHeaderSubtitle:String?
    var customTopAdviceTitle:String?
    var customBottomAdviceTitle:String?
    var customUnderDialogAdviceTitle:String?
    
    var customHeaderBackgroundView:UIView?
    
    override func headerTitle() -> String {
        return customHeaderTitle ?? super.headerTitle()
    }
    
    override func headerSubtitle() -> String {
        return customHeaderSubtitle ?? super.headerSubtitle()
    }
    
    override func topAdviceTitle() -> String {
        return customTopAdviceTitle ?? super.topAdviceTitle()
    }
    
    override func bottomAdviceTitle() -> String {
        return customBottomAdviceTitle ?? super.bottomAdviceTitle()
    }
    
    override func underDialogAdviceTitle() -> String {
        return customUnderDialogAdviceTitle ?? super.underDialogAdviceTitle()
    }
    
    override func headerBackgroundView() -> UIView {
        return customHeaderBackgroundView ?? super.headerBackgroundView()
    }
}
