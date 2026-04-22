SELECT 
    title,
    price,
    price - (
        SELECT AVG(price)
        FROM Courses
    ) AS Price_Difference
FROM Courses;

-- Truy vấn lấy từng khóa học (title, price) từ Courses,
-- đồng thời dùng Scalar Subquery trong SELECT để tính giá trung bình
-- của toàn bộ khóa học trên hệ thống.
-- Với mỗi dòng, lấy giá khóa học hiện tại trừ đi mức giá trung bình đó
-- để tạo cột Price_Difference, giúp vừa xem chi tiết từng khóa học
-- vừa so sánh với bức tranh tổng quan toàn sàn.