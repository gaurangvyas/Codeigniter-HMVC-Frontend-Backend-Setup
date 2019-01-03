<?php
/**
 * Created by PhpStorm.
 * User: Gaurang
 * Date: 9/11/2018
 * Time: 4:52 PM
 */
class Page404 extends MY_Controller
{
    protected $data =   array();
    public function __construct()
    {
        parent::__construct();
    }
    
    public function index()
    {
       // $this->output->set_status_header('404');
        $this->data['title'] = 'Oops 404';  // View name
        $this->render('web/Page404', $this->data);
    }
}