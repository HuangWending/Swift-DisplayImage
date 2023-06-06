# Swift-DisplayImage
Swift显示路径图片
import Cocoa: 导入Cocoa框架，该框架提供了用于构建macOS应用程序的基本组件和功能。
class ViewController: NSViewController: 创建一个自定义的视图控制器类，继承自NSViewController类。
override func viewDidLoad() {: 重写视图控制器的viewDidLoad方法，在视图加载完成时执行特定的代码。
super.viewDidLoad(): 调用父类NSViewController的viewDidLoad方法。
let imageView = NSImageView(frame: NSRect(x: 0, y: 0, width: 200, height: 200)): 创建一个NSImageView实例，并设置其位置和大小。
let imagePath = "您的图片文件路径": 定义一个字符串变量，存储您的图片文件路径。
let image = NSImage(contentsOfFile: imagePath): 通过指定的图片文件路径创建一个NSImage实例。
imageView.image = image: 将创建的NSImage实例设置为NSImageView的图像。
self.view.addSubview(imageView): 将NSImageView添加到视图控制器的视图层级中。
class WindowController: NSWindowController: 创建一个继承自NSWindowController的子类，作为应用程序的主窗口控制器。
override func windowDidLoad() {: 重写窗口控制器的windowDidLoad方法，在窗口加载完成时执行特定的代码。
super.windowDidLoad(): 调用父类NSWindowController的windowDidLoad方法。
let viewController = ViewController(): 创建一个ViewController实例。
self.window?.contentViewController = viewController: 将ViewController实例设置为窗口的内容视图控制器。
class AppDelegate: NSObject, NSApplicationDelegate: 创建一个继承自NSObject并遵循NSApplicationDelegate协议的AppDelegate类，用于处理应用程序的生命周期。
var windowController: WindowController?: 声明一个WindowController类型的可选变量用于持有窗口控制器的实例。
func applicationDidFinishLaunching(_ notification: Notification) {: 实现NSApplicationDelegate协议中的applicationDidFinishLaunching方法，当应用程序完成启动时调用。
let window = NSWindow(...): 创建一个NSWindow实例，并设置其大小、样式和特性。
window.center(): 将窗口居中显示。
windowController = WindowController(window: window): 创建一个WindowController实例并将NSWindow实例作为参数传递。
windowController?.window?.makeKeyAndOrderFront(nil): 将窗口显示在屏幕上并将其设置为键窗口。
let application = NSApplication.shared: 创建一个NSApplication实例。
let delegate = AppDelegate(): 创建一个AppDelegate实例。
application.delegate = delegate: 将AppDelegate实例设置为NSApplication的代理。
application.run(): 运行应用程序的主事件循环，启动应用程序并等待事件的处理。
import UIKit: 导入UIKit框架，该框架提供了用于构建iOS应用程序的基本组件和功能。
class ViewController: UIViewController: 创建一个自定义的视图控制器类，继承自UIViewController类。
override func viewDidLoad() {: 重写视图控制器的viewDidLoad方法，在视图加载完成时执行特定的代码。
super.viewDidLoad(): 调用父类UIViewController的viewDidLoad方法。
let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200)): 创建一个UIImageView实例，并设置其位置和大小。
let imagePath = "您的图片文件路径": 定义一个字符串变量，存储您的图片文件路径。
if let image = UIImage(contentsOfFile: imagePath) {: 使用指定的图片文件路径创建一个UIImage实例，并进行可选绑定。
imageView.image = image: 将创建的UIImage实例设置为UIImageView的图像。
} else {: 如果图片加载失败，则执行以下代码块。
imageView.image = UIImage(named: "placeholder"): 将名为"placeholder"的默认占位图像设置为UIImageView的图像。
self.view.addSubview(imageView): 将UIImageView添加到视图控制器的视图层级中。
let window = UIWindow(frame: UIScreen.main.bounds): 创建一个UIWindow实例，并设置其大小与设备屏幕大小相同。
window.rootViewController = ViewController(): 将视图控制器ViewController设置为窗口的根视图控制器。
window.makeKeyAndVisible(): 设置窗口为主窗口并显示在屏幕上。
