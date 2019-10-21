import XCTest
import UIKit
import KYPopupDialog
import FBSnapshotTestCase

class SnapshotTests: FBSnapshotTestCase {

    var vc: ViewController!
    var window: UIWindow!
    
    override func setUp() {
        super.setUp()
    
        recordMode = false
        fileNameOptions = [.device, .OS, .screenSize, .screenScale]

        let bundle = Bundle(for: self.classForCoder)
        let sb = UIStoryboard(name: "Main", bundle: bundle)
        vc = sb.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        XCTAssertNotNil(vc.view)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = vc
        window.makeKeyAndVisible()
    }
    
    func testInitialView() {
        FBSnapshotVerifyView(window)
    }

    func testStandardDialogWithImage() {
        vc.showImageDialog(animated: false)
        let date = Date(timeIntervalSinceNow: 1)
        RunLoop.current.run(mode: RunLoop.Mode.default, before: date)
        FBSnapshotVerifyView(window)
    }
    
    func testStandardDialogWithoutImage() {
        vc.showStandardDialog(animated: false)
        let date = Date(timeIntervalSinceNow: 1)
        RunLoop.current.run(mode: RunLoop.Mode.default, before: date)
        FBSnapshotVerifyView(window)
    }
    
    func testCustomDialog() {
        vc.showCustomDialog(animated: false)
        let date = Date(timeIntervalSinceNow: 1)
        RunLoop.current.run(mode: RunLoop.Mode.default, before: date)
        FBSnapshotVerifyView(window)
    }
}
