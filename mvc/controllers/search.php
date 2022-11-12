<?php
    class search extends Controller
    {
        private $model;

        public function __construct()
        {
            $this->model = $this->model("SearchModel");
        }

        public function show()
        {
            $this->view("search");
        }

        public function loadResult()
        {
            $keywords = isset($_POST["keywords"]) ? $_POST["keywords"] : null;

            $result = $this->model->loadResult($keywords);

            echo $result;
        }
    }
?>