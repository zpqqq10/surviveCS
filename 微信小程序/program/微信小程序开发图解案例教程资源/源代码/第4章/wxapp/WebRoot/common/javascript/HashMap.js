/**定义HashMap*/
function HashMap() {
	/** Map 大小 **/
	var size = 0;
	/** 对象 **/
	var entry = new Object();

	/** 存 **/
	this.put = function(key, value) {
		if (!this.containsKey(key)) {
			size++;
		}
		entry[key] = value;
	}

	/** 取 **/
	this.get = function(key) {
		if (this.containsKey(key)) {
			return entry[key];
		} else {
			return null;
		}
	}

	/** 删除 **/
	this.remove = function(key) {
		if (delete entry[key]) {
			size--;
		}
	}

	/** 是否包含 Key **/
	this.containsKey = function(key) {
		return (key in entry);
	}

	/** 是否包含 Value **/
	this.containsValue = function(value) {
		for ( var prop in entry) {
			if (entry[prop] == value) {
				return true;
			}
		}
		return false;
	}

	/** 所有 Value **/
	this.values = function() {
		var values = new Array(size);
		for ( var prop in entry) {
			values.push(entry[prop]);
		}
		return values;
	}

	/** 所有 Key **/
	this.keys = function() {
		var keys = new Array(size);
		for ( var prop in entry) {
			keys.push(prop);
		}
		return keys;
	}

	/** Map Size **/
	this.size = function() {
		return size;
	}
}