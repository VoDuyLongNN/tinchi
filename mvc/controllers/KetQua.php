<?php
    header("Access-Control-Allow-Origin: *");
    class KetQua extends Controller
    {
        private $model;

        public function __construct()
        {
            $this->model = $this->model("KetQuaModel");
        }

        public function show()
        {
            $this->view("KetQua");
        }

        public function loadResult()
        {
            $MaSV = isset($_GET["MaSV"]) ? $_GET["MaSV"] : null;
            $NamHoc = isset($_POST["namHoc"]) ? $_POST["namHoc"] : null;
            $HocKy = isset($_POST["hocKy"]) ? $_POST["hocKy"] : null;

            $result = $this->model->loadResult(2,$NamHoc,$HocKy);

            echo $result;
        }

        public function loadPoint()
        {
            $MaSV = isset($_GET["MaSV"]) ? $_GET["MaSV"] : null;
            $NamHoc = isset($_POST["namHocChanged"]) ? $_POST["namHocChanged"] : null;
            $HocKy = isset($_POST["hocKyChanged"]) ? $_POST["hocKyChanged"] : null;
            $result = $this->model->loadPoint(2,$NamHoc,$HocKy);

            echo $result;
        }

        public function loadNamHoc()
        {
            $KhoaHoc = isset($_GET["KhoaHoc"]) ? $_GET["KhoaHoc"] : null;

            $result = $this->model->loadNamHoc('K43');

            echo $result;
        }

        public function loadHocKy()
        {
            $result = $this->model->loadHocKy();

            echo $result;
        }

        public function loadDetail()
        {
            $ID = isset($_POST["ID"]) ? $_POST["ID"] : null;

            $result = $this->model->loadDetail($ID);

            echo $result;
        }
    }
?>