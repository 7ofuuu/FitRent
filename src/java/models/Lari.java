package models;

/**
 *
 * @author Idan
 */
import java.util.HashMap;
import java.util.Map;

public class Lari extends Facility {

    private int numLanes;
    private int trackLength;
    private String floorType;

    // HashMap untuk menyimpan data lapangan lari berdasarkan facilityID
    private static Map<String, Lari> lariMap = new HashMap<>();

    public Lari(int numLanes, int trackLength, String floorType, String facilityID, String namaFasilitas, String lokasi, int harga, boolean isAvailable) {
        super(facilityID, namaFasilitas, lokasi, harga, isAvailable);
        this.numLanes = numLanes;
        this.trackLength = trackLength;
        this.floorType = floorType;
        
        // Menambahkan objek Lari ke dalam HashMap dengan facilityID sebagai key
        lariMap.put(facilityID, this);
    }

    public static Lari getLariByFacilityID(String facilityID) {
        // Mengambil data Lari berdasarkan facilityID
        return lariMap.get(facilityID);
    }

    public void setNumLanes(int numLanes) {
        if (numLanes <= 0) {
            throw new IllegalArgumentException("Jalur lapangan harus lebih dari 0.");
        }
        this.numLanes = numLanes;
    }

    public int getNumLanes() {
        return numLanes;
    }

    public void setTrackLength(int trackLength) {
        if (trackLength <= 0) {
            throw new IllegalArgumentException("Panjang lapangan harus lebih dari 0.");
        }
        this.trackLength = trackLength;
    }

    public int getTrackLength() {
        return trackLength;
    }

    public void setFloorType(String floorType) {
        if (floorType == null || floorType.trim().isEmpty()) {
            throw new IllegalArgumentException("Tipe jalur pada lapangan tidak boleh kosong.");
        }
        this.floorType = floorType;
    }

    public String getFloorType() {
        return floorType;
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

