<?php 

class JsonUserPersister{
    private $basePath;

    public function __construct($basePath)
    {
        $this->basePath = $basePath;
    }

    public function persist(User $user)
    {
        $data = $user->getAttributes();
        $json = json_encode($data);
        $filename = $this->basePath.'/'.$user->id.'.json';
        file_put_contents($filename, $json, LOCK_EX);
    }
}