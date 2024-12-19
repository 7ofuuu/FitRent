package models;

/**
 *
 * @author Idan
 */
import java.util.HashMap;
import java.util.Map;

public class Futsal extends Facility {

    private String floorType;
    private boolean isIndoor;
    private int size;
    private int fieldNumber;

    // HashMap untuk menyimpan data lapangan futsal berdasarkan facilityID
    private static Map<String, Futsal> futsalMap = new HashMap<>();

    public Futsal(String floorType, boolean isIndoor, int size, int fieldNumber,
            String facilityID, String namaFasilitas, String lokasi,
            int harga, boolean isAvailable) {
        super(facilityID, namaFasilitas, lokasi, harga, isAvailable);
        this.floorType = floorType;
        this.isIndoor = isIndoor;
        this.size = size;
        this.fieldNumber = fieldNumber;
        
        // Menambahkan objek Futsal ke dalam HashMap dengan facilityID sebagai key
        futsalMap.put(facilityID, this);
    }

    public static Futsal getFutsalByFacilityID(String facilityID) {
        // Mengambil data Futsal berdasarkan facilityID
        return futsalMap.get(facilityID);
    }

    public void setFloorType(String floorType) {
        if (floorType == null || floorType.trim().isEmpty()) {
            throw new IllegalArgumentException("Tipe lantai pada lapangan tidak boleh kosong.");
        }
        this.floorType = floorType;
    }

    public String getFloorType() {
        return floorType;
    }

    public void setIsIndoor(boolean isIndoor) {
        this.isIndoor = isIndoor;
    }

    public boolean getIsIndoor() {
        return isIndoor;
    }

    public void setSize(int size) {
        if (size <= 0) {
            throw new IllegalArgumentException("Ukuran lapangan harus lebih dari 0.");
        }
        this.size = size;
    }

    public int getSize() {
        return size;
    }

    public void setFieldNumber(int fieldNumber) {
        if (fieldNumber <= 0) {
            throw new IllegalArgumentException("Jumlah lapangan harus lebih dari 0.");
        }
        this.fieldNumber = fieldNumber;
    }

    public int getFieldNumber() {
        return fieldNumber;
    }

    @Override
    public String getNamaFasilitas() {
        return super.getNamaFasilitas();
    }

    @Override
    public String getFacilityID() {
        return super.getFacilityID();
    }

    @Override
    public String getLokasi() {
        return super.getLokasi();
    }

    @Override
    public int getHarga() {
        return super.getHarga();
    }

    @Override
    public boolean isAvailable() {
        return super.isAvailable();
    }
}

