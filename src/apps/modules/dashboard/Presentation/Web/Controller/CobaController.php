<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;
use Phalcon\Security;
use Its\Example\Dashboard\Presentation\Web\Models\Users;
use Phalcon\Mvc\Controller;
use Phalcon\Session\Manager;


class CobaController extends Controller
{
   
    public function indexAction()
    {
        echo 'coba module';
        $alluser = Users::find();
        
        $this->view->setVars([
                "users" =>$alluser,



        ]



        );
        return $this->session->get("user-name");
    }


  

  

}