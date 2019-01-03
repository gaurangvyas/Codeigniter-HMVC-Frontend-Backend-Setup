<?php (defined('BASEPATH')) OR exit('No direct script access allowed');
/** load the CI class for Modular Extensions **/
require dirname(__FILE__).'/Base.php';
/**
 * Modular Extensions - HMVC
 *
 * Adapted from the CodeIgniter Core Classes
 * @link	http://codeigniter.com
 *
 * Description:
 * This library replaces the CodeIgniter Controller class
 * and adds features allowing use of modules and the HMVC design pattern.
 *
 * Install this file as application/third_party/MX/Controller.php
 *
 * @copyright	Copyright (c) 2015 Wiredesignz
 * @version 	5.5
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 **/
class MX_Controller
{
  public $autoload = array();
  protected $data = array();
  public function __construct()
  {
    $class = str_replace(CI::$APP->config->item('controller_suffix'), '', get_class($this));
    log_message('debug', $class." MX_Controller Initialized");
    Modules::$registry[strtolower($class)] = $this;

    /* copy a loader instance and initialize */
    $this->load = clone load_class('Loader');
    $this->load->initialize($this);

    /* autoload module items */
    $this->load->_autoloader($this->autoload);

  }

  public function __get($class)
  {
    return CI::$APP->$class;
  }

  public function getSession($key){
    $userSession = $this->session->userdata('userSession');
    switch($key){
      case 'email':
        return 	$userSession['email'];
        break;
      case 'name':
        return $userSession['name'];
        break;
      case 'user_id':
        return $userSession['user_id'];
        break;
      case 'status':
        return $userSession['status'];
        break;
    }
  }

  protected function render($the_view = NULL, $template = 'master')
  {
	//var_dump($this->getSession('user_id'));
    if($template == 'json' || $this->input->is_ajax_request())
    {
      header('Content-Type: application/json');
      echo json_encode($this->data);
    }
    elseif(is_null($template))
    { 
      $this->load->view($the_view,$this->data);
    }
    else
    {

      if($this->getSession('user_id') == 1){
        $themes='backend';
      }else{
        $themes='frontend';
        $this->data['contact'] = '';
      }

      $this->data['logo'] =    '';
      $this->data['contents'] = (is_null($the_view)) ? '' : $this->load->view($themes.'/'.$the_view,$this->data, TRUE);
      $this->load->view($themes.'/home', $this->data);
    }
  }
  
}