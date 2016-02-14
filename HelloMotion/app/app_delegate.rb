class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'HelloMotion'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    # UIScreen describes the display our app is running
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    # This is our new line!
    @window.rootViewController = TapController.alloc.initWithNibName(nil, bundle: nil)

    # @blue_view = UIView.alloc.initWithFrame(CGRectMake(10, 10, 100, 100))
    # @blue_view.backgroundColor = UIColor.blueColor
    # @window.addSubview(@blue_view)

    # @green_view = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
    # @green_view.backgroundColor = UIColor.greenColor
    # @window.addSubview(@green_view)

    # @red_view  = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
    # @red_view.backgroundColor = UIColor.redColor
    # # NOTE: *not* adding to @window
    # @blue_view.addSubview(@red_view)

    # alert = UIAlertView.new
    # alert.message = "Hello Motion!"
    # alert.show

    # puts "Hello again!"

    true
  end
end
