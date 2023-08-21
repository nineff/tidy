/// Draw a sine function with n periods into a rectangle of given size
///
/// *Example:*
/// 
/// #my-sine.draw-sine(1cm, 0.5cm, 2)
/// #test(
///   `2 == 2`,
///   `2 == 2`,
///   `my-sine.sine(0) == 0`,
/// )
/// 
/// >>> 2 == 2
/// >>> eq(2, 2)
/// >>> eq((a: 13, b: 21) + (a: 3), (a: 3, b:21))
/// >>> my-sine.sine(0) == 0
/// >>> my-sine.sine(0) == 0
/// >>> eq(my-sine.sine(0), 0)
/// >>> approx(my-sine.sine(calc.pi), 0)
///
/// - height (length): Width of bounding rectangle.
/// - width (length): Height of bounding rectangle.
/// - periods (integer, float): Number of periods to draw. 
///      Example with many periods: #my-sine.draw-sine(4cm, 0.3cm, 10)
/// -> content
#let draw-sine(width, height, periods) = box(width: width, height: height, {
  let prev-point = (0pt, height / 2)
  let res = 100
  for i in range(1, res) {
    let x = i / res * width
    let y = (1 - calc.sin(i / res * 2 * 3.1415926 * periods)) * height / 2
    place(line(start: prev-point, end: (x, y)))
    prev-point = (x, y)
  }
})

/// h
#let sine(x) = calc.sin(x)