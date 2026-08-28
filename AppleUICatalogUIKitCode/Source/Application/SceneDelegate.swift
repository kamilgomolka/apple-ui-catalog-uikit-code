import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // MARK: UIWindowSceneDelegate

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let window = makeWindow(scene: scene) else {
            return
        }

        self.window = window
    }

    // MARK: Private

    private func makeWindow(scene: UIScene) -> UIWindow? {
        guard let windowScene = scene as? UIWindowScene else {
            return nil
        }

        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = makeRootViewController()
        window.makeKeyAndVisible()
        return window
    }

    private func makeRootViewController() -> UIViewController {
        let viewController = MainMenuViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
}
