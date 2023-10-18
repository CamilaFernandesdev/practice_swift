protocol MediaItem {
    var title: String { get }
    var size: Int { get }
    
    func play()
    func stop()
}

struct Image: MediaItem {
    var title: String
    var size: Int
    
    func play() {
        print("Displaying image: \(title)")
    }
    
    func stop() {
        print("Image stopped: \(title)")
    }
}

struct Video: MediaItem {
    var title: String
    var size: Int
    
    func play() {
        print("Playing video: \(title)")
    }
    
    func stop() {
        print("Video stopped: \(title)")
    }
}

// Extensions
extension MediaItem {
    var description: String {
        return "Title: \(title), Size: \(size) KB"
    }
}

//example usage
let image = Image(title: "Nature", size: 1024)
let video = Video(title: "Vacation", size: 4096)

print(image.description)
print(video.description)

image.play()
video.play()

image.stop()
video.stop()



