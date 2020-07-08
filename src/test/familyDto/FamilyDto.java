package test.familyDto;

public class FamilyDto {
	private int num;
	private String name;
	private String pt;
	
	public FamilyDto() {}

	public FamilyDto(int num, String name, String pt) {
		this.num = num;
		this.name = name;
		this.pt = pt;
	}
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPt() {
		return pt;
	}

	public void setPt(String pt) {
		this.pt = pt;
	}
	
	
}
