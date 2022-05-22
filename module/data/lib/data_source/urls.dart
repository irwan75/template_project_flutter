abstract class BaseUrl {
  BaseUrl._();

  static final urls = Urls();

  static const baseUrlProd = "https://172.16.3.67/webservices/api-v2/";
  static const baseUrlStg = "https://172.16.3.67/webservices/api-v2/";
  static const baseUrlDev = "https://172.16.3.67/webservices/api-v2/";
  static const baseUrlTestMedia = "https://api-daya.elemes.id/media";
}

class Urls {
  Urls();

  // User Auth
  static const authLogin = 'AuthController/login';
  static const authRegister = 'AuthController/register';
  static const authResetPassword = 'AuthController/reset_password';
  static const authGantiPassword = 'AuthController/ganti_password';

  // Location
  static const getProvince = 'GeneralController/get_provinsi/';
  static const getKabupaten = 'GeneralController/get_kabupaten/';
  static const getKecamatan = 'GeneralController/get_kecamatan/';
  static const getKelurahan = 'GeneralController/get_kelurahan/';

  // Form Stock
  static const getCabang = 'GeneralController/get_cabang/';
  static const getDokumen = 'GeneralController/get_dokumen/';
  static const getFasilitas = 'GeneralController/get_fasilitas/';
  static const getListProyek = 'PropertiController/get_proyek/';
  static const addProyek = 'PropertiController/tambah_proyek';
  static const addTipe = 'PropertiController/tambah_tipe';
}
