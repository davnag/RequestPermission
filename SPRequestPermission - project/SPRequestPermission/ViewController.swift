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

class DataSource : SPRequestPermissionDialogInteractiveDataSource {
    override func topAdviceTitle() -> String {
        return "topAdviceTitle"
    }
    
    override func headerTitle() -> String {
        return "headerTitle"
    }
}


class ViewController: UIViewController  {
    
    
    lazy var  permissionAssistant = { () -> SPRequestPermissionAssistantInterface in 
        let data = DataSource()
        return SPRequestPermissionAssistant.modules.dialog.interactive.create(with: [.SpeechRecognition, .Calendar,.Microphone, .Location], dataSourceForController: data)
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(hex: "#00A3E8")
        self.patternView.setRhombusPattern()
        self.patternView.color = UIColor.white
        self.patternView.alpha = 0.1
        self.patternView.cellWidthMax = 70
    }
    
    @IBAction func tapPresentAction(_ sender: Any) {
        permissionAssistant.present(on: self)
    }
    
    //Mark: - Other
    @IBOutlet weak var patternView: SPPatternView!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

