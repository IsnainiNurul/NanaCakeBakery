<?php

namespace Its\Example\Home\Presentation\Web\Controller;

use Its\Example\Home\Presentation\Web\Models\Kue;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;

class IndexController extends Controller
{
    public function initialize(){

    $this->kue = new Kue();
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

    // public function kueAction()
    // {
    //     $kue = $this->db->query("SELECT * FROM  kue")->fetchAll();
    //     $this->view->setVars([
    //         "kues" => $kue,
        
    // ]);



    public function searchAction(){
        $nama = $this->request->getQuery('nama_kue');
        $kue = $this->db->query("SELECT * FROM  kue WHERE nama_kue LIKE '%".$nama."%'")->fetchAll();

        $this->view->setVars([
            "kues" => $kue,


    ]);
    


    }
}