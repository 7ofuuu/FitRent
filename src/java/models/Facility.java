package models;

public abstract class Facility {

    private String facilityID;
    private String namaFasilitas;
    private String lokasi;
    private int harga;
    private boolean isAvailable;

    public Facility(String facilityID, String namaFasilitas, String lokasi, int harga, boolean isAvailable) {
        this.facilityID = facilityID; //facilityID, namaFasilitas, lokasi, harga, available
        this.namaFasilitas = namaFasilitas;
        this.lokasi = lokasi;
        this.harga = harga;
        this.isAvailable = isAvailable;
    }

    public void setFacilityID(String facilityID) {
        if (facilityID == null || facilityID.trim().isEmpty()) {
            throw new IllegalArgumentException("ID fasilitas tidak boleh kosong atau null.");
        }
        this.facilityID = facilityID;
    }

    public String getFacilityID() {
        return facilityID;
    }

    public void setNamaFasilitas(String namaFasilitas) {
        if (namaFasilitas == null || namaFasilitas.trim().isEmpty()) {
            throw new IllegalArgumentException("Nama fasilitas tidak boleh kosong atau null.");
        }

        this.namaFasilitas = namaFasilitas;
    }

    public String getNamaFasilitas() {
        return namaFasilitas;
    }

    public void setLokasi(String lokasi) {
        if (lokasi == null || lokasi.trim().isEmpty()) {
            throw new IllegalArgumentException("Lokasi fasilitas tidak boleh kosong atau null.");
        }
        this.lokasi = lokasi;
    }

    public String getLokasi() {
        return lokasi;
    }

    public void setHarga(int harga) {
        if (harga <= 0) {
            throw new IllegalArgumentException("Harga fasilitas harus lebih dari 0");
        }
        this.harga = harga;
    }

    public int getHarga() {
        return harga;
    }

    public boolean isAvailable() {
        return this.isAvailable;
    }

}
