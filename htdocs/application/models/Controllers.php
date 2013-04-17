<?php

class Application_Model_Controllers extends Zend_Db_Table_Abstract
{
    protected $_name = 'controllers';
    protected $_primary = 'id';
    

    
    /**
     * 
     * @param type 
     * @return type
     */
    
    public function getControllers()
    {
        $select = $this->select();                          
        $result = $this->fetchAll($select);                
        return $result;
    }


}

