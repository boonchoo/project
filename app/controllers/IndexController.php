<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {
if ($this->session->has("username")) {
            //Retrieve its value
            $this->view->name = $this->session->get("username");// ส่งตัวแปรไปใช้งานใน view
        }
    }

}

