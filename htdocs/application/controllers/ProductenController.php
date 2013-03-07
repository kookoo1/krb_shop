<?php

class ProductenController extends Zend_Controller_Action {

    public function init() {
        /* Initialize action controller here */
    }

    public function indexAction() {
        // action body
    }

    public function overviewAction() {
        // action body
        $productenModel = new Application_Model_Producten();
        $producten = $productenModel->fetchAll(); // haal alles op
        $this->view->producten = $producten;
    }

}

