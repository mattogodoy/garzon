<?php

	class Comercio extends CI_Controller {

		public function ver($algo = 0)
		{
			$data['title'] = "Listado de comercios";
			$data['coso'] = "un string que viene desde el controlador y viene con parametro $algo.";
	
			$this->load->view('templates/header', $data);
			$this->load->view('comercios', $data);
			$this->load->view('templates/footer', $data);

		}
	}

?>