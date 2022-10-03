<?php

class Menu_model extends CI_Model
{

    public function getSubMenu()
    {
        return $this->db->query('SELECT
        a.title,
        a.url,
        a.icon,
        a.is_active,
        b.nama_menu 
    FROM
        `user_sub_menu` AS a
        JOIN user_menu AS b ON b.id_menu = a.menu_id')->result_array();
    }
}
