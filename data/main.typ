
 #import ".../../config/style.typ": project, def, example, note
// Áp dụng định dạng toàn cục cho toàn bộ tài liệu bên dưới

#show: project.with(
  title: "PHÁT TRIỂN NĂNG LỰC MÔ HÌNH HÓA TRONG DẠY HỌC CHỦ ĐỀ XÁC SUẤT CÓ ĐIỀU KIỆN CHO HỌC SINH LỚP 12",
  authors: ("Đặng Thanh Quý",),
  date: "Tháng 9 năm 2026",
)
#pagebreak() 

#heading(numbering: none)[LỜI NÓI ĐẦU]

Nhân loại đang bước vào kỷ nguyên bùng nổ thông tin, khi khối lượng dữ liệu được tạo ra và lan truyền mỗi ngày tăng trưởng với tốc độ chưa từng có, len lỏi vào mọi lĩnh vực của đời sống -  từ kinh tế, y tế, môi trường cho đến giáo dục. Trong bối cảnh đó, khả năng thu thập, phân tích, xử lý thông tin và đưa ra quyết định dựa trên dữ liệu không còn là năng lực đặc thù của những người làm công tác nghiên cứu, mà đã trở thành một yêu cầu thiết yếu đối với mỗi công dân của xã hội hiện đại.

Ý thức được điều này, giáo dục trên thế giới nói chung và giáo dục Việt Nam nói riêng đã và đang đặt năng lực phân tích, xử lý thông tin - mà cốt lõi là năng lực tư duy thống kê và xác suất - vào vị trí trung tâm của quá trình đào tạo con người. Nhiều nghiên cứu quốc tế đã khẳng định năng lực mô hình hóa toán học, với bản chất là quá trình chuyển hóa các vấn đề thực tiễn - vốn thường chứa đựng yếu tố ngẫu nhiên và không chắc chắn - thành các bài toán có thể phân tích bằng công cụ toán học, chính là một trong những năng lực cốt lõi giúp người học tiếp cận và lý giải thế giới thực một cách khoa học, có căn cứ (Blum & Leiß, 2007; Cevikbas, Kaiser & Schukajlow, 2022).

Tại Việt Nam, Chương trình giáo dục phổ thông môn Toán 2018 đã thể hiện rõ định hướng này khi lần đầu tiên xác lập năng lực mô hình hóa toán học là một trong những thành tố năng lực toán học cốt lõi cần hình thành cho học sinh, đồng thời tăng đáng kể tỉ trọng và độ sâu của mạch kiến thức Thống kê – Xác suất so với chương trình 2006 (Bộ GD&ĐT, 2018). Trong đó, nội dung Xác suất có điều kiện lần đầu tiên được đưa vào chương trình lớp 12 như một nội dung hoàn toàn mới, gắn liền tự nhiên với nhiều bối cảnh đời sống quen thuộc - y tế, bảo hiểm, kiểm định chất lượng - tạo cơ hội thuận lợi để tổ chức các hoạt động mô hình hóa toán học nếu được khai thác đúng cách (Võ Xuân Mai & Lê Ngọc Oanh, 2025).

Tuy nhiên, thực tiễn dạy học cho thấy khoảng cách không nhỏ giữa định hướng của chương trình và năng lực thực tế của học sinh. Một số nghiên cứu gần đây chỉ ra rằng học sinh trung học phổ thông thường gặp khó khăn trong việc phân biệt xác suất có điều kiện với xác suất giao, cũng như còn lúng túng khi vận dụng kiến thức để giải quyết các tình huống thực tiễn đa dạng. Nguyên nhân một phần đến từ cách tiếp cận dạy học còn thiên về tính toán hình thức, chưa khai thác triệt để quy trình mô hình hóa toán học vốn có nhiều cơ hội trong chủ đề này.

Xuất phát từ xu thế bùng nổ thông tin của xã hội, từ định hướng đổi mới của Chương trình giáo dục phổ thông 2018, và từ thực trạng còn nhiều khó khăn trong dạy học chủ đề Xác suất có điều kiện ở trường phổ thông, việc nghiên cứu các biện pháp sư phạm nhằm phát triển năng lực mô hình hóa toán học cho học sinh lớp 12 thông qua chủ đề này trở nên cấp thiết, có ý nghĩa cả về mặt lý luận lẫn thực tiễn dạy học hiện nay. Đây chính là lý do tác giả lựa chọn đề tài "Phát triển năng lực mô hình hóa toán học trong dạy học chủ đề Xác suất có điều kiện cho học sinh lớp 12" để nghiên cứu. Những nội dung được đề cập một cách khái quát trong phần này sẽ được trình bày, phân tích cụ thể hơn ở các mục nội dung tiếp theo của đề tài.

#pagebreak() 

#heading(numbering: none)[MỤC LỤC]
#outline(title: none, indent: auto, depth: 3)

#pagebreak() 
#heading(numbering: none)[MỞ ĐẦU]
#heading(level: 2, numbering: none)[Tính cấp thiết]

Chương trình giáo dục phổ thông môn Toán 2018 xác định năng lực mô hình hóa toán học là một trong năm thành tố cốt lõi của năng lực toán học cần hình thành và phát triển cho học sinh, đồng thời yêu cầu cụ thể học sinh phải biết thiết lập được mô hình toán học để mô tả tình huống thực tiễn, giải quyết vấn đề trong phạm vi mô hình đó, rồi thể hiện và đánh giá lời giải trong bối cảnh thực tiễn ban đầu (Bộ GD&ĐT, 2018). Đây là bước chuyển quan trọng so với chương trình 2006, vốn chủ yếu tiếp cận nội dung thống kê và xác suất theo hướng cung cấp kiến thức, kỹ năng tính toán thuần túy.

Trong số các nội dung thuộc mạch Thống kê và Xác suất, chủ đề Xác suất có điều kiện ở lớp 12 mang tính đặc thù đáng chú ý: đây là nội dung hoàn toàn mới, trước đây chỉ được giảng dạy ở bậc đại học, nay lần đầu tiên được đưa vào chương trình phổ thông. Bản chất trừu tượng của khái niệm xác suất có điều kiện - vốn đòi hỏi học sinh phải suy luận trên một không gian mẫu đã bị thu hẹp bởi thông tin cho trước - đi kèm với đặc điểm gắn bó tự nhiên với vô số tình huống thực tiễn quen thuộc (chẩn đoán y tế, kiểm định chất lượng sản phẩm, đánh giá rủi ro bảo hiểm...), khiến chủ đề này trở thành một "mảnh đất" đặc biệt thuận lợi để tổ chức các hoạt động mô hình hóa toán học, nếu được khai thác đúng cách trong dạy học.

Tuy nhiên, các nghiên cứu thực nghiệm gần đây cho thấy khoảng cách giữa tiềm năng đó với thực tế dạy học còn khá lớn. Nghiên cứu của Võ Xuân Mai và Lê Ngọc Oanh (2025) khi khảo sát việc dạy học chủ đề này ở một số trường trung học phổ thông ghi nhận nhiều học sinh còn lúng túng trong việc chuyển hóa một tình huống thực tiễn thành mô hình xác suất tương ứng, đặc biệt là bước xác định đúng biến cố điều kiện. Một nghiên cứu khác được công bố trên Tạp chí Khoa học Giáo dục Việt Nam (2022) khi phân tích sai lầm của học sinh trong quá trình học nội dung này cũng chỉ ra hiện tượng nhầm lẫn phổ biến giữa  
$ P(A∣B)$ và $𝑃(𝐵∣𝐴) $ - một sai lầm về bản chất khái niệm chứ không đơn thuần là sai sót tính toán, cho thấy cách tiếp cận dạy học hiện tại còn thiên về công thức, chưa thực sự giúp học sinh xây dựng được sự hiểu biết mang tính mô hình hóa đối với khái niệm này.

Về phía nghiên cứu lý luận, mặc dù năng lực mô hình hóa toán học đã được nghiên cứu khá sâu rộng ở phạm vi quốc tế (Blum & Leiß, 2007; Cevikbas, Kaiser & Schukajlow, 2022) và tại Việt Nam đã có một số công trình phát triển năng lực này gắn với các chủ đề Đại số, Hình học quen thuộc, thì số lượng nghiên cứu tập trung riêng vào chủ đề Xác suất có điều kiện - nội dung mới và có nhiều đặc thù nêu trên - vẫn còn khá khiêm tốn, phần lớn dừng ở quy mô khảo sát nhỏ hoặc phân tích sai lầm mà chưa đề xuất một hệ thống biện pháp sư phạm được thiết kế bài bản, gắn liền với quy trình mô hình hóa toán học đầy đủ.

Từ những phân tích trên - về yêu cầu của Chương trình giáo dục phổ thông 2018, về đặc thù thuận lợi nhưng cũng nhiều thách thức của nội dung Xác suất có điều kiện, và về khoảng trống trong các nghiên cứu hiện có - có thể khẳng định việc nghiên cứu, đề xuất các biện pháp sư phạm nhằm phát triển năng lực mô hình hóa toán học cho học sinh lớp 12 thông qua dạy học chủ đề Xác suất có điều kiện là một hướng nghiên cứu cần thiết, có cơ sở khoa học rõ ràng và có ý nghĩa thiết thực đối với thực tiễn dạy học hiện nay.

#heading(level: 2, numbering: none)[Mục tiêu nghiên cứu]

*a. Mục tiêu tổng quát:*

Đề xuất các biện pháp sư phạm nhằm phát triển năng lực mô hình hóa toán học cho
học sinh lớp 12 thông qua dạy học chủ đề Xác suất có điều kiện, góp phần đáp ứng
yêu cầu cần đạt của Chương trình giáo dục phổ thông môn Toán 2018 và nâng cao
hiệu quả dạy học nội dung này ở trường phổ thông.

*b. Mục tiêu cụ thể:*
 - Hệ thống hóa cơ sở lý luận về năng lực mô hình hóa toán học, chu trình mô hình hóa và cấu trúc biểu hiện của năng lực này theo Chương trình giáo dục phổ thông môn Toán 2018.
 - Phân tích nội dung, yêu cầu cần đạt của chủ đề Xác suất có điều kiện (Toán 12) trong chương trình và các bộ sách giáo khoa hiện hành, từ đó xác định các cơ hội mô hình hóa toán học gắn với chủ đề.
 - Khảo sát, phân tích thực trạng dạy học chủ đề Xác suất có điều kiện theo hướng phát triển năng lực mô hình hóa toán học, chỉ ra những khó khăn, sai lầm phổ biến của học sinh khi học nội dung này.
 - Đề xuất một số biện pháp sư phạm cụ thể, khả thi nhằm phát triển năng lực mô hình hóa toán học cho học sinh lớp 12 thông qua dạy học chủ đề Xác suất có điều kiện.
 - Đề xuất định hướng tổ chức thực nghiệm sư phạm để kiểm chứng tính khả thi và hiệu quả của các biện pháp đã đề xuất.

#heading(level: 2, numbering: none)[Đối tương và phạm vi nghiên cứu]
*Đối tượng nghiên cứu:* Năng lực mô hình hóa toán học của học sinh lớp 12
trong dạy học chủ đề Xác suất có điều kiện.

*Phạm vi nghiên cứu:*

- _Về nội dung_: Các bài toán, tình huống liên quan đến xác suất có điều kiện, công thức nhân xác suất, công thức xác suất toàn phần và công thức Bayes trong chương trình Toán 12.
- _Về không gian_: Nội dung sách giáo khoa kết nối tri thức
- _Về thời gian_: 
   
Do giới hạn thời gian thực hiện đề tài dừng lại ở mức đề xuất biện pháp sư phạm và định hướng tổ chức thực nghiệm, chưa triển khai thực nghiệm sư phạm thực tế.

#heading(level: 2, numbering: none)[Phương pháp nghiên cứu]
 *Phương pháp định tính *:
   - Đọc và hân tích các bài báo nghiên cứu liên quan đến đề tài "mô hình hóa"; "xác suất có điều kiện"..
   - Nội dung sách giáo khoa về chủ đề _Xác suất có điều kiện_.
   - Bài toán thực tế có yếu tố để tổ chức hoạt động mô hình hóa. 
   - Những khó khăn, sai lầm của học sinh trong giải quyết các bài toán.

#heading(level: 2, numbering: none)[Ý nghĩa nghiên cứu]
*Ý nghĩa lý luận*
- Bổ sung các lý luận về ứng dụng dạy mô hình hóa đối với các bài toán có yếu tố xác suất có điều kiện.

* Ý nghĩa thực tiễn ( đối với giáo viên, học sinh)*
- _ Đối với giáo viên_: Cung cấp tài liệu tham khảo về những lỗi sai/ những khó khăn thường gặp của học sinh khi ứng dụng năng lực mô hình hóa vào các bài toán chủ đề xác suất có điều kiện và một số biện pháp sư phạm cụ thể có thể áp dụng khi tổ chức dạy học théo hướng phát triển năng lực mô hình hóa trong các bài toán xác suất có điều kiện.
- _Đối với học sinh_: Các phương pháp và ví dụ mô hình hóa giúp học sinh hiểu rõ các khái niệm, bản chất của xác suất có điều kiện tốt hơn thay vì ghi nhớ bằng công thức toán khô khan.



=  CỞ SỞ LÝ LUẬN VÀ THỰC TIỄN
== Tổng quan nghiên cứu

== Cơ sở lý luận 
=== Mô hình hóa là gì?

=== Các bước tiến hành mô hình hóa 

=== Mô hình hóa trong các bài tập xác suất có điều kiện lớp 12

== Cơ sở thực tiễn

=  XÂY DỰNG BIỆN PHÁP PHÁT TRIỂN NĂNG LỰC MÔ HÌNH HÓA QUA DẠY HỌC CHỦ ĐỀ XÁC SUẤT CÓ ĐIỀU KIỆN.
== Phân tích nội dung, yêu cầu cần đạt của chủ đề Xác suất có điều kiện trong Chương trình GDPT 2018.
=== Vị trí trong chương trình
Dựa trên thực hiện chương trình giáo dục phổ thông năm 2018, các nội dung liên quan đến lĩnh vực Xác suất - thông kê chiếm 14% nội dung chương trình toán 12. 
- Học kì: Học kì 2
- Thứ tự và tên chsương: *Chương VI* : Xác suất có điều kiện.
- Số trang: Từ trang 64 đến trang 80.
- Các bài học: Gồm 3 bài:
  - _Bài 18_: Xác suất có điều kiện ( từ trang 64 đến 71)
  - _Bài 19_: Công thức Xác suất toàn phần và công thức Bayes (  từ trang 72 đến 78)
  - Bài tập cuối chương VI ( trang 79 đến 80)

=== Yêu cầu cần đạt và nội dung bài học
  #align(center)[ * Bài 18: Xác suất có điều kiện *]
   1. *Yêu cầu cần đạt*
         - Nhận biết được khái niệm về xác suất có điều kiện.
         - Nhận biết mối liên hệ giữa xác suất có điều kiện và xác suất.
         - Giải thích được ý nghĩa của xác suất có điều kiện trong những tình huống thực tiễn quen thuộc.
   2. * Nội dung bài học:*
   
  #def[Cho hai biến cố A và B. Xác suất của biến A được tính khi biến cố B xảy ra, được gọi là xác suất của A với điều kiện B và kí hiệu là $P(A|B)$.]
  Xác suất có điều kiện có thể được tính theo công thức :
  $ P(A|B) = P(A B)/P(B) $
=== Nhận xét sư phạm
#note[]

== Cơ hội mô hình hóa toán học trong chủ đề này




== Phân tích khó khăn, sai lầm thường gặp của học sinh

== Đề xuất các biện pháp sư phạm cụ thể

== Tổng kết chương 2

== Đề xuất tổ chức thực nghiệm( dự kiến )

Do giới hạn thời gian thực hiện đề tài chưa có điều kiện triển khai thực nghiệm sư phạm trên thực tế. Trong phần này, tôi sẽ trình bày kế hoạch dự kiến nếu đề tài được tiếp tục phát triển và triển khai thực nghiệm đầy đủ trong khoảng thời gian 2 tháng, gồm 4 giai đoạn như sau.

#figure(
  kind: table, supplement: [Bảng],
  caption: [Kế hoạch dự kiến tổ chức thực nghiệm sư phạm],
  table(
    columns: (auto, 1fr, auto),
    [*Giai đoạn*], [*Nội dung dự kiến thực hiện*], [*Thời gian dự kiến*],
    [1], [_Chuẩn bị đề tài_: 
    \
    nghiên cứu cơ sở lý luận, phân tích chương trình
      và sách giáo khoa, xây dựng công cụ khảo sát ban đầu], [2 tuần],
    [2], [_Thu thập và phân tích dữ liệu đầu vào từ học sinh_ 
    \
    khảo sát kiểm tra đầu vào nhằm xác định khó khăn của học sinh về chủ đề Xác suất có điều kiện], [2 tuần],
    [3], [_Tiến hành thực nghiệm sư phạm_:
    \
     Triển khai các biện pháp đã đề xuất ở Chương 2 trên lớp thực nghiệm, đối chiếu với lớp đối chứng],
      [3 tuần],
    [4], [_Thu thập dữ liệu đầu ra_
    \
     Bài kiểm tra sau thực nghiệm, phiếu
      khảo sát, phân tích và đánh giá kết quả thực nghiệm], [1 tuần],
  )
)

Kế hoạch trên mang tính định hướng, sẽ được điều chỉnh cụ thể tùy theo điều kiện thực tế của trường và lớp học được lựa chọn thực nghiệm trong trường
hợp đề tài được tiếp tục triển khai.

#heading(numbering: none)[KẾT LUẬN]

= TÀI LIỆU THAM KHẢO
