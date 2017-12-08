

import UIKit

class SegueFoundation: UIStoryboardSegue {

    override init(identifier: String?, source: UIViewController, destination: UIViewController) {
        
        let val = segueExpand.modifySegueInitVal(identifier: identifier, source: source, destination: destination);
        
        super.init(identifier: val.identifier, source: val.source, destination: val.destination);
        
    }
    
//    public class func modifyInitVal(identifier: String?, source: UIViewController, destination: UIViewController) -> (identifier: String?, source: UIViewController, destination: UIViewController){
//        
////        let storyBorad:UIStoryboard = UIStoryboard.init(name: identifier!, bundle: nil);
////        let con:UIViewController? = storyBorad.instantiateInitialViewController();
////        
////        if (con is RootController){
////            print("ddd");
////        }
//        return (identifier, source, destination);
//    }
    
    public func ControllerMove() -> [UIViewController]?{
    
        var controllers:[UIViewController]? = source.navigationController?.viewControllers;
        
        let storyBorad:UIStoryboard = UIStoryboard.init(name: identifier!, bundle: nil);
        let con:UIViewController? = storyBorad.instantiateInitialViewController();
        
        controllers?.append(con!);
        
        return controllers;
    }
    
    public func AdminStly() -> Bool {
        
//        return false;
        return true;
    }
    
    override func perform() {
        
        let isAdmin:Bool = AdminStly();
        let controllers = ControllerMove();
        if (controllers != nil)
        {
            source.navigationController?.setViewControllers(controllers!, animated: isAdmin);
        }

    }
    
    
}
