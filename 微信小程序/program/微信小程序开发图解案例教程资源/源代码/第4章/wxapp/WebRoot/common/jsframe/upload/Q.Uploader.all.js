﻿/* 
* Q.js for Uploader
* author:devin87@qq.com
* update:2015/10/23 14:55
*/
(function (window, undefined) {
    "use strict";

    var toString = Object.prototype.toString,
        has = Object.prototype.hasOwnProperty,
        slice = Array.prototype.slice;

    // 若value不为undefine,则返回value;否则返回defValue
    function def(value, defValue) {
        return value !== undefined ? value : defValue;
    }

    // 检测是否为函数
    function isFunc(fn) {
        // 在ie11兼容模式（ie6-8）下存在bug,当调用次数过多时可能返回不正确的结果
        // return typeof fn == "function";

        return toString.call(fn) === "[object Function]";
    }

    // 检测是否为正整数
    function isUInt(n) {
        return typeof n == "number" && n > 0 && n === Math.floor(n);
    }

    // 触发指定函数,如果函数不存在,则不触发
    function fire(fn, bind) {
        if (isFunc(fn)) return fn.apply(bind, slice.call(arguments, 2));
    }

    // 扩展对象
    // forced:是否强制扩展
    function extend(destination, source, forced) {
        if (!destination || !source) return destination;

        for (var key in source) {
            if (key == undefined || !has.call(source, key)) continue;

            if (forced || destination[key] === undefined) destination[key] = source[key];
        }
        return destination;
    }

    // Object.forEach
    extend(Object, {
        // 遍历对象
        forEach: function (obj, fn, bind) {
            for (var key in obj) {
                if (has.call(obj, key)) fn.call(bind, key, obj[key], obj);
            }
        }
    });

    extend(Date, {
        // 获取当前日期和时间所代表的毫秒数
        now: function () {
            return +new Date;
        }
    });

    // -------------------------- browser ---------------------------
    var browser_ie;

    // ie11 开始不再保持向下兼容(例如,不再支持 ActiveXObject、attachEvent 等特性)
    if (window.ActiveXObject || window.msIndexedDB) {
        // window.ActiveXObject => ie10-
        // window.msIndexedDB => ie11+

        browser_ie = document.documentMode || (!!window.XMLHttpRequest ? 7 : 6);
    }

    // -------------------------- json ---------------------------

    // json解析
    // secure:是否进行安全检测
    function json_decode(text, secure) {
        // 安全检测
        if (secure !== false && !/^[\],:{}\s]*$/.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, "@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, "]").replace(/(?:^|:|,)(?:\s*\[)+/g, ""))) throw new Error("JSON SyntaxError");
        try {
            return (new Function("return " + text))();
        } catch (e) { }
    }

    if (!window.JSON) window.JSON = {};
    if (!JSON.parse) JSON.parse = json_decode;

    // -------------------------- DOM ---------------------------

    // 设置元素透明
    function setOpacity(ele, value) {
        if (value <= 1) value *= 100;

        if (ele.style.opacity != undefined) ele.style.opacity = value / 100;
        else if (ele.style.filter != undefined) ele.style.filter = "alpha(opacity=" + parseInt(value) + ")";
    }

    // 获取元素绝对定位
    function getOffset(ele, root) {
        var left = 0, top = 0, width = ele.offsetWidth, height = ele.offsetHeight;

        do {
            left += ele.offsetLeft;
            top += ele.offsetTop;
            ele = ele.offsetParent;
        } while (ele && ele != root);

        return { left: left, top: top, width: width, height: height };
    }

    // 遍历元素节点
    function walk(ele, walk, start, all) {
        var el = ele[start || walk];
        var list = [];
        while (el) {
            if (el.nodeType == 1) {
                if (!all) return el;
                list.push(el);
            }
            el = el[walk];
        }
        return all ? list : null;
    }

    // 获取上一个元素节点
    function getPrev(ele) {
        return ele.previousElementSibling || walk(ele, "previousSibling", null, false);
    }

    // 获取下一个元素节点
    function getNext(ele) {
        return ele.nextElementSibling || walk(ele, "nextSibling", null, false);
    }

    // 获取第一个元素子节点
    function getFirst(ele) {
        return ele.firstElementChild || walk(ele, "nextSibling", "firstChild", false);
    }

    // 获取最后一个元素子节点
    function getLast(ele) {
        return ele.lastElementChild || walk(ele, "previousSibling", "lastChild", false);
    }

    // 获取所有子元素节点
    function getChilds(ele) {
        return ele.children || walk(ele, "nextSibling", "firstChild", true);
    }

    // 创建元素
    function createEle(tagName, className, html) {
        var ele = document.createElement(tagName);
        if (className) ele.className = className;
        if (html) ele.innerHTML = html;

        return ele;
    }

    // 解析html标签
    function parseHTML(html, all) {
        var box = createEle("div", "", html);
        return all ? box.childNodes : getFirst(box);
    }

    // -------------------------- event ---------------------------

    var addEvent,
        removeEvent;

    if (document.addEventListener) {  // w3c
        addEvent = function (ele, type, fn) {
            ele.addEventListener(type, fn, false);
        };

        removeEvent = function (ele, type, fn) {
            ele.removeEventListener(type, fn, false);
        };
    } else if (document.attachEvent) {  // IE
        addEvent = function (ele, type, fn) {
            ele.attachEvent("on" + type, fn);
        };

        removeEvent = function (ele, type, fn) {
            ele.detachEvent("on" + type, fn);
        };
    }

    // event简单处理
    function fix_event(event) {
        var e = event || window.event;

        // for ie
        if (!e.target) e.target = e.srcElement;

        return e;
    }

    // 添加事件
    function add_event(element, type, handler, once) {
    	
        var fn = function (e) {
            handler.call(element, fix_event(e));

            if (once) removeEvent(element, type, fn);
        };

        addEvent(element, type, fn);

        if (!once) {
            return {
                // 直接返回停止句柄 eg:var api=add_event();api.stop();
                stop: function () {
                    removeEvent(element, type, fn);
                }
            };
        }
    }

    // 触发事件
    function trigger_event(ele, type) {
        if (isFunc(ele[type])) ele[type]();
        else if (ele.fireEvent) ele.fireEvent("on" + type);  // ie10-
        else if (ele.dispatchEvent) {
            var evt = document.createEvent("HTMLEvents");

            // initEvent接受3个参数:事件类型,是否冒泡,是否阻止浏览器的默认行为
            evt.initEvent(type, true, true);

            // 鼠标事件,设置更多参数
            // var evt = document.createEvent("MouseEvents");
            // evt.initMouseEvent(type, true, true,
			// ele.ownerDocument.defaultView, 1, e.screenX, e.screenY,
			// e.clientX, e.clientY, false, false, false, false, 0, null);

            ele.dispatchEvent(evt);
        }
    }

    // 阻止事件默认行为并停止事件冒泡
    function stop_event(event, isPreventDefault, isStopPropagation) {
        var e = fix_event(event);

        // 阻止事件默认行为
        if (isPreventDefault !== false) {
            if (e.preventDefault) e.preventDefault();
            else e.returnValue = false;
        }

        // 停止事件冒泡
        if (isStopPropagation !== false) {
            if (e.stopPropagation) e.stopPropagation();
            else e.cancelBubble = true;
        }
    }

    // ---------------------- other ----------------------

    var RE_HTTP = /^https?:\/\//i;

    // 是否http路径(以 http:// 或 https:// 开头)
    function isHttpURL(url) {
        return RE_HTTP.test(url);
    }

    // 判断指定路径与当前页面是否同域(包括协议检测 eg:http与https不同域)
    function isSameHost(url) {
        if (!isHttpURL(url)) return true;

        var start = RegExp.lastMatch.length,
            end = url.indexOf("/", start),
            host = url.slice(0, end != -1 ? end : undefined);

        return host.toLowerCase() == (location.protocol + "//" + location.host).toLowerCase();
    }

    // 按照进制解析数字的层级 eg:时间转化 -> parseLevel(86400,[60,60,24]) => { value=1, level=3
	// }
    // steps:步进,可以是固定的数字(eg:1024),也可以是具有层次关系的数组(eg:[60,60,24])
    // limit:限制解析的层级,正整数,默认为100
    function parseLevel(size, steps, limit) {
        size = +size;
        steps = steps || 1024;

        var level = 0,
            isNum = typeof steps == "number",
            stepNow = 1,
            count = isUInt(limit) ? limit : (isNum ? 100 : steps.length);

        while (size >= stepNow && level < count) {
            stepNow *= (isNum ? steps : steps[level]);
            level++;
        }

        if (level && size < stepNow) {
            stepNow /= (isNum ? steps : steps.last());
            level--;
        }

        return { value: level ? size / stepNow : size, level: level };
    }

    var UNITS_FILE_SIZE = ["B", "KB", "MB", "GB", "TB", "PB", "EB"];

    // 格式化数字输出,将数字转为合适的单位输出,默认按照1024层级转为文件单位输出
    function formatSize(size, ops) {
        ops = ops === true ? { all: true } : ops || {};

        if (isNaN(size) || size == undefined || size < 0) {
            var error = ops.error || "--";

            return ops.all ? { text: error } : error;
        }

        var pl = parseLevel(size, ops.steps, ops.limit),

            value = pl.value,
            text = value.toFixed(def(ops.digit, 2));

        if (ops.trim !== false && text.lastIndexOf(".") != -1) text = text.replace(/\.?0+$/, "");

        pl.text = text + (ops.join || "") + (ops.units || UNITS_FILE_SIZE)[pl.level + (ops.start || 0)];

        return ops.all ? pl : pl.text;
    }

    // ---------------------- export ----------------------

    var Q = {
        def: def,
        isFunc: isFunc,
        isUInt: isUInt,

        fire: fire,
        extend: extend,

        ie: browser_ie,

        setOpacity: setOpacity,
        getOffset: getOffset,

        walk: walk,
        getPrev: getPrev,
        getNext: getNext,
        getFirst: getFirst,
        getLast: getLast,
        getChilds: getChilds,

        createEle: createEle,
        parseHTML: parseHTML,

        isHttpURL: isHttpURL,
        isSameHost: isSameHost,

        parseLevel: parseLevel,
        formatSize: formatSize
    };

    if (browser_ie) Q["ie" + (browser_ie < 6 ? 6 : browser_ie)] = true;

    Q.event = {
        fix: fix_event,
        stop: stop_event,
        trigger: trigger_event,

        add: add_event
    };

    window.Q = Q;

})(window);

(function (window, undefined) {
    "use strict";

    var def = Q.def,
        fire = Q.fire,
        extend = Q.extend,

        getFirst = Q.getFirst,
        getLast = Q.getLast,

        parseJSON = JSON.parse,

        createEle = Q.createEle,
        parseHTML = Q.parseHTML,

        setOpacity = Q.setOpacity,
        getOffset = Q.getOffset,

        E = Q.event,
        addEvent = E.add,
        triggerEvent = E.trigger,
        stopEvent = E.stop;

    // Object.forEach
    // Date.now

    // -------------------------------- Uploader
	// --------------------------------

    var support_html5_upload = false,        // 是否支持html5(ajax)方式上传
        support_multiple_select = false,     // 是否支持文件多选

        support_file_click_trigger = false,  // 上传控件是否支持click触发文件选择 eg:
												// input.click() => ie9及以下不支持

        UPLOADER_GUID = 0,                   // 文件上传管理器唯一标示,多用于同一个页面存在多个管理器的情况

        UPLOAD_TASK_GUID = 0,                // 上传任务唯一标示
        UPLOAD_HTML4_ZINDEX = 0;             // 防止多个上传管理器的触发按钮位置重复引起的问题

    // 上传状态
    var UPLOAD_STATE_READY = 0,              // 任务已添加,准备上传
        UPLOAD_STATE_PROCESSING = 1,         // 任务上传中
        UPLOAD_STATE_COMPLETE = 2,           // 任务上传完成

        UPLOAD_STATE_SKIP = -1,              // 任务已跳过(不会上传)
        UPLOAD_STATE_CANCEL = -2,            // 任务已取消
        UPLOAD_STATE_ERROR = -3;             // 任务已失败

    // 获取上传状态说明
    function get_upload_status_text(state) {
        switch (state) {
            case UPLOAD_STATE_READY: return "准备中";
            case UPLOAD_STATE_PROCESSING: return "上传中";
            case UPLOAD_STATE_COMPLETE: return "已完成";

            case UPLOAD_STATE_SKIP: return "已跳过";
            case UPLOAD_STATE_CANCEL: return "已取消";
            case UPLOAD_STATE_ERROR: return "已失败";
        }

        return state;
    }

    // 上传探测
    function detect() {
        var XHR = window.XMLHttpRequest;
        if (XHR && new XHR().upload && window.FormData) support_html5_upload = true;

        var input = document.createElement("input");
        input.type = "file";

        support_multiple_select = !!input.files;
        support_file_click_trigger = support_html5_upload;
    }

    // 截取字符串
    function get_last_find(str, find) {
        var index = str.lastIndexOf(find);
        return index != -1 ? str.slice(index) : "";
    }

    // 将逗号分隔的字符串转为键值对
    function split_to_map(str) {
        if (!str) return;

        var list = str.split(","), map = {};

        for (var i = 0, len = list.length; i < len; i++) {
            map[list[i]] = true;
        }

        return map;
    }

    // iframe load 事件
    // 注意：低版本 ie 支持 iframe 的 onload 事件,不过是隐形的(iframe.onload 方式绑定的将不会触发),需要通过
	// attachEvent 来注册
    function bind_iframe_load(iframe, fn) {
        if (iframe.attachEvent) iframe.attachEvent("onload", fn);
        else iframe.addEventListener("load", fn, false);
    }

    // 计算上传速度
    function set_task_speed(task, total, loaded) {
        if (!total || total <= 0) return;

        var timeNow = Date.now(), tick;

        // 上传完毕,计算平均速度(Byte/s)
        if (loaded >= total) {
            tick = timeNow - task.timeStart;
            if (tick) task.avgSpeed = Math.min(Math.round(total * 1000 / tick), total);

            task.timeEnd = timeNow;
            return;
        }

        // 即时速度(Byte/s)
        tick = timeNow - task.time;
        if (tick < 200) return;

        task.speed = Math.min(Math.round((loaded - task.loaded) * 1000 / tick), task.total);
        task.time = timeNow;
    }

    /*
	 * 文件上传管理器,调用示例 new Uploader({ //--------------- 必填 --------------- url: "",
	 * //上传路径 target: element, //上传按钮 view: element, //上传任务视图(需加载UI接口默认实现)
	 * 
	 * //--------------- 可选 --------------- html5: true,
	 * //是否启用html5上传,若浏览器不支持,则自动禁用 multiple: true,
	 * //选择文件时是否允许多选,若浏览器不支持,则自动禁用(仅html5模式有效)
	 * 
	 * clickTrigger:true, //是否启用click触发文件选择 eg: input.click() => ie9及以下不支持
	 * 
	 * auto: true, //添加任务后是否立即上传
	 * 
	 * data: {}, //上传文件的同时可以指定其它参数,该参数将以POST的方式提交到服务器
	 * 
	 * workerThread: 1, //同时允许上传的任务数(仅html5模式有效)
	 * 
	 * upName: "upfile", //上传参数名称,若后台需要根据name来获取上传数据,可配置此项
	 * 
	 * allows: "", //允许上传的文件类型(扩展名),多个之间用逗号隔开 disallows: "", //禁止上传的文件类型(扩展名)
	 * 
	 * container:element, //一般无需指定 getPos:function, //一般无需指定
	 * 
	 * //上传回调事件(function) on: { init, //上传管理器初始化完毕后触发
	 * 
	 * select, //点击上传按钮准备选择上传文件之前触发,返回false可禁止选择文件 add[Async],
	 * //添加任务之前触发,返回false将跳过该任务 upload[Async], //上传任务之前触发,返回false将跳过该任务
	 * send[Async], //发送数据之前触发,返回false将跳过该任务
	 * 
	 * cancel, //取消上传任务后触发 remove, //移除上传任务后触发
	 * 
	 * progress, //上传进度发生变化后触发(仅html5模式有效) complete //上传完成后触发 },
	 * 
	 * //UI接口(function),若指定了以下方法,将忽略默认实现 UI:{ init, //执行初始化操作 draw,
	 * //添加任务后绘制任务界面 update, //更新任务界面 over //任务上传完成 } });
	 */
    function Uploader(ops) {
        var self = this;

        // ---------------- settings ----------------

        self.guid = ops.guid || "uploader" + (++UPLOADER_GUID);

        self.url = ops.url;                      // 上传路径
        self.dataType = ops.dataType || "json";  // 返回值类型
        self.data = ops.data;                    // 上传参数
        self.target = ops.target;                // 上传按钮
        self.ShowOnlyOne =ops.ShowOnlyOne? true:false ;        // 是否批量

        // 是否以html5(ajax)方式上传
        self.html5 = support_html5_upload && !!def(ops.html5, true);

        // 是否允许多选(仅在启用了html5的情形下生效)
        // 在html4模式下,input是一个整体,若启用多选,将无法针对单一的文件进行操作(eg:根据扩展名筛选、取消、删除操作等)
        // 若无需对文件进行操作,可通过 uploader.multiple = true 强制启用多选(不推荐)
        self.multiple = support_multiple_select && self.html5 && !!def(ops.multiple, true);

        // 是否启用click触发文件选择 eg: input.click() => ie9及以下不支持
        self.clickTrigger = support_file_click_trigger && !!def(ops.clickTrigger, true);

        // 允许同时上传的数量(html5有效)
        // 由于设计原因,html4仅能同时上传1个任务,请不要更改
        self.workerThread = self.html5 ? ops.workerThread || 1 : 1;
        self.workerIdle = self.workerThread;

        self.auto = ops.auto !== false;                 // 是否在添加任务后自动开始

        self.upName = ops.upName || "upfile";           // 上传参数名

        self.allows = split_to_map(ops.allows);         // 允许上传的文件类型（扩展名）,多个之间用逗号隔开
														// eg:.jpg,.png
        self.disallows = split_to_map(ops.disallows);   // 禁止上传的文件类型（扩展名）,多个之间用逗号隔开

        // ie9及以下不支持click触发(即使能弹出文件选择框,也无法获取文件数据,报拒绝访问错误)
        // 若上传按钮位置不确定(比如在滚动区域内),则无法触发文件选择
        // 设置原则:getPos需返回上传按钮距container的坐标
        self.container = ops.container || document.body;
        // 函数,获取上传按钮距container的坐标,返回格式 eg:{ left: 100, top: 100 }
        if (ops.getPos) self.getPos = ops.getPos;

        // UI接口,此处将覆盖 prototype 实现
        var UI = ops.UI || {};
        if (UI.init) self.init = UI.init;             // 执行初始化操作
        if (UI.draw) self.draw = UI.draw;             // 添加任务后绘制任务界面
        if (UI.update) self.update = UI.update;       // 更新任务界面
        if (UI.over) self.over = UI.over;             // 任务上传完成

        // 上传回调事件
        self.fns = ops.on || {};

        // 上传选项
        self.ops = ops;

        // ---------------- init ----------------

        self.list = [];
        self.map = {};

        self.index = 0;
        self.started = false;

        self._init();
    }

    Uploader.prototype = {
        // 修复constructor指向
        constructor: Uploader,

        // 初始化上传管理器
        _init: function () {
            var self = this;

            if (self._inited) return;
            self._inited = true;

            var guid = self.guid,
                target = self.target,
                container = self.container;

            var boxInput = createEle("div", "upload-input " + guid);
            container.appendChild(boxInput);

            self.boxInput = boxInput;

            // 构造html4上传所需的iframe和form
            if (!self.html5) {
                var iframe_name = "upload_iframe_" + guid;

                var html =
                    '<iframe class="u-iframe" name="' + iframe_name + '"></iframe>' +
                    '<form class="u-form" action="" method="post" enctype="multipart/form-data" target="' + iframe_name + '"></form>';

                var boxHtml4 = createEle("div", "upload-html4 " + guid, html);
                container.appendChild(boxHtml4);

                var iframe = getFirst(boxHtml4),
                    form = getLast(boxHtml4);

                self.iframe = iframe;
                self.form = form;

                // html4上传完成回调
                bind_iframe_load(iframe, function () {
                    if (self.workerIdle != 0) return;

                    var text;
                    try {
                        text = iframe.contentWindow.document.body.innerHTML;
                    } catch (e) { }

                    self.complete(undefined, UPLOAD_STATE_COMPLETE, text);
                });
            }

            if (self.clickTrigger) {
                addEvent(target, "click", function (e) {
                    if (self.fire("select", e) === false) return;

                    self.resetInput();

                    // 注意:ie9及以下可以弹出文件选择框,但获取不到选择数据,拒绝访问。
                    triggerEvent(self.inputFile, "click");
                });
            } else {
                addEvent(boxInput, "click", function (e) {
                    if (self.fire("select", e) === false) stopEvent(e);
                });

                setOpacity(boxInput, 0);

                self.resetInput();
            }

            self.fire("init");

            return self.run("init");
        },

        // 重置上传控件
        resetInput: function () {
            var self = this,

                boxInput = self.boxInput,
                target = self.target,

                inputWidth = target.offsetWidth,
                inputHeight = target.offsetHeight;

            boxInput.innerHTML = '<input type="file" name="' + self.upName + '" style="' + (self.clickTrigger ? 'visibility: hidden;' : 'width:' + inputWidth + 'px;height:' + inputHeight + 'px;font-size:100px;') + '"' + (self.multiple ? ' multiple="multiple"' : '') + '>';
            boxInput.style.width = inputWidth + "px";
            boxInput.style.height = inputHeight + "px";

            var inputFile = getFirst(boxInput);

            // 文件选择事件
            addEvent(inputFile, "change", function (e) {
                self.add(this);

                // html4 重置上传控件
                if (!self.html5) self.resetInput();
            });

            self.inputFile = inputFile;

            self.updatePos();

            return self;
        },
        // 更新上传按钮坐标(for ie)
        updatePos: function (has_more_uploader) {
            if (this.clickTrigger) return;

            var getPos = this.getPos || getOffset;

            var boxInput = this.boxInput,
                target = this.target,

                pos = target.offsetWidth == 0 ||target.offsetWidth == null ? { left: -10000, top: -10000 } : getPos(target);

            boxInput.style.left = pos.left + "px";
            boxInput.style.top = pos.top + "px";

            // 多用于选项卡切换中上传按钮位置重复的情况
            if (has_more_uploader) boxInput.style.zIndex = ++UPLOAD_HTML4_ZINDEX;
        },
        // 触发ops上定义的回调方法,优先触发异步回调(以Async结尾)
        fire: function (action, arg, callback) {
            if (!callback) return fire(this.fns[action], this, arg);

            var asyncFun = this.fns[action + "Async"];
            if (asyncFun) return fire(asyncFun, this, arg, callback);

            callback(fire(this.fns[action], this, arg));
        },

        // 运行内部方法或扩展方法(如果存在)
        run: function (action, arg) {
            var fn = this[action];
            if (fn) fire(fn, this, arg);
            return this;
        },

        // 添加一个上传任务
        addTask: function (input, file, arg) {
            if (!input && !file) return;

            var name, size;

            if (file) {
                name = file.name || file.fileName;
                size = file.size || file.fileSize;
            } else {
                name = get_last_find(input.value, "\\").slice(1) || input.value;
                size = -1;
            }

            var self = this,

                ext = get_last_find(name, ".").toLowerCase(),
                isSkip = (self.disallows && self.disallows[ext]) || (self.allows && !self.allows[ext]);

            var task = {
                id: ++UPLOAD_TASK_GUID,

                name: name,
                ext: ext,
                size: size,

                input: input,
                file: file,

                arg: arg,

                state: isSkip ? UPLOAD_STATE_SKIP : UPLOAD_STATE_READY
            };

            if (isSkip) task.disabled = true;

            self.fire("add", task, function (result) {
                if (result === false || task.disabled) return;

                task.index = self.list.length;
                self.list.push(task);
                self.map[task.id] = task;

                self.run("draw", task);

                if (self.auto) self.start();
            });

            return task;
        },

        // 添加上传任务,自动判断input(是否多选)或file
        add: function (input_or_file) {
            var self = this;

            if (input_or_file.tagName == "INPUT") {
                var files = input_or_file.files;
                if (files) {
                    for (var i = 0, len = files.length; i < len; i++) {
                        self.addTask(input_or_file, files[i]);
                    }
                } else {
                    self.addTask(input_or_file);
                }
            } else {
                self.addTask(undefined, input_or_file);
            }
        },

        // 批量添加上传任务
        addList: function (list) {
            for (var i = 0, len = list.length; i < len; i++) {
                this.add(list[i]);
            }
        },

        // 获取指定任务
        get: function (taskId) {
            if (taskId != undefined) return this.map[taskId];
        },

        // 取消上传任务
        cancel: function (taskId) {
            var self = this,
                task = self.get(taskId);

            if (!task) return;

            var state = task.state;

            // 若任务已完成,直接返回
            if (state != UPLOAD_STATE_READY && state != UPLOAD_STATE_PROCESSING) return self;

            if (state == UPLOAD_STATE_PROCESSING) {
                // html5
                var xhr = task.xhr;
                if (xhr) {
                    xhr.abort();

                    // 无需调用complete,html5 有自己的处理,此处直接返回
                    return self;
                }

                // html4
                self.iframe.contentWindow.location = "about:blank";
            }

            return self.complete(task, UPLOAD_STATE_CANCEL);
        },

        // 移除任务
        remove: function (taskId) {
            var task = this.get(taskId);
            if (!task) return;

            if (task.state == UPLOAD_STATE_PROCESSING) this.cancel(taskId);

            // this.list.splice(task.index, 1);
            // this.map[task.id] = undefined;

            // 从数组中移除任务时,由于任务是根据index获取,若不处理index,将导致上传错乱甚至不能上传
            // 此处重置上传索引,上传时会自动修正为正确的索引(程序会跳过已处理过的任务)
            // this.index = 0;

            // 添加移除标记(用户可以自行操作,更灵活)
            task.deleted = true;

            this.fire("remove", task);
        },

        // 开始上传
        start: function () {
            var self = this,

                workerIdle = self.workerIdle,

                list = self.list,
                index = self.index,

                count = list.length;

            if (!self.started) self.started = true;

            if (count <= 0 || index >= count || workerIdle <= 0) return self;

            var task = list[index];
            self.index++;

            return self.upload(task);
        },

        // 上传任务
        upload: function (task) {
            var self = this;

            if (!task || task.state != UPLOAD_STATE_READY || task.skip) return self.start();

            task.url = self.url;
            self.workerIdle--;

            self.fire("upload", task, function (result) {
                if (result === false) return self.complete(task, UPLOAD_STATE_SKIP);

                if (self.html5 && task.file) self._upload_html5(task);
                else if (task.input) self._upload_html4(task);
                else self.complete(task, UPLOAD_STATE_SKIP);
            });

            return self;
        },

        // 处理上传参数
        _process_params: function (task, fn) {
            if (this.data) Object.forEach(this.data, fn);
            if (task.data) Object.forEach(task.data, fn);
        },

        // 以html5的方式上传任务
        _upload_html5: function (task) {
            var self = this,
                xhr = new XMLHttpRequest();

            task.xhr = xhr;

            xhr.upload.addEventListener("progress", function (e) {
                self.progress(task, e.total, e.loaded);
            }, false);

            xhr.addEventListener("load", function (e) {
                self.complete(task, UPLOAD_STATE_COMPLETE, e.target.responseText);
            }, false);

            xhr.addEventListener("error", function () {
                self.complete(task, UPLOAD_STATE_ERROR);
            }, false);

            xhr.addEventListener("abort", function () {
                self.complete(task, UPLOAD_STATE_CANCEL);
            }, false);

            var fd = new FormData;

            // 处理上传参数
            self._process_params(task, function (k, v) {
                fd.append(k, v);
            });

            fd.append("fileName", task.name);
            fd.append(self.upName, task.blob || task.file, task.name);

            xhr.open("POST", task.url);

            xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");

            self.fire("send", task, function (result) {
                if (result === false) return self.complete(task, UPLOAD_STATE_SKIP);

                xhr.send(fd);

                self._afterSend(task);
            });
        },

        // 以传统方式上传任务
        _upload_html4: function (task) {
            var self = this,
                form = self.form,
                input = task.input;

            // 解决多选的情况下重复上传的问题(即使如此，仍然不建议html4模式下开启多选)
            if (input._uploaded) return self.complete(task, UPLOAD_STATE_COMPLETE);
            input._uploaded = true;

            input.name = self.upName;

            form.innerHTML = "";
            form.appendChild(input);

            form.action = task.url;

            // 处理上传参数
            self._process_params(task, function (k, v) {
                form.appendChild(parseHTML('<input type="hidden" name="' + k + '" value="' + v + '">'));
            });

            self.fire("send", task, function (result) {
                if (result === false) return self.complete(task, UPLOAD_STATE_SKIP);

                form.submit();

                self._afterSend(task);
            });
        },

        // 已开始发送数据
        _afterSend: function (task) {
            task.time = task.timeStart = Date.now();

            task.state = UPLOAD_STATE_PROCESSING;
            this._lastTask = task;

            this.progress(task);
        },

        // 更新进度显示
        progress: function (task, total, loaded) {
            if (!total) total = task.size;
            if (!loaded || loaded < 0) loaded = 0;

            var state = task.state || UPLOAD_STATE_READY;

            if (loaded > total) loaded = total;
            if (loaded > 0 && state == UPLOAD_STATE_READY) task.state = state = UPLOAD_STATE_PROCESSING;

            var completed = state == UPLOAD_STATE_COMPLETE;
            if (completed) total = loaded = task.size;

            // 计算上传速度
            set_task_speed(task, total, loaded);

            task.total = total;
            task.loaded = loaded;

            this.fire("progress", task);
            this.run("update", task);
        },

        // 处理响应数据
        _process_response: function (task, responseText) {
            task.response = responseText;
            if (!responseText) return;

            if (this.dataType == "json") task.json = parseJSON(responseText);
        },

        // 完成上传
        complete: function (task, state, responseText) {
            var self = this;

            if (!task && self.workerThread == 1) task = self._lastTask;

            if (task) {
                if (state != undefined) task.state = state;

                if (task.state == UPLOAD_STATE_PROCESSING) {
                    task.state = UPLOAD_STATE_COMPLETE;
                    self.progress(task, task.size, task.size);
                }

                if (responseText !== undefined) self._process_response(task, responseText);
            }

            if (state == UPLOAD_STATE_CANCEL) self.fire("cancel", task);
            self.fire("complete", task);

            self.run("over", task).run("update", task);

            self.workerIdle++;
            if (self.started) self.start();

            return self;
        }
    };

    // 扩展上传管理器
    // forced:是否强制覆盖
    Uploader.extend = function (source, forced) {
        extend(Uploader.prototype, source, forced);
    };

    // ---------------------- export ----------------------
    detect();

    extend(Uploader, {
        support: {
            html5: support_html5_upload,
            multiple: support_multiple_select
        },

        READY: UPLOAD_STATE_READY,
        PROCESSING: UPLOAD_STATE_PROCESSING,
        COMPLETE: UPLOAD_STATE_COMPLETE,

        SKIP: UPLOAD_STATE_SKIP,
        CANCEL: UPLOAD_STATE_CANCEL,
        ERROR: UPLOAD_STATE_ERROR,

        getStatusText: get_upload_status_text
    });

    Q.Uploader = Uploader;

})(window);

(function (window, undefined) {
    "use strict";

    var def = Q.def,

        getFirst = Q.getFirst,
        getLast = Q.getLast,
        getNext = Q.getNext,

        createEle = Q.createEle,
        formatSize = Q.formatSize,

        E = Q.event,
        addEvent = E.add,

        Uploader = Q.Uploader;

    // 追加css样式名
    function addClass(ele, className) {
        ele.className += " " + className;
    }

    // 设置元素内容
    function setHtml(ele, html) {
        if (ele) ele.innerHTML = html || "";
    }

    // 实现默认的UI接口
    Uploader.extend({
        init: function () {
            var boxView = this.ops.view;
            if (!boxView) return;

            addClass(boxView, this.html5 ? "html5" : "html4");
        },

        // 绘制任务UI
        draw: function (task) {
            var self = this,
                ops = self.ops,
                boxView = ops.view;

            if (!boxView) return;

            var ops_button = ops.button || {},

                text_button_cancel = def(ops_button.cancel, "取消"),
                text_button_remove = def(ops_button.remove, "删除"),

                name = task.name;
           
            var html =
                '<div class="fl">' +
                    '<div class="u-name" title="' + name + '">' + name + '</div>' +
                '</div>' +
                '<div class="fr">' +
                    '<div class="u-size"></div>' +
                    '<div class="u-speed">--/s</div>' +
                    '<div class="u-progress-bar">' +
                        '<div class="u-progress" style="width:1%;"></div>' +
                    '</div>' +
                    '<div class="u-detail">0%</div>' +
                    '<div class="u-state"></div>' +
                    '<div class="u-op">' +
                        '<a class="u-op-cancel">' + text_button_cancel + '</a>' +
                        '<a class="u-op-remove">' + text_button_remove + '</a>' +
                    '</div>' +
                '</div>' +
                '<div class="clear"></div>';


            var taskId = task.id;
            
            var  box = createEle("div", "u-item", html);
              
             box.taskId = taskId;

             task.box = box;
          if(self.ShowOnlyOne){
           var childNodes =boxView.childNodes; 
           for(var i=childNodes.length-1;i>=0;i--){ 
        	   boxView.removeChild(childNodes.item(i));
           }
          }
            // 添加到视图中
            
            boxView.appendChild(box);
           
          
            // ---------------- 事件绑定 ----------------
            var boxButton = getLast(box.childNodes[1]),
                buttonCancel = getFirst(boxButton),
                buttonRemove = getLast(boxButton);

            // 取消上传任务
            addEvent(buttonCancel, "click", function () {
                self.cancel(taskId);
            });

            // 移除上传任务
            addEvent(buttonRemove, "click", function () {
                self.remove(taskId);

                boxView.removeChild(box);
            });

            // ---------------- 更新UI ----------------
            self.update(task);
        },

        // 更新任务界面
        update: function (task) {
            if (!task || !task.box) return;

            var total = task.total || task.size,
                loaded = task.loaded,

                state = task.state;

            var box = task.box,
                boxInfo = box.childNodes[1],
                boxSize = getFirst(boxInfo),
                boxSpeed = getNext(boxSize),
                boxProgressbar = getNext(boxSpeed),
                boxProgress = getFirst(boxProgressbar),
                boxDetail = getNext(boxProgressbar),
                boxState = getNext(boxDetail);

            // 更新任务状态
            setHtml(boxState, Uploader.getStatusText(state));

            if (total < 0) return;

            var html_size = '';

            // 更新上传进度(for html5)
            if (this.html5 && loaded != undefined && loaded >= 0) {
                var percentText;

                if (state == Uploader.PROCESSING) {
                    var percent = Math.min(loaded * 100 / total, 100);

                    percentText = percent.toFixed(1);
                    if (percentText == "100.0") percentText = "99.9";

                } else if (state == Uploader.COMPLETE) {
                    percentText = "100";
                }

                // 进度百分比
                if (percentText) {
                    percentText += "%";

                    boxProgress.style.width = percentText;
                    setHtml(boxDetail, percentText);
                }

                // 已上传的文件大小
                html_size = '<span class="u-loaded">' + formatSize(loaded) + '</span> / ';

                // 上传速度;
                var speed = task.avgSpeed || task.speed;
                setHtml(boxSpeed, formatSize(speed) + "/s");
            }

            // 文件总大小
            html_size += '<span class="u-total">' + formatSize(total) + '</span>';

            setHtml(boxSize, html_size);
        },

        // 上传完毕
        over: function (task) {
            if (!task || !task.box) return;

            addClass(task.box, "u-over");
        }
    });

})(window);