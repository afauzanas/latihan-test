<div class="container mt-5">

  <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title"><?= $data['mhs']['nama']; ?></h5>
    <h6 class="card-subtitle mb-2 text-muted"><?= $data['mhs']['nim']; ?></h6>
    <p class="card-text"><?= $data['mhs']['tempat_lahir']; ?></p>
    <p class="card-text"><?= $data['mhs']['tanggal_lahir']; ?></p>
    <p class="card-text"><?= $data['mhs']['jk']; ?></p>
    <p class="card-text"><?= $data['mhs']['agama']; ?></p>
    <p class="card-text"><?= $data['mhs']['prodi']; ?></p>
    <p class="card-text"><?= $data['mhs']['jenjang']; ?></p>
    <p class="card-text"><?= $data['mhs']['status']; ?></p>
    <p class="card-text"><?= $data['mhs']['angkatan']; ?></p>
    <a href="<?= BASEURL; ?>/mahasiswa" class="card-link">Kembali</a>
  </div>
</div>

</div>
