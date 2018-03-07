public class Student  {
	private String a;
	private String b;
	private String c;
	private String d;
	public Student(String a,String b,String c,String d){
		super();
		this.a=a;
		this.b=b;
		this.c=c;
		this.d=d;
	}
	public Student(){
		super();
	}
	public String geta(){
		return a;
	}
	public void seta(String a){
		this.a=a;
	}
	public String getc(){
		return c;
	}
	public void setc(String c){
		this.c=c;
	}
	public String getb(){
		return b;
	}
	public void setb(String b){
		this.b=b;
	}
	public String getd(){
		return d;
	}
	public void setd(String d){
		this.d=d;
		}
}
