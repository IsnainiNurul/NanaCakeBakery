<?php

namespace Its\Example\Home\Presentation\Web\Controller;
use Phalcon\Security;
use Its\Example\Home\Presentation\Web\Models\Keranjang;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;


class KeranjangController extends Controller
{
    public function initialize(){
        $this->keranjang = new Keranjang();
    }

    public function indexAction()
    {
       $keranjang = $this->db->query("SELECT kue.*,keranjang.* FROM keranjang,kue WHERE kue.id_kue = keranjang.idkue AND keranjang.selesai = 0 AND username = '".$this->session->get('user-name')."'")->fetchAll();

       $this->view->setVars([

        "keranjangs"    => $keranjang


       ]);
        // return "Ini Keranjang";
    }

    public function storeAction(){

        $this->keranjang->jumlah = $this->request->getQuery('jumlah');
        $this->keranjang->idkue = $this->request->getQuery('idkue');
        $this->keranjang->username = $this->session->get('user-name');
        if($this->keranjang->save()){
            return $this->response->redirect('/home/keranjang');
        }
    }
    public function hapusAction($id){
        $keranjang = Keranjang::findFirst($id);
        if($keranjang->delete()){
            return $this->response->redirect('/home/keranjang/');
        }
        else{

            return "Hapus Id ".$id." Gagal";
        }
        


    }


  

  

}