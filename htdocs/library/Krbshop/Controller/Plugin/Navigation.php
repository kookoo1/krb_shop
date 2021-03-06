<?php

class Krbshop_Controller_Plugin_Navigation extends Zend_Controller_Plugin_Abstract
{
    /**
     * 
     * @param \Zend_Controller_Request_Abstract $request
     * @return \Zend_Navigation
     */
    public function preDispatch(\Zend_Controller_Request_Abstract $request) {
 
        
        /*
// the old way        
        // make navigation
        $container = new Zend_Navigation();
        $urls = array(
            array('label' => 'Home', 'action' => 'index', "controller" => 'index', 'params' => array()),
            array('label' => 'Producten', 'action' => 'overview', 'controller' => 'producten', 'params' => array()),
        );
        
        foreach ($urls as $url){
            $page = new Zend_Navigation_Page_Mvc(array(
                'label'         => $url['label'],
                'action'        => $url['action'],
                'controller'    => $url['controller'],
                'route'         => 'default',
                'params'        => $url['params']
            ));
            $container->addPage($page);
        }
        Zend_Registry::set('Zend_Navigation', $container);
        return $container;2
        
*/      
      
       
        // the new way with the DB and tranlation
        $locale = Zend_Registry::get('Zend_Locale');
        $model = new Application_Model_Page();
        $pages = $model->getMenu($locale);
        
//        var_dump($pages);
//        die;
        $container = new Zend_Navigation();
        
        foreach ($pages as $page) {
            
            $menu = new Zend_Navigation_Page_Mvc (
            
            array ('label' => $page['title'],
                   //'controller' => 'index',
                  'route'  => 'page', // de route om mooiere URL te maken
            //        'route'  => $page['slug'], // de route om mooiere URL te maken
                    'params' => array('slug' =>$page['slug'],
                                        'lang' => $locale)));
            
//                                var_dump($menu);
            $container->addPage($menu);
        }
//        die;
        Zend_Registry::set('Zend_Navigation',$container);        
        

        
    }
 }

