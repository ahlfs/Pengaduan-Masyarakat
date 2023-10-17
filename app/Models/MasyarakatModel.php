<?php

namespace App\Models;

use CodeIgniter\Model;

class MasyarakatModel extends Model
{
    protected $table = "masyarakat";
    protected $primaryKey = "id_masyarakat";
    protected $allowedFields = ["nik", "username", "password", "telepon"];
    protected $useTimestamps = true;
    
}