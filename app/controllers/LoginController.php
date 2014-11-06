<?php

class LoginController extends ControllerBase
{

    public function indexAction()
    {

    }
	 public function logoutAction()
    {
        //Destroy the whole session
        $this->session->destroy();
	 $this->response->redirect('/index');
    }


	  public function checkAction()
    {

   $users=$this->request->getPost("users");
   $pass =$this->request->getPost("pass");
   $u= Users::findFirstByUsers($users);//หาแถวแล้วเอาค่ามาใส่ใน u
   if ($u->pass==$pass){
   $this->session->set("username",$u->users);
    $this->session->set("lg_in","1");
  return $this->response->redirect("");
  }
  
   else {

   $this->flashSession->error ("Username or Password incorrect.") ;
   

   
  return $this->response->redirect("login");
   
		 }
    }

	
	
	
}

