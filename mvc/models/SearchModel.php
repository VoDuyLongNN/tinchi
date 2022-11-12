<?php
    class SearchModel extends Database
    {
        function loadResult($keywords)
        {
            $query = "SELECT tchp.MaHP, tchp.MaLHP, tchp.TenKhoa, tchp.TenHP, tchp.STc, tchp.Loai, tchp.ThongTin, tchp.GiangVien, tchp.GioiHan, tchp.TuNgay, tchp.DenNgay 
            FROM tracuuhocphan as tchp
            WHERE tchp.MaHP = '".$keywords."'
            OR tchp.TenKhoa like '".'%'.$keywords.'%'."'  
            OR tchp.tenHP like '".'%'.$keywords.'%'."'";

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