apiNamHoc = "http://localhost/tinchi/KetQua/loadNamHoc";
fetch(apiNamHoc)
  .then(function (response) {
    return response.json();
  })
  .then(function (items) {
    var htmls = ``;
    items.map(function (item) {
      htmls += `<option value="${item.ID}">${item.namBD} - ${item.namKT}</option>`;
    });
    document.querySelector(".year-contain").innerHTML = htmls;
  });

apiHocKy = "http://localhost/tinchi/KetQua/loadHocKy";
var listHK = document.querySelector(".semester-contain");
fetch(apiHocKy)
  .then(function (response) {
    return response.json();
  })
  .then(function (items) {
    var htmls = ``;
    items.map(function (item) {
      htmls += `<option value="${item.ID}">${item.hocky}</option>`;
    });
    listHK.innerHTML = htmls;
  });

// Load result to table
var semester = 1;
var year = 1;
var apiXepLoai = `http://localhost/tinchi/Ranking/loadXepHang&IDNamHoc=${year}&ID=${semester}`;
function loatdResult() {
  fetch(apiXepLoai)
    .then(function (response) {
      return response.json();
    })
    .then(function (items) {
      var htmls = "";
      items.forEach((element, index) => {
        htmls += `
                  <tr class="container__content-tbody-row">
                    <th class="col container__content-tbody-row-rank">${index+1}</th>
                    <th class="col">${element.MaSV}</th>
                    <th class="col">${element.HoDem} ${element.ten}</th>
                    <th class="col">${element.MaLop}</th>
                    <th class="col">${element.dtb}</th>
                    <th class="col">${element.diemSo}</th>
                    <th class="col container__content-tbody-row-priortized">
                      ${element.mucdouutien} <span> ${element.tenuutien}</span>
                    </th>
                  </tr>
                `;
      });
      document.querySelector(".container__content-tbody").innerHTML = htmls;
      priortizedHandle()
      ownRankHandler()
    });
}

loatdResult();

function yearChange(obj) {
  year = obj.value;
  apiXepLoai = `http://localhost/tinchi/Ranking/loadXepHang&IDNamHoc=${year}&ID=${semester}`;
  loatdResult();
}

function semesterChange(ojb) {
  semester = ojb.value;
  apiXepLoai = `http://localhost/tinchi/Ranking/loadXepHang&IDNamHoc=${year}&ID=${semester}`;
  loatdResult();
}

// own rank
function ownRankHandler() {
  const idUser = document.querySelector('.header__navbar-item-identify-number')
  const ownRank = document.querySelector('.container__content-own-rank-user .desc')
  const tr = document.querySelectorAll(".container__content-tbody-row")
  ownRank.innerText = "99+"
  var th
  for (var i = 0; i < tr.length; i++){
    th = tr[i].querySelectorAll("th.col")[1]
    if(th)
      if(th.innerText === idUser.innerText)
        ownRank.innerText = tr[i].querySelectorAll("th.col")[0].innerText
  }
}

// mouseover display priortized 
function priortizedHandle(){
   const priortizeds = document.querySelectorAll('.container__content-tbody-row-priortized');
   
   for(const priortized of priortizeds){
      priortized.addEventListener('mouseover', function() {
         priortized.querySelector('.container__content-tbody-row-priortized span').style.display = "block"
      })
      priortized.addEventListener('mouseout', function() {
         priortized.querySelector('.container__content-tbody-row-priortized span').style.display = "none"
      })
   }

}