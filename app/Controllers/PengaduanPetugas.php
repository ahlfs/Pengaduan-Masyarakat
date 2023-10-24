<?php

namespace App\Controllers;

use App\Models\PengaduanModel;
use App\Models\TanggapanModel;


class PengaduanPetugas extends BaseController
{
    protected $pengaduanModel;
    protected $tanggapanModel;
    protected $session;
    protected $helper = ['form', 'url'];

    public function __construct()
    {
        $this->session = session();
        $this->pengaduanModel = new PengaduanModel();
        $this->tanggapanModel = new TanggapanModel();
    }

    public function download($id)
    {
        $foto = new PengaduanModel();
        $dataFile = $foto->find($id);
        return $this->response->download('foto_storage/' .$dataFile['foto'], null );
    }

    public function validasi($id)
    {
        $tervalidasi = '1';
        $this->pengaduanModel->save([
            'id_pengaduan' => $id,
            "status" => $tervalidasi,
            
        ]);
        session()->setFlashdata('pesan', 'Data berhasil diedit.');
        return redirect()->to('/petugas/validasi');
    }

    public function tanggapan($id)
    {
        $data = [
            'title' => 'Beri Tanggapan',
            'aduan' => $this->pengaduanModel->getPengaduan($id)
        ];

        return view('petugas/tanggapan', $data);
    }

    public function updatetanggapan($id)
    {
        $petugas = session('id_petugas'); // Ambil id dari session
        $selesai = '2';
        $this->tanggapanModel->save([
            'id_pengaduan' => $id,
            "status" => $selesai,
            "tanggapan" => $this->request->getVar('tanggapan'),
            'id_petugas' => $petugas,

            
        ]);
        session()->setFlashdata('pesan', 'Data berhasil ditanggapi.');
        return redirect()->to('/petugas/validasi');
    }
    
}
