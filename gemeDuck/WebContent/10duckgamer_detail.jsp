<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="common.js"></script>
    
    
    <script src="idangerous.swiper.min.js"></script>
    <link rel="stylesheet" href="idangerous.swiper.css">
    
 <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: auto;}
    
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
      
    .itemli {min-width: 110px; width: 45%; max-width: 160px; float: left; list-style: none; padding: 5px 5px;}
.itemul {
  float: right;
  position: relative;
  left: -47%; /* or right 50% */
  text-align: left;
}
.sell{left: -51%;}
.itemul > .itemli {
  position: relative;
    text-align: center;
  left: 50%;
}
      .page-header {
    margin: 20px 0 20px;
}
      .page-header > h4 {padding-left: 30px;}

    .itemli p {width: 100%; margin: 0;text-overflow: ellipsis; overflow: hidden;white-space: nowrap;}
    .itemli .panel-heading{padding: 5px 10px;}
    .itemli .panel-body{padding: 5px 10px;}
    .itemli .panel-footer{padding: 5px 10px; text-align: left;}
     
     .itemli > .item {height: 235px;}
      .item .img {height: 140px; width: 100px; margin: auto;}
      .item .img2 {height: 80px; width: 80px; margin: auto;}
      .item .img img{width: 100%; height: 100%;}
      .item .img2 img{width: 100%; height: 100%;}
      .item > .info {text-align: left;}
      .item > .info > .stat {text-align: center;}
     
     .pagination {display: block; text-align: center;}
     .pagination>li>a, .pagination>li>span{float: none;}
     
  </style>
    
    <script>
        $(document).ready(function(){
            var mySwiper = new Swiper('.swiper-img-container',{
            //pagination: '.pagination',
            paginationClickable: true,
            slidesPerView: 3,
            loop: true
          });
            
            $("#item_mody").on("click",function(){
                var modalHtml = {"title":"<b>수정</b>", "body":"레알?"};
                var btn = [
                    "<button type='button' class='btn btn-default' id='update'>수정</button>"
                ]
                var scriptArr = [
                    {"target" : "#update", "event":"click", "script" : function(){alert('업데이트 클릭');}}
                ];
                
                common.modal_popup($('#myModal'), modalHtml, btn, scriptArr);
            });
            $("#item_del").on("click",function(){
                var modalHtml = {"title":"<b>삭제</b>", "body":"레알?"};
                var btn = [
                    "<button type='button' class='btn btn-default' id='del'>삭제</button>"
                ]
                var scriptArr = [
                    {"target" : "#del", "event":"click", "script" : function(){alert('삭제 클릭');}}
                ];
                common.modal_popup($('#myModal'), modalHtml, btn, scriptArr);
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
    <div class="col-sm-10 text-left" style='overflow:hidden; padding:10px 0; height:100%;'>
        <div class="page-header">
            <h4>피리스의 아틀리에 ~신비한 여행의 연금술사~</h4>
            <div style='width:90%; display:inline-block; text-align: right;'>
                <button type="button" class="btn btn-warning"  id='item_mody'>수정</button>
                <button type="button" class="btn btn-danger" id='item_del'>삭제</button>
            </div>
        </div> 
        
        <div class='col-sm-12'>
            <div class='col-sm-3' style='text-align: center;'>
                <img style='width:100%; max-width:200px;' src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
            </div>
            <div class='col-sm-3'>
                <div class="panel-body" style="padding: 0;">
                    <table style='width:100%;'>
                        <colgroup>
                            <col width="55px">
                            <col width="*">
                        </colgroup>
                        <tr>
                            <th>게임명 :</th>
                            <td>피리스의 아틀리에 ~신비한 여행의 연금술사~</td>
                        </tr>
                        <tr>
                            <th>제작사 :</th>
                            <td>거스트</td>
                        </tr>
                        <tr>
                            <th>유통사 :</th>
                            <td>디지털터치</td>
                        </tr>
                        <tr>
                            <th>장르 :</th>
                            <td>RPG</td>
                        </tr>
                        <tr>
                            <th>발매일 :</th>
                            <td>2017.10.10</td>
                        </tr>
                        <tr>
                            <th>평점 :</th>
                            <td>5/5</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class='col-sm-6'>
                <table class='table'>
                    <thead>
                        <tr>
                            <th>작성자</th>
                            <th>제목</th>
                            <th>별점</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>갓겜</td>
                            <td>갓겜!!</td>
                            <td>5/5</td>
                            <td>2011.10.10</td>
                        </tr>
                        <tr>
                            <td>갓겜</td>
                            <td>갓겜!!</td>
                            <td>5/5</td>
                            <td>2011.10.10</td>
                        </tr>
                        <tr>
                            <td>갓겜</td>
                            <td>갓겜!!</td>
                            <td>5/5</td>
                            <td>2011.10.10</td>
                        </tr>
                        <tr>
                            <td>갓겜</td>
                            <td>갓겜!!</td>
                            <td>5/5</td>
                            <td>2011.10.10</td>
                        </tr>
                        <tr>
                            <td>갓겜</td>
                            <td>갓겜!!</td>
                            <td>5/5</td>
                            <td>2011.10.10</td>
                        </tr>
                    </tbody>
                </table>
                <ul class="pagination">
                    <li><a href="#">이전</a></li>
                    <li><a href="#">1</a></li>
                    <li class="active"><a href="#">2</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">다음</a></li>
                </ul>
            </div>
        </div>
        
        <!--이미지들?-->
        <!--<div class='col-sm-12' style="height:200px; padding:0;">
            <div class="swiper-img-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide" style="padding:0 5px;">
                        <img src="http://img.ruliweb.com/image/game/134701364EC43A6126E577" style="width:100%;">
                    </div>
                    <div class="swiper-slide">
                        <img src="https://www.w3schools.com/w3images/lights.jpg" style="width:100%;">
                    </div>
                </div>
            </div>
        </div>-->
        
        <!--판매 링크-->
        <div class='col-sm-12'>
            
            <div class="page-header">
                <div style='width:90%; display:inline-block; text-align: right;'>
                    <button type="button" class="btn btn-warning"  id='item_mody'>등록</button>
                </div>
            </div> 
            
            <div style='width: calc(100% + 45px); height:100%;'>
                <ul class='itemul sell' style="width: 100%;">
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-warning panel'>
                            <div class="panel-heading"><p>매진임박</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-danger panel'>
                            <div class="panel-heading"><p>판매종료</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                    <li class='itemli'>
                        <div class='item panel-primary panel'>
                            <div class="panel-heading"><p>판매중</p></div>
                            <div class="panel-body">
                                <div class='img2'>
                                    <img src="http://img.ruliweb.com/gi/pf/16/10/24/157f4150079_zkeohi.jpg">
                                </div>
                            </div>
                            <div class="panel-footer">
                               <p>PS4</p>
                               <p>겜우리</p>
                               <p>프리미엄/스페셜컬렉션</p>
                               <p>18,0000</p>
                               <p>게이득 등록</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
      
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
