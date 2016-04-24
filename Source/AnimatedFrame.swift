/// Keeps a reference to an `UIImage` instance and its duration as a GIF frame.
struct AnimatedFrame {
  let image: UIImage?
  let duration: NSTimeInterval

  var placeholderFrame: AnimatedFrame {
    return AnimatedFrame(image: nil, duration: duration)
  }

  var isPlaceholder: Bool {
    return image == .None
  }

  func frameWithImage(image: UIImage?) -> AnimatedFrame {
    return AnimatedFrame(image: image, duration: duration)
  }
}

