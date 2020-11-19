package chap08;

public class Car {
	private String name;
	private int speed;
	
	
	//stop
	public boolean getStop() { //speed == 0이 붙은 getStop()메소드를 만들었다면 , 
							   //stop이라는 프로퍼티가 생긴 것(필드는 없는 상태), 
							   //setStop()메소드가 없기 때문에 getStop()만 되는 읽기전용 프로퍼티가 된 것, 
							   //boolean 타입을 리턴하는 프로퍼티는 is라는 키워드 사용 가능 ex)isStop
		return speed == 0;
	}
	//name
	public String getName() {
		return name;
	}
	//name
	public void setName(String name) {
		this.name = name;
	}
	//speed
	public int getSpeed() {
		return speed;
	}
	//speed
	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
	
	
}
