<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;
use Its\Example\Dashboard\Presentation\Web\Models\Jenis_kue;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;

class UploadjeniskueController extends Controller
{
    public function initialize(){
        $this->jeniskue = new Jenis_kue();
    }
    public function indexAction()
    {
        //     ]
        // );
        if($this->session->get('user-admin') == 0){
            return $this->response->redirect('/home');
        }
   
    }
    
    public function uploadAction(){      

        if($this->request->isPost()){
            $this->jeniskue->assign(
                $this->request->getPost(),
                [
                    'nama_jenis_kue',
                    'detail_jenis_kue'
                ]
            );
             $this->jeniskue->gambar_jenis_kue=$this->request->getPost('gambar_jenis_kue');

            if ($this->request->hasFiles() == true) {
                $file = file_get_contents($_FILES['gambar_jenis_kue']['tmp_name']);
                $file = base64_encode($file);
                $this->jeniskue->gambar_jenis_kue = $file;
            }
            if($this->jeniskue->save()){
                $this->response->redirect();
            }
            else{
                return "upload gagal";
            }
        } 
    }

    public function deleteAction($id){
        $id = Jenis_kue::findFirst("id_jenis_kue =".$id);
        // return var_dump($id);
        if($id->delete()){
            return $this->response->redirect($this->request->getHTTPReferer());
        }
   
    }

    public function editAction($id)
    {
       $jeniskue = Jenis_kue::findFirst($id);
        
    //    return $jeniskue->nama_jenis_kue;
       $this->view->setVars([

            'jeniskue' => $jeniskue,
            'id'     => $id
        ]);
    }

    public function editpostAction()
    { 
        $this->jeniskue = Jenis_kue::findFirst("id_jenis_kue=".$this->request->getPost('id_kue'));
        $this->jeniskue->assign(
            $this->request->getPost(),
        );
        
        if ($this->request->hasFiles() == true) {
            
            $file = file_get_contents($_FILES['gambar_jenis_kue']['tmp_name']);
            $file = base64_encode($file);
            $this->jeniskue->gambar_jenis_kue = $file;
            
        }
        if($this->jeniskue->update()){
            return $this->response->redirect("/dashboard");
        }
        else{
            return "Update Gagal";
        }

    }

    
}