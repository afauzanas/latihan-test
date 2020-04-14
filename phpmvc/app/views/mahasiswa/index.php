<div class="container mt-3">

  <div class="row">
    <div class="col-lg-6">
      <?php Flasher::flash(); ?>
    </div>
  </div>

    <div class="row">
      <div class="col-lg-6">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#formModal">
          Tambah Data Mahasiswa
        </button>
        <br><br>
        <h3>Daftar Mahasiswa</h3>
        <ul class="list-group">
          <?php foreach( $data['mhs'] as $mhs ) : ?>
          <li class="list-group-item">
            <?= $mhs['nama']; ?>
            <a href="<?= BASEURL; ?>/mahasiswa/hapus/<?= $mhs ['nim']; ?>"
             class="badge badge-danger float-right ml-1" onclick="return confirm('yakin?');"> Hapus </a>
            <a href="<?= BASEURL; ?>/mahasiswa/detail/<?= $mhs ['nim']; ?>" 
            class="badge badge-primary float-right ml-1"> Detail </a>
          </li>
          <?php endforeach; ?>
        </ul>

      </div>
    </div>

</div>



<!-- Modal -->
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="judulModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="judulModal">Tambah Data Mahasiswa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="<?= BASEURL; ?>/mahasiswa/tambah" method="post">
          <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan Nama Mahasiswa">
          </div>

          <div class="form-group">
            <label for="nim">NIM</label>
            <input type="varchar" class="form-control" id="nim" name="nim" placeholder="Masukkan NIM Mahasiswa">
          </div>

          <div class="form-group">
            <label for="tempat_lahir">Tempat Lahir</label>
            <input type="text" class="form-control" id="tempat_lahir" name="tempat_lahir" placeholder="Masukkan Tempat Lahir Mahasiswa">
          </div>

          <div class="form-group">
            <label for="tanggal_lahir">Tanggal Lahir</label>
            <input type="date" class="form-control" id="tanggal_lahir" name="tanggal_lahir" placeholder="Masukkan Tanggal Lahir Mahasiswa">
          </div>

          <div class="form-group">
            <label for="jk">Jenis Kelamin</label>
            <select class="form-control" id="jk" name="jk">
              <option value="L">L</option>
              <option value="P">P</option>
            </select>
          </div>

          <div class="form-group">
            <label for="agama">Agama</label>
            <select class="form-control" id="agama" name="agama">
              <option value="Islam">Islam</option>
              <option value="Katolik">Katolik</option>
              <option value="Protestan">Protestan</option>
              <option value="Hindu">Hindu</option>
              <option value="Budha">Budha</option>
            </select>
          </div>

          <div class="form-group">
            <label for="prodi">Prodi</label>
            <select class="form-control" id="prodi" name="prodi">
              <option value="Teknik Informatika">Teknik Informatika</option>
              <option value="Teknik Sipil">Teknik Sipil</option>
              <option value="Teknik Industri">Teknik Industri</option>
              <option value="Design Komunikasi Visual">Design Komunikasi Visual</option>
              <option value="Akuntansi Manajerial">Akuntansi Manajerial</option>
              <option value="Ilmu Ekonomi">Ilmu Ekonomi</option>
            </select>
          </div>

          <div class="form-group">
            <label for="jenjang">Jenjang</label>
            <input type="varchar" class="form-control" id="jenjang" name="jenjang" placeholder="Masukkan Jenjang Mahasiswa">
          </div>

          <div class="form-group">
            <label for="status">Status</label>
            <input type="char" class="form-control" id="status" name="status" placeholder="Masukkan Status Mahasiswa">
          </div>

          <div class="form-group">
            <label for="angkatan">Angkatan</label>
            <input type="year" class="form-control" id="angkatan" name="angkatan" placeholder="Masukkan Angkatan Mahasiswa">
          </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Tambah Data</button>
        </form>
      </div>
    </div>
  </div>
</div>