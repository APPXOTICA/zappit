import UIKit
import Social
import MobileCoreServices
import UniformTypeIdentifiers

class ShareViewController: SLComposeServiceViewController {
    // Runner -> Info.plist에 등록된 URL Scheme
    let urlScheme = "ZappitUrlScheme://"
    // App Groups Identifier
    let suiteName = "group.tv.zappit"
    let sharedUrlKey = "Url"
    let contentTypeUrl = UTType.url.identifier
    let contentTypeText = UTType.text.identifier
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let content = extensionContext?.inputItems.first as? NSExtensionItem,
           let attachments = content.attachments {
            for attachment in attachments {
                if attachment.hasItemConformingToTypeIdentifier(contentTypeUrl) {
                    handleUrl(content: content, attachment: attachment)
                    break
                } else if attachment.hasItemConformingToTypeIdentifier(contentTypeText) {
                    handleText(content: content, attachment: attachment)
                    break
                }
            }
        }
    }
    
    // TikTok, Reels 등 URL 타입으로 전달되는 경우
    private func handleUrl(content: NSExtensionItem, attachment: NSItemProvider) {
        attachment.loadItem(forTypeIdentifier: contentTypeUrl, options: nil) { [weak self] data, error in
            if error == nil,
               let item = data as? URL,
               let this = self,
               let userDefaults = UserDefaults(suiteName: this.suiteName) {
                userDefaults.set(item.absoluteString, forKey: this.sharedUrlKey)
                this.redirectToHostApp()
            } else {
                self?.dismissWithError()
            }
        }
    }
    
    // YouTube Shorts 등 일반 텍스트 내에 URL이 섞여 들어오는 경우
    private func handleText(content: NSExtensionItem, attachment: NSItemProvider) {
        attachment.loadItem(forTypeIdentifier: contentTypeText, options: nil) { [weak self] data, error in
            if error == nil,
               let url = (data as? String) ?? (data as? NSAttributedString)?.string,
               let this = self,
               let userDefaults = UserDefaults(suiteName: this.suiteName) {
                userDefaults.set(url, forKey: this.sharedUrlKey)
                this.redirectToHostApp()
            } else {
                self?.dismissWithError()
            }
        }
    }
    
    // The app reads the value through the "tv.zappit/share" channel (AppDelegate).
    // loadItem calls back on a background queue: UIKit work goes to the main queue.
    private func redirectToHostApp() {
        DispatchQueue.main.async { [weak self] in
            guard let self, let url = URL(string: self.urlScheme) else { return }
            // iOS 18 no longer answers the old "openURL:" selector: find the
            // UIApplication in the responder chain and use open(_:options:).
            var responder = self as UIResponder?
            while let current = responder {
                if let application = current as? UIApplication {
                    application.open(url, options: [:], completionHandler: nil)
                    break
                }
                responder = current.next
            }
            self.extensionContext?.completeRequest(returningItems: [], completionHandler: nil)
        }
    }
            
    private func dismissWithError() {
        DispatchQueue.main.async { [weak self] in self?.showError() }
    }

    private func showError() {
        print("[ERROR] Error loading data!")
        let alert = UIAlertController(title: "Error", message: "Share to Zappit failed", preferredStyle: .alert)

        let action = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.dismiss(animated: true, completion: nil)
        }

        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        extensionContext?.completeRequest(returningItems: [], completionHandler: nil)
    }
        
    // MARK: - Share Extension Delegates
    
    override func isContentValid() -> Bool {
        return true
    }

    override func didSelectPost() {
        super.didSelectPost()
    }

    override func configurationItems() -> [Any]! {
        return []
    }
}
