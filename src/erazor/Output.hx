package erazor;

class Output extends StringBuf {

	public function new(escapeMethod = null, escapeMethod2 = null) {
		if(escapeMethod != null) 
			escape = escapeMethod;
		if(escapeMethod2 != null) 
			escape2 = escapeMethod2;
		super();
	}

	public dynamic function escape(str : String) : String {
		return str;
	}
	
	public dynamic function escape2(str : String) : String {
		return str;
	}

	public inline function unsafeAdd(str : Dynamic) {
		add(escape(Std.string(str)));
	}
	
	public inline function unsafeAddWithDot(str : Dynamic) {
		add(escape2(Std.string(str)));
	}

}