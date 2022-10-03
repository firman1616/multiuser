<?php

defined('BASEPATH') or exit('No direct script access allowed');



class Menu extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('Menu_model', 'menu');

        // if ($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1) {

        //     redirect(base_url("login"));
        // }
    }


    public function index()

    {
        // $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data = [
            'name'    => $this->session->userdata('nama'),
            'title' => 'Menu Management',
            'conten' => 'conten/menu',
            'user' => $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array(),
            'menu' => $this->db->get('user_menu')->result_array()
        ];

        $this->form_validation->set_rules('menu', 'Menu', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/conten', $data);
        } else {
            $table = 'user_menu';
            $data = [
                'nama_menu' => $this->input->post('menu')
            ];
            $this->m_data->simpan_data($table, $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Data Saved
              </div>');
            redirect('menu');
        }
    }

    public function submenu()
    {
        $data = [
            'name'    => $this->session->userdata('nama'),
            'title' => 'Sub Menu Management',
            'conten' => 'conten/submenu',
            'user' => $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array(),
            'subMenu' => $this->menu->getSubMenu(),
            'menu' => $this->db->get('user_menu')->result_array()
        ];

        $this->form_validation->set_rules('submenu', 'Sub Menu', 'required');
        $this->form_validation->set_rules('menu_id', 'Menu', 'required');
        $this->form_validation->set_rules('url', 'Url Menu', 'required');
        // $this->form_validation->set_rules('icon', 'icon', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/conten', $data);
        } else {
            $table = 'user_sub_menu';
            $data = [
                'title' => $this->input->post('submenu'),
                'menu_id' => $this->input->post('menu_id'),
                'url' => $this->input->post('url'),
                'icon' => $this->input->post('icon'),
                'is_active' => $this->input->post('status'),
            ];
            $this->m_data->simpan_data($table, $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
                Data Saved
              </div>');
            redirect('Menu/submenu');
        }
    }
}
