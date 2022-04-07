package Model;

public class WineDTO {

	public int windId;
	public String wineName;
	public String kind;
	public String country;
	public String cultivar;
	public String sweet;
	public String acid;
	public String body;
	public String tanin;
	public String proof;
	public String price;
	public String img;
	public WineDTO(int windId, String wineName, String kind, String country, String cultivar, String sweet, String acid,
			String body, String tanin, String proof, String price, String img) {
		super();
		this.windId = windId;
		this.wineName = wineName;
		this.kind = kind;
		this.country = country;
		this.cultivar = cultivar;
		this.sweet = sweet;
		this.acid = acid;
		this.body = body;
		this.tanin = tanin;
		this.proof = proof;
		this.price = price;
		this.img = img;
	}
	public int getWindId() {
		return windId;
	}
	public void setWindId(int windId) {
		this.windId = windId;
	}
	public String getWineName() {
		return wineName;
	}
	public void setWineName(String wineName) {
		this.wineName = wineName;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCultivar() {
		return cultivar;
	}
	public void setCultivar(String cultivar) {
		this.cultivar = cultivar;
	}
	public String getSweet() {
		return sweet;
	}
	public void setSweet(String sweet) {
		this.sweet = sweet;
	}
	public String getAcid() {
		return acid;
	}
	public void setAcid(String acid) {
		this.acid = acid;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getTanin() {
		return tanin;
	}
	public void setTanin(String tanin) {
		this.tanin = tanin;
	}
	public String getProof() {
		return proof;
	}
	public void setProof(String proof) {
		this.proof = proof;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
	
}
