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

            $NamHoc = isset($_POST["namHocChanged"]) ? $_POST["namHocChanged"] : null;
            $HocKy = isset($_POST["hocKyChanged"]) ? $_POST["hocKyChanged"] : null;

            $result = $this->model->loadResult($NamHoc,$HocKy);

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
        // 9/11
        public function loadDSSV()
        {
            $MaHP = isset($_POST["MaLopHP"]) ? $_POST["MaLopHP"] : null;
            $MaHK = isset($_POST["MaHK"]) ? $_POST["MaHK"] : null;
            $MaNH = isset($_POST["MaNH"]) ? $_POST["MaNH"] : null;

            $result = $this->model->loadDSSV($MaHP,$MaHK,$MaNH);

            echo $result;
        } 
        
        public function cancelHP(){
            $MaHP = isset($_POST["MaHP"])? $_POST["MaHP"] : null;
            $result = $this->model->cancelHP($MaHP);

        }

        public function changedHP(){
            $MaLopHP = isset($_POST["MaLopHP"])? $_POST["MaLopHP"] : null;
            $result = $this->model->changedHP($MaLopHP);
            return $result;
        }
    }
?>