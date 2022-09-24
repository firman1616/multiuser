<?php

defined('BASEPATH') or exit('No direct script access allowed');



class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        // if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {

        //     redirect(base_url("login"));
        // }
    }


    public function index()

    {
        // $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data = [

            'name'    => $this->session->userdata('nama'),
            'title' => 'User Profile',
            'conten' => 'conten/user',
            'user' => $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array()
        ];

        $this->load->view('template/conten', $data);
    }
}
