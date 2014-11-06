<?php

class AdminController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
    $users = Users::find();
    $this->view->setVar("users", $users);
    }
	
     public function createAction()
    {

        $user = new Users();
        $user->users = $this->request->getPost("users");
        $pass = $this->request->getPost("pass");
		$user->pass = sha1($pass);
    
		$user->name = $this->request->getPost("name");
        $user->email = $this->request->getPost("email");
      
        if (!$user->save()) {
            foreach ($user->getMessages() as $message) {
              $this->flashSession->error($message);
            }
			
			
		$this -> response ->redirect('admin');
		$this -> view ->disable();
		return;
            
        }
        $this->flashSession->success ("user was created successfully") ;
        $this -> response ->redirect('admin');
		$this -> view ->disable();
		return;

    }
    
 public function deleteAction($id)
    {

        $user = Users::findFirstByid($id);
        if (!$user) {
            $this->flashSession->error("user was not found");
			$this -> response ->redirect('admin');
			$this -> view ->disable();
			return;
        }

        if (!$user->delete()) {

            foreach ($user->getMessages() as $message) {
                $this->flashSession->error($message);
            }

           $this -> response ->redirect('admin');
			$this -> view ->disable();
			return;
        }

        $this->flashSession->success("user was deleted successfully");

        $this -> response ->redirect('admin');
		$this -> view ->disable();
		return;
    }
	
	
	  public function editAction()
    {

	 $id= $this->request->getPost("uid");
	 $pass1= $this->request->getPost("pass");
	 $pass2= $this->request->getPost("pass2"); 
	 

     $user = Users::findFirstByid($id);
     if (!$user) {
            $this->flashSession->error("user was not found");  
            $this -> response ->redirect('admin');
			$this -> view ->disable();
			return;
     }

     $user->pass = sha1($pass1);
      if (!$user->save()) {
            foreach ($user->getMessages() as $message) {
              $this->flashSession->error($message);
            }
			
			
		$this -> response ->redirect('admin');
		$this -> view ->disable();
		return;
            
        }
        $this->flashSession->success ("user was created successfully") ;
        $this -> response ->redirect('admin');
		$this -> view ->disable();
		return;

         
  
    }
	
	
    }

 
	

   

