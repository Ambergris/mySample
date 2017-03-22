<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="./resources/script/common.js"></script>
    <script src="./resources/script/idangerous.swiper.min.js"></script>
    <script src="./resources/script/jquery.form.js"></script>
    <link rel="stylesheet" href="./resources/css/idangerous.swiper.css">
    
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    /*.row.content {height: 450px}*/
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
      
    .itemli {min-width:110px; width:45%; max-width: 160px; /*max-width: 200px; width: 33.33%;*/ float: left; list-style: none; padding: 5px 5px;}
      
.itemul {
  float: right;

  position: relative;
  left: -47%; /* or right 50% */
  text-align: left;
}
.itemul > .itemli {
  position: relative;
    text-align: center;
  left: 50%;
}
      .page-header {
    margin: 20px 0 20px;
}
      .page-header > h4 {padding-left: 30px;}
      
    .itemli > .item {height: 235px;}
    .item .img {height: 140px; width: 100%; margin: auto;}
    .item .img img{width: 100%; height: 100%;}
    .itemli p {width: 100%; margin: 0;text-overflow: ellipsis; overflow: hidden;white-space: nowrap;}
    .itemli .panel-heading{padding: 5px 10px;}
    .itemli .panel-body{padding: 5px 10px;}
    .itemli .panel-footer{padding: 5px 10px; text-align: left;}
      
      
      /**/
      .hide{width: 0px; height: 0px;}
  </style>
    
    <script>
        $(document).ready(function(){
           var settings = {
							pagination: '.swiper-pagination',
							calculateHeight:true,
						    loop:true //버그 존재
						  };
		  var swiper = new Swiper('.swiper-container', settings); 
            
            
            $(".item_add").on("click",function(){
                
                var html = "";
                html += "<form id='insertForm' type='multipart/form-data'>";
                html += "<input type='text' value='"+$(this).attr("id")+"'>";
                html += "<table class='table'>";
                html += "   <tr>";
                html += "       <th>상품 명</th>";
                html += "       <td><input type='text' name='itemNm'></td>";
                html += "       <th>상품 정가</th>";
                html += "       <td><input type='text' name='itemPrice'></td>";
                html += "   </tr>";
                html += "   <tr>";
                html += "       <th>상품 종류</th>";/*pc ps4 psvita 휴대기기...*/
                html += "       <td><input type='text' name='itemKind'></td>";
                html += "       <th>상품 타입</th>";/*게임, 주변기기....*/
                html += "       <td><input type='text' name='itemType'></td>";
                html += "   </tr>";
                html += "   <tr>";
                html += "       <th>상품 제조사</th>";/*pc ps4 psvita 휴대기기...*/
                html += "       <td><input type='text' name='itemProd'></td>";
                html += "       <th>상품 발매사</th>";/*게임, 주변기기....*/
                html += "       <td><input type='text' name='itemPubli'></td>";
                html += "   </tr>";
                html += "   <tr>";
                html += "       <th>상품 발매일</th>";
                html += "       <td><input type='text' name='appDate'></td>";
                html += "       <th>상품 예판일</th>";
                html += "       <td><input type='text' name='relDate'></td>";
                html += "   </tr>";
                html += "   <tr>";
                html += "       <th><button type='button' class='btn btn-primary' id='addimg'>이미지 추가</button></th>";
                html += "       <td colspan='3'></td>";
                html += "   </tr>";
                html += "</table>";
                html += "</form>";
                
                var modalHtml = {"title":"<b>추가</b>", "body":html};
                var btn = [
                    "<button type='button' class='btn btn-default' id='insert'>등록</button>"
                ]
                var scriptArr = [
                    {"target" : "#insert",
                    	"event":"click",
                    	"script" : function(){
                    		var form = $('#myModal').find("#insertForm");
                    		form.ajaxSubmit({
                        		url : './item',
                        		data : form.serialize()+"&type=insert",
                        		type : 'post',
                        		dataType : 'json',
                        		success : function() {
                        			alert('bb2');
                    			},
                    			error : function() {
                    				alert('bb');
                    			}
                        	});
                    	}
                    }
                ];
                
                common.modal_popup($('#myModal'), modalHtml, btn, scriptArr);
                var index = 0;
                $("#addimg").off("click");
                $("#addimg").on("click",function(){
                    var $target = $("#addimg").parent().next();
                    var fileHtml = "";
                    fileHtml += "<p>";
                    fileHtml += "<label class='btn btn-primary' for='file"+index+"'>추가</label>";
                    fileHtml += "&nbsp;<span></span>";
                    fileHtml += "<input type='file' name='file"+index+"' id='file"+index+"' class='hide'>";
                    fileHtml += "&nbsp;<a href='javascript:void(0);'>[제거]</a>";
                    fileHtml += "</p>";
                    $target.append(fileHtml);
                    index++;
                    
                    $target.find("input[type='file']").on('change', function(){
                        if(window.FileReader){ // modern browser 
                            var filename = $(this)[0].files[0].name; 
                        } else { // old IE
                            var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
                        }
                        
                        var lastIndex = filename.lastIndexOf(".");
                        var img = "png||jpg||jpge";
                        var myImg = filename.substring(lastIndex+1);
                        
                        if (img.indexOf(myImg.toLowerCase()) < 0) {
                            $(this).val("");
                            $(this).prev().text("이미지가 아닙니다.");
                        } else {
                            $(this).prev().text(filename);
                        }
                    });
                    
                    $target.find("a").on("click", function(){
                       $(this).parent().remove(); 
                    });
                });
                
            });
            
        });
    </script>
    
    
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#">PS4</a></li><!-- class="active"-->
        <li><a href="#">PS VITA</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
      
      
    <!--swiper-->  
    <div class="col-sm-10 text-left" style='overflow:hidden; padding:0; height:100%;'>
        <div style='width: calc(100% + 15px); height:100%;'>
            <div class='swiper-container' style='overflow: auto; overflow:hidden !important;'>
                <div class='swiper-wrapper'>
                    <div class='swiper-slide'>
                        <div class="page-header">
                            <div style='width:30%; display:inline-block;'></div>
                            <div style='width:30%; display:inline-block; text-align: center;'>
                                <h4 style='display:inline;'>PS4</h4>
                            </div>
                            <div style='width:30%; display:inline-block; text-align: right;'>
                                <button type="button" class="btn btn-primary item_add" id='0'>추가</button>
                            </div>
                        </div> 
                        <ul class='itemul' style="width: 100%;">
                            <li class='itemli'>
                                <div class='item panel-primary panel '>
                                    <div class="panel-heading"><p>스타끄래프트2</p></div>
                                    <div class="panel-body">
                                        <div class='img'>
                                            <img src="http://img.ruliweb.com/image/game/134701364EC43A6126E577">
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <p>출시일 : 2016.10.10</p>
                                        <p>제작사 : 호롤로</p>
                                    </div>
                                </div>
                            </li>
                            <li class='itemli'>
                                <div class='item panel-primary panel '>
                                    <div class="panel-heading"><p>스타끄래프트2</p></div>
                                    <div class="panel-body">
                                        <div class='img'>
                                            <img src="http://img.ruliweb.com/image/game/134701364EC43A6126E577">
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <p>출시일 : 2016.10.10</p>
                                        <p>제작사 : 호롤로</p>
                                    </div>
                                </div>
                            </li>
                            <li class='itemli'>
                                <div class='item panel-primary panel '>
                                    <div class="panel-heading"><p>스타끄래프트2</p></div>
                                    <div class="panel-body">
                                        <div class='img'>
                                            <img src="http://img.ruliweb.com/image/game/134701364EC43A6126E577">
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <p>출시일 : 2016.10.10</p>
                                        <p>제작사 : 호롤로</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class='swiper-slide'>
                        <div class="page-header">
                            <div style='width:30%; display:inline-block;'></div>
                            <div style='width:30%; display:inline-block; text-align: center;'>
                                <h4 style='display:inline;'>PS VITA</h4>
                            </div>
                            <div style='width:30%; display:inline-block; text-align: right;'>
                                <button type="button" class="btn btn-primary item_add" id='1'>추가</button>
                            </div>
                        </div> 
                        <ul class='itemul' style="width: 100%;">
                            <li class='itemli'>
                                <div class='item panel-primary panel '>
                                    <div class="panel-heading"><p>스타끄래프트2</p></div>
                                    <div class="panel-body">
                                        <div class='img'>
                                            <img src="http://img.ruliweb.com/image/game/134701364EC43A6126E577">
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <p>출시일 : 2016.10.10</p>
                                        <p>제작사 : 호롤로</p>
                                    </div>
                                </div>
                            </li>
                            <li class='itemli'>
                                <div class='item panel-primary panel '>
                                    <div class="panel-heading"><p>스타끄래프트2</p></div>
                                    <div class="panel-body">
                                        <div class='img'>
                                            <img src="http://img.ruliweb.com/image/game/134701364EC43A6126E577">
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <p>출시일 : 2016.10.10</p>
                                        <p>제작사 : 호롤로</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="swiper-pagination" style="bottom: 10px;"></div>
    </div>
    <!--swiper-->  
      
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

        <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
    
</body>
</html>
