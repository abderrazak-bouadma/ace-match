package ace4

import com.sfeir.security.Member;

class Court {

	String name
	
	static belongsTo = [member:Member]
	
    static constraints = {
		name(blank:false, unique: true)
    }
	
	String toString() {
		return "${name}"
	}
}
