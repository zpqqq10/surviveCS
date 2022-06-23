package com.xiaogang.app.util;

public class Constant {

	public static final int PP_SAVE_AS_PDF = 32;
	public static final int WORD_SAVE_AS_PDF = 17;
	public static final String CONVERT_SUCCESS = "1";
	public static final String CONVERT_FAIL = "0";
	public static final int HTTPCLIENT_CONNECTION_TIMEOUT = 10000;
	public static final String INIT_LOAD_PROPERTY_FILENAME = "config.properties";
	public static final String CONVERT_TYPE_WORD = "word";
	public static final String CONVERT_TYPE_EXCEL = "excel";
	public static final String CONVERT_TYPE_PPT = "powerpoint";
	public static final String CONVERT_TYPE_PDF = "pdf";
	public static final String CONVERT_TYPE_SWF = "swf";
	
	public static final String DEFAULT_CONVERT_DIR = "D:/asopdc";
	public static final String DEFAULT_ENTER_LINE = "<br>";
	public static final String DEFAUT_SPACE = " ";
	public static final String APP_ROOT_DIR = "docApproval";
	public static final String APP_ROOT_MESSAGElOG="messageLog";
	public static final String APP_ROOT_FLOWRELATION="flowRelation";
	public static final String DOC_SOURCE_DIR_NAME = "doc";
	public static final String PDF_DIR_NAME="pdf";
	public static final String MIX_SIGN_DIR="mixSign";
	public static final String APPROVAL_DIR_NAME = "approval";
	public static final String BIG_IMG_DIR_NAME = "bigImg";
	public static final String SMALL_IMG_DIR_NAME = "smallImg";
	public static final String MERGE_DIR_NAME = "mergeImg";
	public static final int SMALL_IMAGE_HEIGHT = 1068;
	public static final int SMALL_IMAGE_WIDTH = 768;
	public static final String IMG_PATH_SPLIT_CHAR = "|";
	public static final String IMG_SUFFIX = "jpg";
	public static final String TYPE_SWF = "swf";
	public static final String TYPE_JPG = "jpg";
	
	public static final String DELETE_TYPE = "3";
	public static final String FINISH_TYPE = "2";
	public static final String SYNC_SUCCESS = "200";
	public static final String SYNC_DATA_ERROR = "300";
	public static final String SYNC_SYSTEM_ERROR = "500";
	public static final String SYNC_SYSTEM_APPROVLAED="600";//表示已处理 需要提示客户端不需要在进行发送该信息了
	

	
	//by llp
	public static final String SYNC_FILE_NUMBER_ERROR="600";
	public static final String SYNC_REF_FILE_NUMBER_ERROR="601";
	public static final String OPTYPE_READ = "3";
	public static final String OPTYPE_DB = "1";
	public static final String OPTYPE_HASREAD = "4";
	public static final String OPTYPE_HASDO = "2";
	public static final String IS_END = "1";
	public static final String SCHEDULE_URL = "http://10.171.251.80:8080/tzschedule/getDataAction";
	public static final String IS_NOT_END = "0";
	public static final String APP_UNION_DIR = "unionWord";
	public static final String APP_UNION_NAME_SUFFIX = "union_doc";
	
	public static final String APP_UNION_NAME_SUFFIX_PIECES="union_doc_pieces";
	
	public static final String APP_UNION_NAME_FLOW="union_flow";
	public static final String APP_ROOT_MESSAGELOG_CONTENT = "content";
	public static final String APP_ROOT_MESSAGELOG_REFCONTENT = "refContent";
	public static String APP_ROOT_MESSAGELOG_APPROVAL="approval";
	public static String APP_ROOT_MESSAGELOG_ATTACH="attach";
	
public static String ZIP_DIR_NAME="zipFile";
	
	public static final String CONTENT_ZIP_DIR_NAME="正文";
	public static final String PART_ZIP_DIR_NAME="附件";
	public static final String REFCONTENT_ZIP_DIR="相关收文";
	public static final String SEND_ZIP_DIR = "sendZip";
	//by llp
	//设计 交办按钮显示的人
	//政府办
	public static final  String loginName_zwf="yp;czc;ysj;xzg;lyl;csg;lgm";
	public static final  String userName_zwf="岳鹏;崔志成;于世疆;肖志刚;李亚兰;崔松光;刘贵明";
	
	//区政协
	public static final  String loginName_qzx="zyy;zzq;jzh;jjg;dsx;wzj;tch;ddg;jiwancheng";
	public static final  String userName_qzx="赵玉影;张振泉;季志会;贾君刚;杜少勋;王子江;田春华;杜德耕;纪万成";
	
	
	
	public static final String APP_ROOT_FLOWFILE="flowfile";
	
	public static final String APP_ROOT_FLOWFILE_PIECES="pieces";
	
	public static final String APP_ROOT_FLOWFILE_CONTENT="contnet";
	
	
	/**
	 * 撤回
	 */
	public static final String SYNC_OPERATENAME_WITHDRAM="withdraw";
	
	/**
	 *  个人删除 针对的是已办的公文
	 */
	public static final String SYNC_OPERATENAME_PERSONDEL="personDel";
	
	/**
	 * 对外转发
	 */
    public static final String SYNC_OPERATENAME_FORWARD="foreignForward";
    
    /**
     * 流程删除
     */
    public static final String SYNC_OPERATENAME_FLOWDEL="flowDel";
    
    /**
     * 更新流程每一步的批办单操作符
     */
    public static final String SYNC_OPERATENAME_APPROVALUPDATE="approvalUpdate";
    
    
    /**
     * 公文 optype 1,2
     */
    public static final String SYNC_CONTENTTYPE_GW="gw";
    
    /**
     * 资料 3 4
     */
    public static final String SYNC_CONTENTTYPE_GFILE="gfile";
    
    /**
     * 会议  5 6
     */
    public static final String SYNC_CONTENTTYPE_MEETING="meeting";
    
    /**
     * 通知   7 8
     */
    public static final String SYNC_CONTENTTYPE_NOTICE="notice";
    
    /**
     * 呈阅件（转交）
     */
    public static final String SYNC_CONTENTTYPE_CHENGYUEPIECES="chengYuePieces";
    
    
    /**
     * 阅知件(并行交办) 
     */
    public static final String SYNC_CONTENTTYPE_PASSEDCONTENT="passedContent";
    
    /**
     * 件   9 10
     */
    public static final String SYNC_CONTENTTYPE_PIECES="pieces";
    
    
    
    
//    /**
//     * 表示代办
//     */
//    public static final String SYNC_CONTENTSTATUS_0="0";
//    
//    
//    /**
//     * 表示该文已办
//     */
//    public static final  String SYNC_COTNENTSTATUS_1="1";
    
    /**
     * 表示该文已撤回2
     */
    public static final String SYNC_CONTENTSTATUS_2="2";
    /**
     * 表示退回3
     */
    public static final String SYNC_CONTENTSTATUS_3="3";
    
    /**
     * 表示删除
     */
    public static final String SYNC_COTNENTSTATUS_4="4";
    
    /**
     * 表示个人删除 已办信息 该文在列表中不显示
     */
    public static final String SYNC_CONTENTSTATUS_5="5";
    
    
    /**
     * 表示该流程终止 
     */
    public static final String SYNC_CONTENTSTATUS_6="6";
    
    
    
    
    
    
    /**
     * 表示正常 针对操作表
     */
    public static final String FLOWSTATUS_1="1";
    
    /**
     * 表示不可用 针对 操作表 
     */
    public static final String FLOWSTATUS_2="2";
    
    
    
    public static final String MESSAGElOG_TYPE_SENDDOC="SendDoc";
    
    public static final String MESSAGELOG_TYPE_RECEIVEDOC="ReceiveDoc";
    
    
    
    
    public static final String APP_MESSAGE_APPROVALTYPE_PIECES="pieces";
    
    public static final String APP_MESSAGE_APPROVALTYPE_CONTENT="content";
    
}
