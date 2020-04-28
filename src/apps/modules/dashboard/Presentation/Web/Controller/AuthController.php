<?php
namespace Its\Example\Dashboard\Presentation\Web\Controller;
use Its\Example\Dashboard\Presentation\Web\Models\Pelanggan;
use Phalcon\Mvc\Controller;
use Phalcon\Security;
use Phalcon\Session\Manager;

class AuthController extends Controller
{
    public function initialize(){
        $this->pelanggan = new pelanggan();
        $this->security = new Security();
    }

    public function indexAction()
    {
        echo 'Auth page';
    }

    public function loginAction(){
        if($this->request->isPost()){
            $this->pelanggan->assign(
                $this->request->getPost(),
                [
                    'username_pelanggan',
                    'password_pelanggan'
                ]
            );
          
            $check = $this->db->query("select * from  pelanggan where username_pelanggan = '".$this->pelanggan->username_pelanggan."'")->fetchAll();
            if($check){
                foreach($check as $cek){
                    if($this->security->checkHash($this->pelanggan->password_pelanggan,$cek['password_pelanggan'])){
                        $this->session->set('user-name', $cek['username_pelanggan']);
                        $this->session->set('user-admin', $cek['is_admin']);
                        return $this->response->redirect("dashboard");
                    }
                    else {                  
                        $this->security->hash(rand());
                        $this->view->message = "Maaf password yang Anda masukkan salah, Silahkan coba lagi";                   
                        return $this->view;                
                    }
                }        
            }
            else{
                $this->view->message = "username tidak ditemukan";
                return $this->view;                        
            }
        }
    }

    public function logoutAction()
    {
        $this->session->destroy();
        return $this->response->redirect();
    }

    public function registerAction()
    {
        if($this->request->isPost()){          
            $this->pelanggan->assign(
                $this->request->getPost(),
                [
                    'username_pelanggan',
                    'password_pelanggan',
                    'email_pelanggan', 
                ]
            );
        $check = $this->db->query("select * from  pelanggan where username_pelanggan = '".$this->pelanggan->username_pelanggan."'")->fetchAll();
        $this->pelanggan->jenis_kelamin_pelanggan=$this->request->getPost('jenis_kelamin_pelanggan');
        $this->pelanggan->alamat_pelanggan=$this->request->getPost('alamat_pelanggan');
        $this->pelanggan->nohp_pelanggan=$this->request->getPost('nohp_pelanggan');
      
  
        if($check){
            foreach($check as $coba){
                $this->view->message = "username_pelanggan ".$coba['username_pelanggan']." telah digunakan";
             }
        }
        else{
            $this->pelanggan->password_pelanggan = $this->security->hash($this->pelanggan->password_pelanggan);
            if($success = $this->pelanggan->save()){
                $this->view->message = "Selamat, Registrasi akun telah berhasil";
                $this->session->set('user-name', $this->pelanggan->username_pelanggan);
                $this->session->set('user-admin', $this->pelanggan->isAdmin);
                return $this->response->redirect('/home');
                
            }
            else{
                return "tidak berhasil";
              
            }
        }
        
        }

    
    }


}