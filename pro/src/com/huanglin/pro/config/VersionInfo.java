/**
 * 
 */
package com.huanglin.pro.config;

/**
 * @author lenovo
 *
 */
public class VersionInfo {
	
    //application info
	public final static String APP_NAME="���ֹ�ЬƷ����ƽ̨";
    public final static String APP_VERSION="1.0";
    public final static String APP_STATUS="Beta";
    public final static String APP_BUILDATE="2018-3-2";
    public final static String APP_BUILDVER="#2";
    	
    //application author
    public final static String APP_AUTHOR="huanglin";
    public final static String APP_WORKSTUDIO="����ѧԺ��ҵ�����Ŀ";
    
    public final static String buildFooterStr()
    {
    	StringBuffer sb=new StringBuffer();

    	sb.append(APP_NAME);
    	sb.append(" "+"(�汾:"+APP_STATUS+APP_VERSION);
    	sb.append(" &nbsp;&nbsp;Build:"+APP_BUILDVER);
    	sb.append(" "+APP_BUILDATE+")");
    	sb.append("&nbsp;&nbsp;&nbsp;&nbsp;�����Ŷ�:&nbsp;<a href=\"mailto:joeyang_ong@yahoo.com.cn\">"+APP_AUTHOR+"</a><br/>");
    	sb.append("(C)&nbsp;"+APP_WORKSTUDIO+"&nbsp;&nbsp;");
    	return sb.toString();	
    }

}
