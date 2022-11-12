<div class="header">
    <div class="grid">
        <div class="grid-2">
            <div class="header__img">
                <img src="public/images/qnu-banner.png" style="width: 100%;max-height: 400px;" class="header__img-banner">
            </div>
            <div class="header__navbar">
                <ul class="header__navbar-list">
                    <li class="header__navbar-item">
                        <span class="header__navbar-item-home">Trang Chủ</span>
                    </li>
                </ul>
                <ul class="header__navbar-list header__navbar-list-account">
                    <li class="header__navbar-item">
                        <span class="header__navbar-item-identify-number">4</span>
                    </li>
                    <li class="header__navbar-item">
                        <span class="header__navbar-item-line">|</span>
                    </li>
                    <li class="header__navbar-item">
                        <span class="header__navbar-item-name">Hồ Quang Đạt</span>
                    </li>
                    <li class="header__navbar-item">
                        <span class="header__navbar-item-logout"><i class="fa-solid fa-caret-down"></i></span>
                    </li>

                    <ul class="header__navbar-list-dropdown">
                        <li class="header__navbar-list-dropdown-item header__navbar-list-dropdown-change-pass"><i class="fa-solid fa-key"></i>Đổi mật khẩu</li>
                        <li class="header__navbar-list-dropdown-item"><i class="fa-solid fa-right-from-bracket"></i>Thoát</li>
                    </ul>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="model">
    <div class="form">
        <div class="form__header">
            <h1 class="form__header-title">Đổi mật khẩu</h1>
            <i class="fa-solid fa-xmark form__header-cancel"></i>
        </div>
        <div class="form__content">
            <div class="form__content-card">
                <label for="old-pass">Mật khẩu cũ:</label>
                <input type="password" required name="oldPass" id="old-pass">
            </div>

            <div class="form__content-card">
                <label for="new-pass">Mật khẩu mới:</label>
                <input type="password" name="newPass" id="new-pass">
            </div>

            <div class="form__content-card">
                <label for="retype-pass">Nhập lại mật khẩu mới:</label>
                <input type="password" name="retype" id="old-pass">
            </div>
        </div>

        <div class="form__footer">
            <button class="form__footer-submit form__footer-btn">Đổi mật khẩu</button>
            <button class="form__footer-cancel form__footer-btn">Hủy bỏ</button>
        </div>
    </div>
</div>

<script src="./public/js/index.js"></script>
</body>
</html>