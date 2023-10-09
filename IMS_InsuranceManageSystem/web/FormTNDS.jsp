<%-- 
    Document   : formTNDS
    Created on : Oct 7, 2023, 3:57:27 PM
    Author     : x`
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/formTNDS.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
           
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        <div class="container form_TNDS">
        <div class="row">
            <div class="col-md-8 info_motobike">
                <div id="form_TNDS">
                    
                    <h5><i class="fa-solid fa-motorcycle"></i> Thông tin về xe</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <div>
                                <span> Loại xe</span><br/>
                                <select class="general-dr abc" id="type" name="options">
                                    <c:forEach items="${listType}" var="c">
                                        <option value="${c.getId()}">${c.getType_name()}</option>
                                    </c:forEach>
                                    
                                </select>
                            </div>
                            <div>
                                <span>Số máy</span>
                                <input class="form-control" type="text" >
                            </div>
                            <span style="color: hsl(29, 57%, 54%);">Tối thiểu cần nhập số biển kiểm soát hoặc số khung</span>                        
                        </div>
                        <div class="col-md-6">
                            <div>
                                <span>Biển xe</span>
                                <input class="form-control" type="text" >
                            </div>                            
                            <div>
                                <span>Số khung</span>
                                <input class="form-control" type="text">
                            </div>
                        </div>
                    </div>
                    <div id="scope insurance">
                        <h5><i class="fas fa-plus-square"></i> Phạm vi bảo hiểm</h5>
                        <div class="row">
                            <div class="col-md-6">
                                <span>Từ ngày</span>
                                <input class="form-control" type="date" placeholder="Default input">
                            </div>
                            <div class="col-md-6">
                                <span>Đến ngày</span>
                                <input class="form-control" type="date" placeholder="Default input">

                            </div>
                        </div>
                        
                        <div>
                            <strong>1.TNDS bắt buộc</strong><i style="color: blue; margin-left: 7px;" class="fa-solid fa-square-check"></i>
                        </div>
                        <div>
                            <strong>2.Tai nạn người ngồi trên xe</strong>
                            <div class="row">
                                <div class="col-md-6">
                                    <div>
                                        <span> Mức trách nhiệm</span>
                                        <select class="general-dr abc" id="level" name="options">
                                            <c:forEach items="${listLevel}" var="c">
                                                <option value="${c.getLv_id()}">${c.getLv_value()}</option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                    <div>
                                        <span>Phí</span>
                                        <div class="row">

                                            <div class="col-md-6">
                                                
                                                <input  class="form-control" type="text" id="lv-fee" placeholder="" readonly>

                                            </div>
                                            <div class="col-md-6">
                                                <input class="form-control" type="text" id="tax-fee" placeholder="" readonly>

                                                
                                            </div>
                                        </div>                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div>
                                        <span>Số người</span>
                                        <select class="general-dr abc" id="num" name="options">
                                             <c:forEach  items="${listNum}" var="c">
                                                <option value="${c}">${c}</option>
                                             </c:forEach>
                                        </select>
  
                                       
                                    </div>                            
                                    <div>
                                        <span>Tổng phí</span>
                                        <input class="form-control" id="total-fee" type="text" readonly placeholder="" >
                                    </div>
                                </div>
                            </div>
                        </div>
                        

                        <div id="vehicle_owner_information">
                            <h5 style="margin-top: 10px;"> <i class="fas fa-address-card"></i>Thông tin chủ xe (<span>Theo đăng kí xe</span>)</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <span>Số CCCD/CMT/Hộ chiếu</span>
                                    <input class="form-control" type="text" >
                                    <span>Tên</span>
                                    <input class="form-control" type="text" >
                                    <span>Email</span>
                                    <input class="form-control" type="email"">
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <span>Số mobile</span>
                                                <input class="form-control" type="number" >
                                                <span>Từ ngày</span>
                                                <input class="form-control" type="date">
            
                                            </div>
                                        </div>
                                        <div class="col-md-6">

                                        </div>
                                    </div>
                                    <span>Từ ngày</span>
                                    <input class="form-control" type="text" >
    
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                
            </div>
            <div class="col-md-4 ">
                <div class="payment">
                    <h6>Thông tin phí bảo hiểm</h6>
                    <hr>
                    <div class="fee">
                        <span>Phí</span>
                        <span style="float: right;">60,000VND</span>
                    </div>
                    <div class="fee">
                        <span>Tổng phí</span>
                        <h6 style="float: right;">60,000VND</h6>
                    </div>
                    <button type="button" class="btn ">Thanh toán</button>
                </div>
               
            </div>
        </div>
    </div>
    </body>
    
         
<!--       <script>
        $(document).ready(function () {
            $("#type, #level, #num").change(function () {
                var type = $("#type").val();
                var level = $("#level").val();
                var num = $("#num").val();

                // Kiểm tra giá trị null hoặc rỗng trước khi gửi AJAX request
                if (type != null && level != null && num != null &&
                    type.trim() !== '' && level.trim() !== '' && num.trim() !== '') {
                    $.ajax({
                        url: "HandleFormTNDS",
                        type: "POST",
                        data: { type: type, level: level, num: num },
                        success: function (data) {
                            // Parse dữ liệu JSON nhận được
                              var jsonData = JSON.parse(data);
                          alert('ok' + data)

                            // Cập nhật giá trị trong các thẻ HTML
                            $("#lv-fee").val(jsonData.lvFee);
                            $("#tax-fee").val(jsonData.taxFee);
                        },
                        error: function (error) {
                            console.log("Error: " + error);
                        }
                    });
                } else {
                    console.log("Invalid input values");
                }
            });
        });
    </script>-->

<script>
 document.querySelectorAll(".abc").forEach(function(element) {
    element.addEventListener("click", function() {
        var xhr = new XMLHttpRequest();
        var type = $("#type").val();  // Lấy giá trị từ #num
        var level = $("#level").val();
        var num = $("#num").val();
        xhr.open("POST", "HandleFormTNDS", true);

        // Thêm sự kiện readystatechange
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var jsonData = JSON.parse(xhr.responseText);
                console.log(jsonData);

                // Cập nhật giá trị trong các thẻ HTML
                $("#lv-fee").val(jsonData.levelFee);
                $("#tax-fee").val(jsonData.taxFee);
                $("#total-fee").val(parseInt(jsonData.levelFee) + parseInt(jsonData.taxFee));
            }
        };

        // Thiết lập tiêu đề yêu cầu
        xhr.setRequestHeader("Content-Type", "application/json");

        // Gửi dữ liệu với phương thức POST và định dạng là JSON
        xhr.send(JSON.stringify({ type: type, level: level, num: num }));
    });
});

           


    

</script>
        
    
</html>