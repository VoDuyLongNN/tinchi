<?php
    class LichSuDKHPModel extends Database
    {
        function loadResult($MaSV,$NamHoc,$HocKy)
        {
            $query = "SELECT  ls.ThaoTac, ls.MaHP, hp.TenHP, ls.MaTK, ls.VaoNgay, ls.status, nh.namBD, hk.hocky, nh.namKT
            FROM lichsudangkyhocphan as ls
            join ketquahoctap as kq on ls.MaHP = kq.MaHocPhan
            join hocphan as hp on ls.MaHP = hp.MaHP
            join hocky as hk on ls.MaHK = hk.ID
            join namhoc as nh on ls.MaNH = nh.ID
            WHERE MaSV = '".$MaSV."' AND nh.namBD = '".$NamHoc."' AND hk.hocky = '".$HocKy."'";

            $result = mysqli_query($this->con,$query);

            $arr = array();

            while($row = mysqli_fetch_assoc($result))
            {
                $arr[] = $row;
            }

            return json_encode($arr);
        }
        

        function loadHPDK(){
            $query = "SELECT  ls.ThaoTac, ls.MaHP, hp.TenHP, ls.MaTK, ls.VaoNgay, ls.status, nh.namBD, hk.hocky, nh.namKT
            FROM lichsudangkyhocphan as ls
            join ketquahoctap as kq on ls.MaHP = kq.MaHocPhan
            join hocphan as hp on ls.MaHP = hp.MaHP
            join hocky as hk on ls.MaHK = hk.ID
            join namhoc as nh on ls.MaNH = nh.ID
            WHERE ls.status = 1";

            $result = mysqli_query($this->con,$query);

            $arr = array();

            while($row = mysqli_fetch_assoc($result))
            {
                $arr[] = $row;
            }

            return json_encode($arr);
        }

        function loadHPBiHuy(){
            $query = "SELECT  ls.ThaoTac, ls.MaHP, hp.TenHP, ls.MaTK, ls.VaoNgay, ls.status, nh.namBD, hk.hocky, nh.namKT
            FROM lichsudangkyhocphan as ls
            join ketquahoctap as kq on ls.MaHP = kq.MaHocPhan
            join hocphan as hp on ls.MaHP = hp.MaHP
            join hocky as hk on ls.MaHK = hk.ID
            join namhoc as nh on ls.MaNH = nh.ID
            WHERE ls.status = 0";

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