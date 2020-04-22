<?php

namespace Its\Example\Home\Presentation\Web\Controller;
use Its\Example\Home\Presentation\Web\Models\Formpembelian;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;

class TransaksiController extends Controller
{
    public function initialize(){
        $this->formpembelian = new Formpembelian();
    }

    public function indexAction()
    {
        $id = $this->request->getQuery('transaksi');
        
        $this->view->setVars([
            'id' => $id,

        ]);

    }

    public function storeAction(){
        if($this->request->isPost()){
            $this->formpembelian->assign(
                $this->request->getPost(),
                [
                    'nama_pembeli_formpembelian',
                    'no_hp_formpembelian',
                    'id_kue'               ]
            );

            $this->formpembelian->email_formpembelian=$this->request->getPost('email_formpembelian');

            $this->formpembelian->alamat_tujuan_formpembelian=$this->request->getPost('alamat_tujuan_formpembelian');

            // return var_dump($this->formpembelian);
            if($this->formpembelian->save()){
              $this->response->redirect("/home/transaksi/beli/?id=".$this->formpembelian->id_formpembelian);
            }
            else{
                return "Transaksi gagal";
            }
        } 
    }

    public function beliAction()
    {
        $formpembelians = $this->db->query("Select * from formpembelian where nama_pembeli_formpembelian= '".$this->request->getQuery('transaksiberhasil')."'")->fetchAll();
        $jeniskues = $this->db->query("Select * from jenis_kue where id_jenis_kue = '".$this->request->getQuery('transaksiberhasil')."'")->fetchAll();
        $kues = $this->db->query("Select * from kue where id_kue = '".$this->request->getQuery('transaksiberhasil')."'")->fetchAll();
        $this->view->setVars([
        "formpembelians" => $formpembelians,
        "jeniskues" =>$jeniskues,
        "kues" =>$kues,
            ]
        );

    }

}

