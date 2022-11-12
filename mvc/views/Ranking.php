<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Xếp Hạng</title>
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/base.css">
    <link rel="stylesheet" href="./public/css/main.css">
    <link rel="stylesheet" href="./public/css/ranking.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/fonts/fontawesome-free-6.1.2-web/css/all.min.css">
</head>

<body>
    <div class="app">
        <?php require_once './mvc/views/pages/header.php' ?>
        <div class="category">
            <div class="grid">
                <div class="grid-2">
                    <div class="container">
                        <div class="container__sidebar">
                            <?php require_once './mvc/views/Pages/Sidebar.php' ?>
                        </div>
                        <div class="container__content">
                            <div class="container__content-header">
                                <h1 class="container__content-header-title">Xếp Hạng: </h1>
                                <div class="container__content-header-filter">

                                    <div
                                        class="container__content-header-filter-item container__content-header-filter-item-department">
                                        <p class="container__content-header-filter-text">Khoa: </p>
                                        <select name="" id="" class="container__content-header-dropdown">
                                            <option>Công nghệ thông tin</option>
                                        </select>
                                    </div>

                                    <div class="container__content-header-filter-item">
                                        <p class="container__content-header-filter-text">Năm: </p>
                                        <select id="" class="container__content-header-dropdown year-contain"
                                            onchange="yearChange(this)">

                                        </select>
                                    </div>

                                    <div class="container__content-header-filter-item">
                                        <p class="container__content-header-filter-text">Học Kì: </p>
                                        <select name="" id=""
                                            class="container__content-header-dropdown semester-contain"
                                            onchange="semesterChange(this)">

                                        </select>
                                    </div>

                                </div>
                            </div>

                            <div class="container__content-own-rank">
                                <p class="container__content-own-rank-user">Xếp hạng của bạn: <span class="desc">99+</span></p>
                            </div>

                            <!-- <div class="container__content-search">
                                <label for="search" class="container__content-header-filter-text">Tìm Kiếm: </label>
                                <input type="text" name="" id="search" onkeyup="searchID()"
                                    placeholder="Nhập mã sinh viên">
                            </div> -->

                            <div class="grid-3">
                                <table class="container__content-table">
                                    <thead class="container__content-thead">
                                        <tr>
                                            <th class="container__content-thead-title">STT</th>
                                            <th class="container__content-thead-title">Mã SV</th>
                                            <th class="container__content-thead-title" style="width:300px;">Họ Tên</th>
                                            <th class="container__content-thead-title">Lớp</th>
                                            <th class="container__content-thead-title" style="width:200px;">Điểm trung
                                                bình (Hệ 10)</th>
                                        </tr>
                                    </thead>
                                    <tbody class="container__content-tbody">
                                    </tbody>
                            </div>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php require_once './mvc/views/pages/footer.php' ?>
    </div>
    <script src="./public/js/Ranking.js"></script>
    </div>
</body>

</html>