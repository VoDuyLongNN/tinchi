const account = document.querySelector('.header__navbar-list-account')
const dropDownList = document.querySelector('.header__navbar-list-dropdown')

account.addEventListener('click', function() {
   dropDownList.classList.toggle("open")
})

const modelOpenBtn = document.querySelector('.header__navbar-list-dropdown-change-pass')
const model = document.querySelector('.model')
const cancelIcon = document.querySelector('.form__header-cancel')
const cancelBtn = document.querySelector('.form__footer-cancel')
const submitBtn = document.querySelector('.form__footer-submit')

modelOpenBtn.addEventListener('click', function() {
   model.classList.toggle('open')
})

function modelClose(){
   model.classList.toggle("open")
}

cancelIcon.addEventListener('click', modelClose)
cancelBtn.addEventListener('click', modelClose)

submitBtn.addEventListener('click', function() {
   alert("Cập nhập mật khẩu thành công!")
})