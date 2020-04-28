<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;
use Its\Example\Dashboard\Presentation\Web\Models\Kue;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;

class IndexController extends Controller
{
    public function initialize(){
    $this->kue = new Kue();
    if($this->session->get('user-admin') == 0){
        return $this->response->redirect('/home');
    }

    }
    public function indexAction()
    {
        
        $kue = $this->db->query("SELECT * FROM  kue")->fetchAll();

        $jeniskue = $this->db->query("SELECT * FROM  jenis_kue")->fetchAll();

        $this->view->setVars([
            "kues" => $kue,
            "jeniskues"      => $jeniskue


    ]);
    }

    public function kueAction()
    {
        $kue = $this->db->query("SELECT * FROM  kue")->fetchAll();
        $this->view->setVars([
            "kues" => $kue,
            "jeniskues" => $jeniskue
    ]);

    }

    public function jeniskueAction()
    {
        $jeniskue = $this->db->query("SELECT * FROM  jenis_kue")->fetchAll();
        $this->view->setVars([
            "jeniskues" => $jeniskue
    ]);


    }


}