<?php
/**
 * PDO implementation to CRUD
 */
class PDOCRUDAdapter implements CRUDAdapter {

    /**
     * Need a connection to the database
     */
    private $pdodbadapter;

    /**
     * Constructor
     */
    public function __construct($pdodbadapter) {
        $this->pdodbadapter =$pdodbadapter;
    }
    
    /**
     * Save inside the DB
     */
    public function save($instance) {
        if($instance->isNew()) {
            $this->insert($instance);
        } else {
            $this->update($instance);
        }
    }
    
    
    /**
     * Insert INTO ....
     */
    private function insert($instance) {
        $tableName = $instance->getTableName();
        
    
        $sql = "INSERT INTO $tableName VALUES(NULL";
        
        $vars = get_class_vars(get_class($instance));
        $nb = count($vars);
        
        for($i = 0;$i<$nb;$i++)
            $sql = $sql.",?";
        $sql = $sql .")";

        $values = array();
        foreach($vars as $k=>$v) {
            $values[] = $instance->$k;
        }
        $this->pdodbadapter->prepare($sql);
        $this->pdodbadapter->execute($values);
        $instance->setId($this->pdodbadapter->lastInsertId());
    }
    
    
    /**
     * UPDATE ...
     */
    public function update($instance) {
        $tableName = $instance->getTableName();
        $sql = "UPDATE $tableName SET ";
        $vars = get_class_vars(get_class($instance));
        
        $values = array();
        $first = true;
        foreach($vars as $k=>$v) {
            $values[] = $instance->$k;
            if($first==false)
                $sql = $sql .",";
            $sql = $sql . "$k = ?";
            $first =false;
        }
        
        $sql = $sql."WHERE id=?";
        $values[] = $instance->getId();
        $this->pdodbadapter->prepare($sql);
        $this->pdodbadapter->execute($values);
        
    }
    
    /**
     * DELETE FROM ....
     */
    public function delete($instance) {
        if($instance->isNew==false) {
            return;
        }
        
        $tableName = $instance->getTableName();
        
        $sql = "DELETE FROM $tableName WHERE id=?";
        
        $this->pdodbadapter->prepare($sql);
        $this->pdodbadapter->execute(array($instance->getId()));
    }
}


?>