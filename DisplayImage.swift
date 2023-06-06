import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 创建一个NSImageView实例并设置其位置和大小
        let imageView = NSImageView(frame: NSRect(x: 0, y: 0, width: 200, height: 200))

        // 通过指定图片文件路径创建NSImage实例
        let imagePath = "您的图片文件路径"
        let image = NSImage(contentsOfFile: imagePath)

        // 将图片设置为NSImageView的图像
        imageView.image = image

        // 将NSImageView添加到视图控制器的视图层级中
        self.view.addSubview(imageView)
    }
}

// 创建一个NSWindowController子类，用作应用程序的主窗口控制器
class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        let viewController = ViewController()
        self.window?.contentViewController = viewController
    }
}

// 创建NSApplicationDelegate子类，用于处理应用程序的生命周期
class AppDelegate: NSObject, NSApplicationDelegate {

    var windowController: WindowController?

    func applicationDidFinishLaunching(_ notification: Notification) {
        let window = NSWindow(contentRect: NSRect(x: 0, y: 0, width: 300, height: 300),
                              styleMask: [.titled, .closable, .miniaturizable, .resizable],
                              backing: .buffered, defer: false)
        window.center()
        windowController = WindowController(window: window)
        windowController?.window?.makeKeyAndOrderFront(nil)
    }
}

// 创建NSApplication实例并设置其代理
let application = NSApplication.shared
let delegate = AppDelegate()
application.delegate = delegate
application.run()
