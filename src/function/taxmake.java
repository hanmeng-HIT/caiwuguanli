package function;

public class taxmake {
     private double fuwu;
     private double xiaoshou;
     private double caichan;
     private double taxyingye;
     private double taxzengzhi;
     private double taxyncj;
     private double taxynjy;
     private double taxsuode;
     
     public String make(){
    	 taxyingye=fuwu*0.05;//计算营业税
    	 taxzengzhi=xiaoshou*0.03;//计算增值税
    	 taxyncj=taxzengzhi+taxyingye*0.07;//计算应纳城建税
    	 taxynjy=taxzengzhi+taxyingye*0.03;//计算应纳教育附加
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
     }
	public double getFuwu() {
		return fuwu;
	}
	public void setFuwu(double fuwu) {
		this.fuwu = fuwu;
	}
	public double getXiaoshou() {
		return xiaoshou;
	}
	public void setXiaoshou(double xiaoshou) {
		this.xiaoshou = xiaoshou;
	}
	public double getCaichan() {
		return caichan;
	}
	public void setCaichan(double caichan) {
		this.caichan = caichan;
	}
	public double getTaxyingye() {
		return taxyingye;
	}
	public void setTaxyingye(double taxyingye) {
		this.taxyingye = taxyingye;
	}
	public double getTaxzengzhi() {
		return taxzengzhi;
	}
	public void setTaxzengzhi(double taxzengzhi) {
		this.taxzengzhi = taxzengzhi;
	}
	public double getTaxyncj() {
		return taxyncj;
	}
	public void setTaxyncj(double taxyncj) {
		this.taxyncj = taxyncj;
	}
	public double getTaxynjy() {
		return taxynjy;
	}
	public void setTaxynjy(double taxynjy) {
		this.taxynjy = taxynjy;
	}
}
