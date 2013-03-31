<?php

class ProductenController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function overviewAction()
    {
        // action body
        $productenModel = new Application_Model_Producten();
        $producten = $productenModel->getAllProducten(); // haal alles op
//        $producten = $productenModel->fetchAll();
        //var_dump($producten);
        $this->view->producten = $producten;
        
        
    }

    public function detailsAction()
    {
       $id = $this->_getParam('id'); // $_GET['id']
          
        $productenModel = new Application_Model_Producten();
        $producten = $productenModel->find($id)->current(); // select * from nieuws where id = $id
        //var_dump($producten);

        //$product->populate($producten->toArray());
       // $form = new Application_Form_Nieuws();
        //$form->populate($nieuws->toArray()); // omzetten in array om het formulier op te vullen
        
        // populate form the odd way ...
        
        /*$form->getElement('titel')->setValue($nieuws['titel']);
        $form->getElement('omschrijving')->setValue($nieuws['omschrijving']);*/
        
        $this->view->producten = $producten;

    }


}



