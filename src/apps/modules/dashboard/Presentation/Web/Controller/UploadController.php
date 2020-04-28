<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Its\Example\Dashboard\Presentation\Web\Models\Kue;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;

class UploadController extends Controller
{
    public function initialize(){
        $this->kue = new Kue();
        if($this->session->get('user-admin') == 0){
            return $this->response->redirect('/home');
        }
    }
    public function indexAction()
    {
        $jeniskue = $this->db->query("Select * from jenis_kue")->fetchAll();
        $this->view->setVars([
            "jeniskues" =>  $jeniskue,
        ]);
    }
    public function uploadAction(){        
        if($this->request->isPost()){
            $this->kue->assign(
                $this->request->getPost(),
                [
                    'nama_kue',
                    'harga_kue'
                ]
            );
             $this->kue->detail_kue=$this->request->getPost('detail_kue');
             $this->kue->jumlahstok_kue=$this->request->getPost('jumlahstok_kue');
             $this->kue->nama_jenis_kue=$this->request->getPost('nama_jenis_kue');
             $this->kue->gambar_kue=$this->request->getPost('gambar_kue');
            if ($this->request->hasFiles() == true) {
                $file = file_get_contents($_FILES['gambar_kue']['tmp_name']);
                $file = base64_encode($file);
                $this->kue->gambar_kue = $file;
            }
            if($this->kue->save()){
                $this->response->redirect();
            }
            else{
                return "upload gagal";
            }
        } 
    }

    public function deleteAction($id){
        $id = Kue::find($id);
        if($id->delete()){
            return $this->response->redirect($this->request->getHTTPReferer());
        }
   
    }

    public function editAction($id)
    {
       $kue = kue::findFirst($id);
        $this->view->setVars([
            'kue' => $kue,

        ]);
    }

    public function editpostAction()
    { 
        $this->kue = Kue::findFirst($this->request->getPost('id_kue'));
        $this->kue->assign(
            $this->request->getPost(),
        );
        if ($this->request->hasFiles() == true) {
            $file = file_get_contents($_FILES['gambar_kue']['tmp_name']);
            $file = base64_encode($file);
            $this->kue->gambar_kue = $file;
        }
        if($this->kue->update()){
            return $this->response->redirect("/dashboard");
        }
        else{
            return "Update Gagal";
        }
    }
}
