//
//  ShareViewController.swift
//  MomentoShare
//
//  Created by Steven on 10/7/23.
//

import UIKit
import Social

class ShareViewController: SLComposeServiceViewController {
    
    var selectedCategoryName = "None"

    override func isContentValid() -> Bool {
        // Do validation of contentText and/or NSExtensionContext attachments here
        return true
    }

    override func didSelectPost() {
        // This is called after the user selects Post. Do the upload of contentText and/or NSExtensionContext attachments.
        
        // Inform the host that we're done, so it un-blocks its UI. Note: Alternatively you could call super's -didSelectPost, which will similarly complete the extension context.
        self.extensionContext!.completeRequest(returningItems: [], completionHandler: nil)
    }

    override func configurationItems() -> [Any]! {
        // To add configuration options via table cells at the bottom of the sheet, return an array of SLComposeSheetConfigurationItem here.
        return [categoryConfigurationItem]
    }
    
    // Build the Category configuration item
    lazy var categoryConfigurationItem: SLComposeSheetConfigurationItem = {
        let item = SLComposeSheetConfigurationItem()!
        item.title = "Category"
        item.value = self.selectedCategoryName
//        item.tapHandler self.showCategorySelection
        return item
    }()
    
//    func showCategorySelection() -> SLComposeSheetConfigurationItemTapHandler {
//        return testView
//    }
//    
//    struct testView: View {
//        
//    }
}
