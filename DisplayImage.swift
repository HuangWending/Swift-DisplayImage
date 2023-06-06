import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 创建一个UIImageView实例并设置其位置和大小
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))

        // 通过指定图片文件路径创建UIImage实例
        let imagePath = "您的图片文件路径"
        if let image = UIImage(contentsOfFile: imagePath) {
            // 将图片设置为UIImageView的图像
            imageView.image = image
        } else {
            // 图片加载失败时显示默认占位图像
            imageView.image = UIImage(named: "placeholder")
        }

        // 将UIImageView添加到视图控制器的视图层级中
        self.view.addSubview(imageView)
    }
}

// 创建一个UIWindow实例并设置其根视图控制器为ViewController
let window = UIWindow(frame: UIScreen.main.bounds)
window.rootViewController = ViewController()

// 设置主窗口并显示
window.makeKeyAndVisible()
