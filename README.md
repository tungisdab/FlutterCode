Dart
	num: int, double
a.runtimeType // in ra kiểu dữ liệu
int? a; // khởi tạo a bằng null, kiểu dữ liệu Null, có thể dùng late
$: giá trị của biến khi xử lý trong String
_funsion(): hàm private
mixin: có on thì chỉ có lớp kế thừa mới có thể sử dụng, ko có on thì có thể dùng 
Widget
Thiết kế giao diện trên Flutter dùng trên các widget,
alt + enter AS == ctrl + . VSC

Scaffold: body
để ko vướng vào thanh thông báo bên trên => Safearea
Center: const
debugShowCheckModeBanner
appbar
thg con ko dùng const thì thg cha cũng ko dc dùng const
CircularProgressIndicator : vòng tròn loading
StatefulWidget: initState chạy sau khi StatefulWidget chạy, dùng để khởi tạo giá trị ban đầu trước khi cái build chạy
Stateful khác Stateless ở chỗ: có thể set lại State, Stateful phải override lại createState,bên trong đó phải return lại hàm, hàm đó phải extends từ State<...>
Điểm giống của Stateless và Stateful là đều có hàm build trả về giao diện
Stateless không có initState và setState
user không ko làm thay đổi giao diện thì dùng Stateless, else ….
TextDirection: hướng của chữ
TextAlign: căn lề
Textoverflow.clip: Chỉ hiện thị trong khung chứa, visible tràn khỏi khung chứa
Textoverflow.ellipsis: quá dài thì hiện …
maxLines: số dòng tối đa
textOverflow.fade: làm mờ
TextScaleFactor: zoom chữ
fontWeight.w400
fontStyle
fontFamily: ‘Time new Roman’
wordSpacing
letterSpacing
decoration: TextDecoration.underline, lineThrough
