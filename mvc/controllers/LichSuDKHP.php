<?php
    class LichSuDKHP extends Controller
    {
        private $model;

        public function __construct()
        {
            $this->model = $this->model("LichSuDKHPModel");
        }

        public function show()
        {
            $this->view("LichSuDKHP");
        }

        public function loadResult()
        {
            $MaSV = isset($_GET["MaSV"]) ? $_GET["MaSV"] : null;
            $NamHoc = isset($_POST["namHocChanged"]) ? $_POST["namHocChanged"] : null;
            $HocKy = isset($_POST["hocKyChanged"]) ? $_POST["hocKyChanged"] : null;

            $result = $this->model->loadResult(2,$NamHoc,$HocKy);

            echo $result;
        }

        public function loadHPDK()
        {
            $result = $this->model->loadHPDK();

            echo $result;
        } 

        public function loadHPBiHuy()
        {
            $result = $this->model->loadHPBiHuy();

            echo $result;
        } 
    }
?>