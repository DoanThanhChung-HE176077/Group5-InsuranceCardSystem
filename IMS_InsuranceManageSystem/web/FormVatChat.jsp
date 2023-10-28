<%-- 
    Document   : FormVatChat
    Created on : Oct 19, 2023, 8:59:21 PM
    Author     : chun
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Form Vat Chat</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
              integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />


        <style>
            body {
                background-color: #fdd12d !important;
                font-size: 14px !important;
            }

            .info_motobike {
                padding: 15px;
                background-color: rgb(255, 255, 255);
                border: 1px solid rgb(157, 151, 151);
                border-radius: 7px;
            }

            .general-dr {
                width: 100%;
                height: 40px;
                outline: none;
                border-radius: 5px;
                border: 1px solid hsl(213, 15%, 85%);
            }

            .payment {
                padding: 10px;
                background-color: rgb(255, 255, 255);
                border: 1px solid rgb(157, 151, 151);
                border-radius: 7px;

            }

            .payment button {
                width: 100%;
                background-color: hsl(244, 43%, 46%);
                color: white;
                font-weight: bolder;
                border: none;

            }

            .payment button:hover {
                background-color: #fdd12d;
            }

            .errmsg {
                color: red;

            }
            
            #mySelect option[disabled] {
                color: grey; /* Màu chữ mờ */
             }

        </style>

    </head>

    <body>
        <jsp:include page="Part/header.jsp"></jsp:include>

        <form action="SaveInfoVatChat" method="POST" style="margin-top: 100px ;">
            <div class="container form_TNDS">
                <div class="row">
                    <div class="col-md-8 info_motobike">
                        <div id="form_TNDS">

                            <h5 style="font-weight: bold"><i class="fa-solid fa-car"></i> Thông tin về xe</h5>
                            <div class="row">
                                <div class="col-md-6">
                                    <!--------------------- Hãng xe --------------------->
                                    <div>
                                        <label>Hãng xe<span class="errmsg"> *</span></label><br />
                                        <select class="general-dr abc" id="motorBrands" name="send-brand_id" onchange="updateCarModels()">
                                            <option id="mySelect" value="" disabled selected>Lựa chọn hãng xe của bạn</option>
                                        <c:forEach items="${listBrands}" var="brand">
                                            <option value="${brand.getBrand_id()}">${brand.getBrand_name()} have id: ${brand.getBrand_id()}</option>
                                        </c:forEach>
                                        </select>
                                    </div>              
                                    <!--------------------- Hieu xe --------------------->
                                    <div>
                                        <br>
                                        <label>Hiệu xe <span class="errmsg"> *</span></label>
                                        <select class="general-dr abc" id="motorBrandModel" name="model_id">
                                        </select>
                                        <input type="hidden" name="send-model_id" value=""/>
                                    </div>
                                    <!---------------------So may------------------------>
                                    <br>
                                    <div>
                                        <label>Số máy<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="text" name="soMay">
                                    </div>
                                    <p style="color: red; font-style: italic; font-weight: bold ">Người mua bảo hiểm cam kết cung cấp thông tin chính xác để đảm bảo quyền lợi bảo hiểm</p>

                                </div>

                                <!--------------------- BKS --------------------->
                                <div class="col-md-6">
                                    <div>
                                        <label>Biển kiểm soát<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="text" name="bienXe" required="">
                                    </div>
                                    <br>
                                    <!--------------------- so khung --------------------->
                                    <div>
                                        <label>Số khung<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="text" name="soKhung">
                                    </div>
                                </div>
                            </div>

                            <!----------------------PHẠM VI BẢO HIỂM----------------------->
                            <div id="scope insurance">
                                <h5 style=" font-weight: bold"><i class="fas fa-plus-square"></i> Phạm vi bảo hiểm</h5>
                                <!--------------------------------------------->
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Từ ngày<span class="errmsg"> *</span></label>
                                        <input class="form-control" required type="date" placeholder="Default input"
                                               name="start" id="fromDate" onchange="updateToDate()">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Đến ngày<span class="errmsg"> *</span></label>
                                        <input class="form-control" type="date" placeholder="Default input" name="endDate"
                                               id="toDate" readonly>
                                    </div>
                                </div>
                                <!--------------------Goi bao hiem co ban------------------------->
                                <div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div>
                                                <br>
                                                <label>Gói bảo hiểm cơ bản<span class="errmsg"> *</span></label>
                                                <select class="general-dr abc" id="pack_percent" name="send-pt_id">
                                                    <option id="mySelect" disabled selected>Lựa chọn gói</option>
                                                    <c:forEach items="${listPackT}" var="pt">
                                                    <option value="${pt.getPt_percent()}" >${pt.getPt_percent()}%</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <!--------------------Gia tri xe------------------------->
                                            <div>
                                                <br>
                                                <label>Giá trị xe</label>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <input value="" name="motorBrandModel-price" class="form-control" type="text" id="motorBrandModel-price" readonly="readonly">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <input name="tax-fee" class="form-control" type="text" id="tax-fee"
                                                               placeholder="" readonly>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <!--------------------Muc khau tru------------------------->
                                        <div class="col-md-6">
                                            <div>
                                                <br>
                                                <label>Mức khấu trừ<span class="errmsg"> *</span></label>
                                                <select class="general-dr abc" id="deduc_percent" name="send-deduc_percent">
                                                    <option id="mySelect" disabled selected>Lựa chọn mức khấu trừ</option>
                                                    <c:forEach items="${listDeduc}" var="deduc">
                                                        <option value="${deduc.getDeduc_percent()}">${deduc.getDeduc_percent()}%</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <!------------------------Tong phi ------------------->
                                            <div>
                                                <br>
                                                <label>Tổng phí</label>
                                                <input class="form-control" id="total-fee" type="text" readonly
                                                       placeholder="Tổng phí" name="send-fvc_totalPrice" value="">
                                            </div>
                                            <div>
                                                <br>
                                                <input class="form-control" id="inWord" type="text" readonly
                                                       placeholder="Bằng chữ"  value="">
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>                                 

                                <div id="vehicle_owner_information">
                                    <h5 style="margin-top: 10px; font-weight: bold"> <i class="fas fa-address-card"></i> Thông tin chủ xe
                                        (<span>Theo đăng kí xe</span>)</h5>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Số CCCD/CMT/Hộ chiếu</label>
                                            <input id="user_iden2" class="form-control" type="text" readonly="" value="${sessionScope.user.getUser_iden()}">
                                            <label>Tên</label>
                                            <input id="user_fullName" class="form-control" type="text" readonly="" value="${sessionScope.user.getUser_fullName()}">
                                            <label>Email</label>
                                            <input id="user_email2" class="form-control" type="email"" readonly="" value="${sessionScope.user.getUser_email()}">
                                        </div>
                                        <div class=" col-md-6">
                                            <label>Số điện thoại</label>
                                            <input id="user_phoneNum2" class="form-control" type="number" readonly value="${sessionScope.user.getUser_phoneNum()}">
                                            <label>Ngày sinh</label>
                                            <input id="user_dob2" class="form-control" type="date" readonly value="${sessionScope.user.getUser_dob()}">
                                            <label>Địa chỉ</label>
                                            <input id="user_address2" class="form-control" type="text" readonly value="${sessionScope.user.getUser_address()}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 ">
                            <div class="container payment">
                                <h5 style="font-weight:bold">Thông tin thanh toán</h5>
                                <table class="table ">
                                    <tbody>
                                        <tr>
                                            <th>Tổng chi phí:</th>
                                            <td>
                                                <p style="font-size: 20px;" type="text" id="submitFrom_bangso" name="tong-chi-phi">
                                                    
                                                </p>
                                                <span style=" float: left; font-style: italic; font-size: 10px;margin-top: -15px" id="submitFrom_bangchu" name="bang-chu">
                                                    
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <button type="submit" class="btn ">Thanh toán</button>
                            </div>
                    </div>
                </div>
            </div>
        </form>
        
        <!-- JavaScript code using jQuery for the dependent dropdown -->
<!--        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>-->



<script>
        updateCarModels();
        function updateCarModels() {
            var selectedBrandId = document.getElementById("motorBrands").value;
            var carModelsDropdown = document.getElementById("motorBrandModel");
            carModelsDropdown.innerHTML = "<option value=''>Lựa chọn loại xe</option>"; // Clear the current options
            // Use JSTL to loop through the listModels attribute
            <c:forEach items="${listModels}" var="model">
                if (${model.getBrand_id()} == selectedBrandId) {
                    var option = document.createElement("option");
                    option.value = "${model.getModel_price()}";
                    option.id = "${model.getModel_id()}";
                    option.innerText = "${model.getModel_name()} thuoc: ${model.getBrand_id()}";
                    carModelsDropdown.appendChild(option);
                } 
            </c:forEach>
            document.getElementById("motorBrandModel-price").value = "";
       }
         //update id send-model_id follow by model.getModel_id()
         // Get references to the dropdown and hidden input field
        var motorBrandModelDropdown = document.getElementById("motorBrandModel");
        var sendModelIdInput = document.querySelector("input[name='send-model_id']");

        // Add an event listener to the dropdown
        motorBrandModelDropdown.addEventListener("change", function () {
            // Get the selected option
            var selectedOption = motorBrandModelDropdown.options[motorBrandModelDropdown.selectedIndex];
            
            // Update the value of the hidden input with the selected option's value (ID)
            //co the loi ra id cua 1 tag = cach .id
            sendModelIdInput.value = selectedOption.id;
        });

        // Event cap nhat gia xe vao Gia tri xe
        document.getElementById("motorBrandModel").addEventListener("change", function () {
            var selectedModelPrice = this.value;
            var selectedModelPriceString = String(selectedModelPrice);
            var formattedPrice = formatValue(selectedModelPriceString);
            document.getElementById("motorBrandModel-price").value = formattedPrice;
            document.getElementById("motorBrandModel-price").setAttribute("value", formattedPrice);
            document.getElementById("send_motorBrandModel-price").innerHTML = `${formattedPrice} ₫`;
        });
        //bien int thanh string  xx.xxx.xxx vnd
        function formatValue(value) {
            const groups = value.match(/(\d{1,3})(?=(\d{3})*(?!\d))/g);
            return groups.join('.');
        }
        
        //number to vietnam so
        function numberToVietnameseWords(number) {
            const units = ["", "một", "hai", "ba", "bốn", "năm", "sáu", "bảy", "tám", "chín"];
            const groups = ["", "nghìn", "triệu", "tỷ"]; 
            function groupToVietnamese(group) {
                const hundred = Math.floor(group / 100);
                const ten = Math.floor((group % 100) / 10);
                const one = group % 10;
                let result = '';
                if (hundred > 0) {
                    result += units[hundred] + " trăm ";
                }
                if (ten > 1) {
                    result += units[ten] + " mươi ";
                } else if (ten === 1) {
                    result += "mười ";
                } else if (ten === 0 && one > 0) {
                    result += "lẻ ";
                }
                if (one > 0) {
                    result += units[one] + " ";
                }
                return result;
            }
            const numStr = number.toString();
            const numGroups = [];
            for (let i = numStr.length; i > 0; i -= 3) {
                const group = parseInt(numStr.slice(Math.max(i - 3, 0), i), 10);
                numGroups.push(group);
            }
            let result = '';
            for (let i = numGroups.length - 1; i >= 0; i--) {
                const group = numGroups[i];
                if (group > 0) {
                    result += groupToVietnamese(group) + groups[i] + ' ';
                }
            }
            return result.trim();
        }

        // Function to calculate the total price o day
        function calculateTotal() {
            var packPercent = parseFloat(document.getElementById("pack_percent").value);
            var deducPercent = parseFloat(document.getElementById("deduc_percent").value);
            var motoPrice = parseFloat(document.getElementById("motorBrandModel-price").value);
            console.log("packPercent: " + packPercent);
            console.log("deducPercent: " + deducPercent);
            console.log("motoPrice: " + motoPrice);
            if (!isNaN(packPercent) && !isNaN(deducPercent) && !isNaN(motoPrice)) {
                var total = (motoPrice *1000000* (packPercent / 100) * (1 - (deducPercent / 100)));
                var totalFormat = formatValue(String(total));
                var totalInVNWord = numberToVietnameseWords(parseInt(total));
                document.getElementById("inWord").value = totalInVNWord;
                document.getElementById("inWord").setAttribute("value",  totalInVNWord);
                document.getElementById("total-fee").value = totalFormat;
                document.getElementById("total-fee").setAttribute("value", totalFormat);
                //thông tin bao hiem:
                document.getElementById("submitFrom_bangso").innerHTML = totalFormat + " ₫";
                document.getElementById("submitFrom_bangchu").innerHTML = totalInVNWord + " đồng.";
                
            } else {
                document.getElementById("tax-fee").value = ""; 
                document.getElementById("total-fee").value = "";
            }
        }

        // Event listeners to trigger the calculation when the user selects options
        document.getElementById("pack_percent").addEventListener("change", calculateTotal);
        document.getElementById("deduc_percent").addEventListener("change", calculateTotal);
        document.getElementById("motorBrandModel-price").addEventListener("change", calculateTotal);

        // Initial calculation on page load
        calculateTotal();
        
        


    
 

</script>
        




</script>





    </body>

</html>
