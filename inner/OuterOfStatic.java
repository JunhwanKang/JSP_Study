package inner;

public class OuterOfStatic {
	static class StaticNested{
		private int value=0;
		public int getvalue() {
			return value;
		}
		public void setValue(int value) {
			this.value=value;
		}
	}
}
