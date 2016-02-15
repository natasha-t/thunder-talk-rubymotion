class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'HelloMotion'
    rootViewController.view.backgroundColor = UIColor.whiteColor
    # UIScreen describes the display our app is running
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    @window.makeKeyAndVisible

    controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
    # alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)

    # other_controller = UIViewController.alloc.initWithNibName(nil, bundle: nil)
    # other_controller.title = "Purple"
    # other_controller.view.backgroundColor = UIColor.purpleColor

    # tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    # tab_controller.viewControllers = [alphabet_controller, nav_controller]
    @window.rootViewController = nav_controller

      # the points we're going to animate to
    @points = [[0, 0], [50, 0], [0, 50], [50, 50]]
    @current_index = 0

  # usual method of adding views to our window
    @view = UIView.alloc.initWithFrame [@points[@current_index], [100, 100]]
    @view.backgroundColor = UIColor.purpleColor
    @window.addSubview(@view)

    animate_to_next_point


    # views and subviews
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

  def animate_to_next_point
      @current_index += 1

      # keep current_index in the range [0,3]
      @current_index = @current_index % @points.count

      UIView.animateWithDuration(2,
        animations: lambda {
           @view.frame = [@points[@current_index], [100, 100]]
        },
        completion:lambda {|finished|
          self.animate_to_next_point
        }
      )
  end



end
