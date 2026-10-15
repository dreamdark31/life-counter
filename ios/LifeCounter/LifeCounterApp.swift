import SwiftUI
import WebKit

private let ground = UIColor(red: 12 / 255, green: 14 / 255, blue: 19 / 255, alpha: 1)

/// Shows the bundled life counter page full screen and keeps the display awake.
@main
struct LifeCounterApp: App {
    var body: some Scene {
        WindowGroup {
            CounterView()
                .ignoresSafeArea()
                .background(Color(ground).ignoresSafeArea())
                .statusBarHidden(true)
                .persistentSystemOverlays(.hidden)
                .defersSystemGestures(on: .all)
                .preferredColorScheme(.dark)
                .onAppear { UIApplication.shared.isIdleTimerDisabled = true }
        }
    }
}

struct CounterView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let web = WKWebView(frame: .zero, configuration: WKWebViewConfiguration())
        web.isOpaque = false
        web.backgroundColor = ground
        web.scrollView.backgroundColor = ground
        web.scrollView.bounces = false
        web.scrollView.isScrollEnabled = false
        web.scrollView.contentInsetAdjustmentBehavior = .never
        web.allowsLinkPreview = false
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") {
            web.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        }
        return web
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
