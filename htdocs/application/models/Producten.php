<?php

class Application_Model_Producten extends Zend_Db_Table_Abstract
{
   // definiëren hoe de tabel eruit ziet 
    
    protected $_name = 'producten';
    protected $_primary = 'id';
    
    public function getAllProducten()
    {   
        // Zend_Db_Select
        /*$db = Zend_Registry::get('db');
        $select = $db->select();
        $select->from('nieuws');
        $select->where(// search criteria)
        $select->order(// search criteria)*/
        
        $this->fetchAll(); // select * from nieuws
    }
    public function selectProducten($params)
    {
       // $params = array('titel' => 'lipsum', 'omschrijving' => 'bla bla');
       $this->select($params);
       
    }
    /*
    public function toevoegenNieuws($params)
    {
       // $params = array('titel' => 'lipsum', 'omschrijving' => 'bla bla');
       $this->insert($params);
       
    }
    
    public function wijzigenNieuws($params, $id)
    {
       // $params = array('titel' => 'lipsum', 'omschrijving' => 'bla bla');
       
       // beveilig de variabele dmv de adapater 
       $where = $this->getAdapter()->quoteInto('id = ?', $id); 
        
       $this->update($params, $where);
       
    }
    
    public function verwijderNieuws($id)
    {
       // beveilig de variabele dmv de adapater 
       $where = $this->getAdapter()->quoteInto('id = ?', $id); 
        
       $this->delete($where);
       
    }
    */
    
}


