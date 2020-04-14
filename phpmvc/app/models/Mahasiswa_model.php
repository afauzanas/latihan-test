<?php

class Mahasiswa_model {
  private $table = 'mahasiswa';
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }

  public function getAllMahasiswa()
  {
    $this->db->query('SELECT * FROM ' . $this->table);
    return $this->db->resultSet();
  }

  public function getMahasiswaById($id)
  {
    $this->db->query('SELECT * FROM ' . $this->table . ' WHERE nim=:id');
    $this->db->bind('id', $id);
    return $this->db->single();
  }

  public function tambahDataMahasiswa($data)
  {
    $query = "INSERT INTO mahasiswa
              values
              (:nim, :nama, :tempat_lahir, :tanggal_lahir, :jk, :agama, :prodi, :jenjang, :status, :angkatan)";
    
    $this->db->query($query);
    $this->db->bind('nim', $data['nim']); //tambahan yang beda dengan dari youtube
    $this->db->bind('nama', $data['nama']);
    $this->db->bind('tempat_lahir', $data['tempat_lahir']);
    $this->db->bind('tanggal_lahir', $data['tanggal_lahir']);
    $this->db->bind('jk', $data['jk']);
    $this->db->bind('agama', $data['agama']);
    $this->db->bind('prodi', $data['prodi']);
    $this->db->bind('jenjang', $data['jenjang']);
    $this->db->bind('status', $data['status']);
    $this->db->bind('angkatan', $data['angkatan']);
    
    $this->db->execute();

    return $this->db->rowCount();

  }

  public function hapusDataMahasiswa($id)
  {
    $query = "DELETE FROM mahasiswa WHERE nim = :id";
    $this->db->query($query);
    $this->db->bind('id', $id);

    $this->db->execute();

    return $this->db->rowCount();
  }

}
?>
