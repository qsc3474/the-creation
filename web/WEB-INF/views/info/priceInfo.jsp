<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="apple-touch-icon" sizes="180x180" href="${ pageContext.servletContext.contextPath }/resources/assets/img/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="${ pageContext.servletContext.contextPath }/resources/assets/img/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="${ pageContext.servletContext.contextPath }/resources/assets/img/favicon-16x16.png">
  <title>index</title>

  <!-- Dependency Styles -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/font-awesome/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/font-awesome/css/gp-icons.css" type="text/css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/gp-icons/style.css" type="text/css">
  <!-- <link rel="stylesheet" href="dependencies/etlinefont-bower/style.css" type="text/css"> -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/bootstrap-star-rating/css/star-rating.min.css" type="text/css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/swiper/css/swiper.min.css" type="text/css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/wow/animate.css" type="text/css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/jquery-ui/css/jquery-ui.css" type="text/css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/revslider/css/settings.css" type="text/css">
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/dependencies/magnific-popup/magnific-popup.css" type="text/css">

  <!-- Site Stylesheet -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/css/app.css" type="text/css">


</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>

<section id="service" class="service-sec">
      <div class="section-title text-center" data-wow-duration="1000ms" data-wow-delay="0.3s">
        <h2>진료이용 금액</h2>
        <p>
          개편한 세상은 투명한 진료 금액정보 공개 하고 있습니다.
        </p>
      </div>
      <div class="row">
        <div class="col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
          <ul class="nav nav-tabs nav-tabs-lined nav-tabs-lined-bottom">
            <li class=""><a href="#tab1-1" data-toggle="tab" aria-expanded="false">내과</a></li>
            <li class="active"><a href="#tab1-2" data-toggle="tab" aria-expanded="true">외과</a></li>
            <li><a href="#tab1-3" data-toggle="tab">치과</a></li>
            <li><a href="#tab1-4" data-toggle="tab">안과</a></li>
          </ul>
          <div class="space20"></div>
          <div class="tab-content">
            <div class="tab-pane fade" id="tab1-1">
              <table class="table table-striped table-dark mt">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>DT-1</td>
                    <td>발치</td>
                    <td>12300</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- /.tab-pane -->
            <div class="tab-pane fade active in" id="tab1-2">
              <table class="table table-striped table-dark mt">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">진료코드</th>
                    <th scope="col">진료과목</th>
                    <th scope="col">진료금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>IM-1</td>
                    <td>방광결석</td>
                    <td>550000</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>IM-2</td>
                    <td>요도결석</td>
                    <td>500000</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-3</td>
                    <td>신장제거수술</td>
                    <td>1300000</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>IM-1</td>
                    <td>방광결석</td>
                    <td>550000</td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>IM-2</td>
                    <td>요도결석</td>
                    <td>500000</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>IM-3</td>
                    <td>신장제거수술</td>
                    <td>1300000</td>
                  </tr>
                  <tr>
                    <th scope="row">1</th>
                    <td>IM-1</td>
                    <td>방광결석</td>
                    <td>550000</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>IM-2</td>
                    <td>요도결석</td>
                    <td>500000</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>IM-3</td>
                    <td>신장제거수술</td>
                    <td>1300000</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>IM-1</td>
                    <td>방광결석</td>
                    <td>550000</td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>IM-2</td>
                    <td>요도결석</td>
                    <td>500000</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>IM-3</td>
                    <td>신장제거수술</td>
                    <td>1300000</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>IM-3</td>
                    <td>신장제거수술</td>
                    <td>1300000</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- /.tab-pane -->
            <div class="tab-pane fade" id="tab1-3">
              <table class="table table-striped table-dark mt">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
              </table>

            </div>
            <!-- /.tab-pane -->
            <div class="tab-pane fade" id="tab1-4">
              <table class="table table-striped table-dark mt">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <!-- /.tab-pane -->
          </div>
          <!-- /.tab-content -->
        </div>
        <!-- /column -->
      </div>
    </section>
</body>
</html>