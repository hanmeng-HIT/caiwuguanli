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
    	 taxyingye=fuwu*0.05;//����Ӫҵ˰
    	 taxzengzhi=xiaoshou*0.03;//������ֵ˰
    	 taxyncj=taxzengzhi+taxyingye*0.07;//����Ӧ�ɳǽ�˰
    	 taxynjy=taxzengzhi+taxyingye*0.03;//����Ӧ�ɽ�������
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
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
