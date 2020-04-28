<?php

namespace Its\Example\Home\Presentation\Web\Controller;
use Its\Example\Home\Presentation\Web\Models\Formpembelian;
use Its\Example\Home\Presentation\Web\Models\Kue;
use Its\Example\Home\Presentation\Web\Models\Transaksi;
use Its\Example\Home\Presentation\Web\Models\Keranjang;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;

class TransaksiController extends Controller
{
    public function initialize(){
        $this->formpembelian = new Formpembelian();
    }

    public function indexAction()
    {
        
        // $id = $this->request->getQuery('username');
        // $id = 
        // $this->view->setVars([
        //     'id' => $id,

        // ]);


    }


    public function listAction()
    {
       $list = $this->db->query("SELECT formpembelian.*,transaksi.* from transaksi,formpembelian Where transaksi.idform =formpembelian.id_formpembelian AND formpembelian.username ='".$this->session->get('user-name')."'")->fetchAll();

       $this->view->setVars([

        "lists"    => $list


       ]);
        //  return "Ini List Transaksi";
    }

    public function detailtransaksiAction()
    {
        
        $id = $this->request->getQuery("id");
        $transaksi = $this->db->fetchOne("SELECT * from transaksi where id = '".$id."'");
        
        $detail = $transaksi['dekripsi'];
        $dekripsi = explode(",",$detail);
        $count = count($dekripsi);
        $i=0;
        $detailnya = "";
        $total = 0;
        foreach($dekripsi as $d){
        $i++;
            if($i == $count)
                break;
            $querya = $this->db->fetchOne("SELECT kue.*,keranjang.* from keranjang,kue where keranjang.idkue = kue.id_kue AND id = '".$d."'");
            $detailnya = $detailnya.$i.".Nama Kue = ".$querya['nama_kue']."<br>Harga Kue = Rp.".$querya['harga_kue']."<br> Jumlah Pembelian = ".$querya['jumlah']."<br>Total = Rp.".$querya['harga_kue'] * $querya['jumlah']."<br><br>";
            $total =$total + ($querya['harga_kue'] * $querya['jumlah']);
    }
    $detailnya =$detailnya."<strong><br><br>Total Pembayaran = Rp.".$total."</strong>";
    
    $this->view->setVars([

        "detail" => $detailnya,
    ]);
    }

    public function uploadAction(){
        echo "ini upload";
        $transaksi = Transaksi::findFirst($this->request->getPost('id'));
        if ($this->request->hasFiles() == true) {
            $file = file_get_contents($_FILES['buktitransfer']['tmp_name']);
            $file = base64_encode($file);
            $transaksi->buktitransfer = $file;
            $transaksi->status = "Dibayar";
            
        }
        if($transaksi->update()){
            return $this->response->redirect('/home/transaksi/list/');
        }
    }

    public function storeAction(){
        if($this->request->isPost()){
            
            $this->formpembelian->assign(
            
                $this->request->getPost(),
                [
                    'nama_pembeli_formpembelian',
                    'no_hp_formpembelian', ]
            );

            $this->formpembelian->username=$this->session->get('user-name');

            $this->formpembelian->email_formpembelian=$this->request->getPost('email_formpembelian');

            $this->formpembelian->alamat_tujuan_formpembelian=$this->request->getPost('alamat_tujuan_formpembelian');

            // return var_dump($this->formpembelian);
            if($this->formpembelian->save()){
                $transaksi = new Transaksi();
                $transaksi->idform = $this->formpembelian->id_formpembelian;
                $detail = " ";

                $keranjangs = $this->db->query("SELECT kue.*,keranjang.* FROM keranjang,kue WHERE kue.id_kue = keranjang.idkue AND keranjang.selesai = 0 AND username = '".$this->session->get('user-name')."'")->fetchAll();
                foreach ($keranjangs as $keranjang){

                    $kue = Kue::findFirst($keranjang['idkue']);
                    $kue->jumlahstok_kue = $kue->jumlahstok_kue - $keranjang['jumlah'];
                    //  $kue->selesai = 1;
                    $kue->update();

                    $detail = $detail.$keranjang['id'].",";



                    $dalamkeranjang = Keranjang::findFirst($keranjang['id']);
                    $dalamkeranjang->selesai = 1;
                    $dalamkeranjang->update();

                }
                $transaksi->dekripsi = $detail;
                $transaksi->save();



               $this->response->redirect("/home/transaksi/list");
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

