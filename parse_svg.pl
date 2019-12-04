
$/ = undef;
$data = <>;
@matches = $data =~ /(?:M[0-9.]+,[0-9.]+)|(?:L[0-9.]+,[0-9.]+)|(?:C[0-9.]+,[0-9.]+ [0-9.]+,[0-9.]+ [0-9.]+,[0-9.]+)|(?:Z)/gi;
foreach(@matches) {
    if(/M([0-9.]+),([0-9.]+)/) {
        print("path.move(to: CGPoint(x: $1, y: $2))\n");
    }
    if(/L([0-9.]+),([0-9.]+)/gi) {
        print("path.addLine(to: CGPoint(x: $1, y: $2))\n")
    }
    if(/C([0-9.]+),([0-9.]+) ([0-9.]+),([0-9.]+) ([0-9.]+),([0-9.]+)/gi) {
        print("path.addCurve(to: CGPoint(x: $5, y: $6), control1: CGPoint(x: $1, y: $2), control2: CGPoint(x: $3, y: $4))\n")
    }
    if(/Z/gi) {
        print("path.closeSubpath()\n")
    }
   
}
