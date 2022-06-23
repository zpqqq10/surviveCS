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
	public static final String SYNC_SYSTEM_APPROVLAED="600";//��ʾ�Ѵ��� ��Ҫ��ʾ�ͻ��˲���Ҫ�ڽ��з��͸���Ϣ��
	

	
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
	
	public static final String CONTENT_ZIP_DIR_NAME="����";
	public static final String PART_ZIP_DIR_NAME="����";
	public static final String REFCONTENT_ZIP_DIR="�������";
	public static final String SEND_ZIP_DIR = "sendZip";
	//by llp
	//��� ���찴ť��ʾ����
	//������
	public static final  String loginName_zwf="yp;czc;ysj;xzg;lyl;csg;lgm";
	public static final  String userName_zwf="����;��־��;������;Ф־��;������;���ɹ�;������";
	
	//����Э
	public static final  String loginName_qzx="zyy;zzq;jzh;jjg;dsx;wzj;tch;ddg;jiwancheng";
	public static final  String userName_qzx="����Ӱ;����Ȫ;��־��;�־���;����ѫ;���ӽ�;�ﴺ��;�ŵ¸�;�����";
	
	
	
	public static final String APP_ROOT_FLOWFILE="flowfile";
	
	public static final String APP_ROOT_FLOWFILE_PIECES="pieces";
	
	public static final String APP_ROOT_FLOWFILE_CONTENT="contnet";
	
	
	/**
	 * ����
	 */
	public static final String SYNC_OPERATENAME_WITHDRAM="withdraw";
	
	/**
	 *  ����ɾ�� ��Ե����Ѱ�Ĺ���
	 */
	public static final String SYNC_OPERATENAME_PERSONDEL="personDel";
	
	/**
	 * ����ת��
	 */
    public static final String SYNC_OPERATENAME_FORWARD="foreignForward";
    
    /**
     * ����ɾ��
     */
    public static final String SYNC_OPERATENAME_FLOWDEL="flowDel";
    
    /**
     * ��������ÿһ�������쵥������
     */
    public static final String SYNC_OPERATENAME_APPROVALUPDATE="approvalUpdate";
    
    
    /**
     * ���� optype 1,2
     */
    public static final String SYNC_CONTENTTYPE_GW="gw";
    
    /**
     * ���� 3 4
     */
    public static final String SYNC_CONTENTTYPE_GFILE="gfile";
    
    /**
     * ����  5 6
     */
    public static final String SYNC_CONTENTTYPE_MEETING="meeting";
    
    /**
     * ֪ͨ   7 8
     */
    public static final String SYNC_CONTENTTYPE_NOTICE="notice";
    
    /**
     * ���ļ���ת����
     */
    public static final String SYNC_CONTENTTYPE_CHENGYUEPIECES="chengYuePieces";
    
    
    /**
     * ��֪��(���н���) 
     */
    public static final String SYNC_CONTENTTYPE_PASSEDCONTENT="passedContent";
    
    /**
     * ��   9 10
     */
    public static final String SYNC_CONTENTTYPE_PIECES="pieces";
    
    
    
    
//    /**
//     * ��ʾ����
//     */
//    public static final String SYNC_CONTENTSTATUS_0="0";
//    
//    
//    /**
//     * ��ʾ�����Ѱ�
//     */
//    public static final  String SYNC_COTNENTSTATUS_1="1";
    
    /**
     * ��ʾ�����ѳ���2
     */
    public static final String SYNC_CONTENTSTATUS_2="2";
    /**
     * ��ʾ�˻�3
     */
    public static final String SYNC_CONTENTSTATUS_3="3";
    
    /**
     * ��ʾɾ��
     */
    public static final String SYNC_COTNENTSTATUS_4="4";
    
    /**
     * ��ʾ����ɾ�� �Ѱ���Ϣ �������б��в���ʾ
     */
    public static final String SYNC_CONTENTSTATUS_5="5";
    
    
    /**
     * ��ʾ��������ֹ 
     */
    public static final String SYNC_CONTENTSTATUS_6="6";
    
    
    
    
    
    
    /**
     * ��ʾ���� ��Բ�����
     */
    public static final String FLOWSTATUS_1="1";
    
    /**
     * ��ʾ������ ��� ������ 
     */
    public static final String FLOWSTATUS_2="2";
    
    
    
    public static final String MESSAGElOG_TYPE_SENDDOC="SendDoc";
    
    public static final String MESSAGELOG_TYPE_RECEIVEDOC="ReceiveDoc";
    
    
    
    
    public static final String APP_MESSAGE_APPROVALTYPE_PIECES="pieces";
    
    public static final String APP_MESSAGE_APPROVALTYPE_CONTENT="content";
    
}
