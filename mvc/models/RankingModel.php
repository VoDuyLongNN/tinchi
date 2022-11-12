<?php
   class RankingModel extends Database
   {
      function loadXepHang($NamHoc,$HocKy)
      {
         $query = "SELECT DISTINCT sv.MaSV, sv.HoDem, sv.ten, sv.MaLop, dtb.dtb
         FROM sinhvien as sv
         JOIN diemtrungbinh as dtb on sv.MaSV = dtb.idsv
         WHERE dtb.idnamhoc = '".$NamHoc."'
         AND dtb.idhk = '".$HocKy."'
         ORDER BY dtb.dtb DESC
         LIMIT 50";

         $result = mysqli_query($this->con,$query);

         $arr = array();

         while($row = mysqli_fetch_assoc($result))
         {
            $arr[] = $row;
         }  

         return json_encode($arr);
      }
   }
?>