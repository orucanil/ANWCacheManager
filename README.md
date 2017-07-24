# ANWCacheManager

Memory friendly caching in directory and simple use user defaults methods. Every cached object has a life cycle and it will be deleted when it expires. It uses the memory and file directory in a complex and effective way.


Installation
--------------

To use the ANWCacheManager in an app, just drag the ANWCacheManager file (demo files and assets are not needed) into your project.


Properties
--------------

The ANWCacheManager has the following properties (note: for iOS, NSObject when using properties):

    static let instance = ANWCacheManager()

Instance object. (Singleton)

    private static let kDefaultCacheMaxCacheAge: Double = 60 * 60 * 24 * 7; // 1 week

The default value is 1 week.


Methods
--------------

The ANWCacheManager has the following methods (note: for iOS, NSObject in method arguments):

    func setImage(image: UIImage?, key: String)

Save image to memory and file directory.

    func setObject(object: AnyObject?, key: String)

Save object to memory and file directory.

    func setData(data: NSData, key: String)

Save data to memory and file directory.

    func object(key: String) -> AnyObject?

Get object from memory or file directory.

    func image(key: String) -> UIImage?

Get image from memory or file directory.

    func isHaveObject(key: String) -> Bool

This object is checked from key in memory or file directory.

    func removeObject(key: String?)

Remove object from memory or file directory.

    func clearDisk()

Delete all objects in file directory.

    func writeToUserDefaults(object: AnyObject, key: String) -> Bool

Write object to user defaults.

    func removeFromUserDefaults(key: String) -> Bool

Remove object from user defaults.

    func readFromUserDefaults(key: String) -> AnyObject?

Get object from user defaults.

    func saveCache(object: AnyObject, key: String)

Save object to memory.

    func readCacheObject(key: String) -> AnyObject?

Get object from memory.


How to use ?
----------

```Swift


let photoURL: String = "demo.url"

// Remove to file directory
ANWCacheManager.instance.removeObject(key: photoURL)
let dataKey: String = "demo.key"

// Remove to user defaults
ANWCacheManager.instance.removeFromUserDefaults(key: dataKey)

// Save to file directory
let data: String = "demo.key"
ANWCacheManager.instance.setObject(object: data, key: dataKey)

// Save to file directory
let imageName: String = "demo.image.name"
let imageKey: String = "demo.image.key"
ANWCacheManager.instance.setImage(image: UIImage(named: imageName), key: imageKey)

// Remove to file directory
ANWCacheManager.instance.removeObject(key: imageKey)

// Save to user defaults
ANWCacheManager.instance.writeToUserDefaults(object: data, key: dataKey)


```

Build and run the project files. Enjoy more examples!
