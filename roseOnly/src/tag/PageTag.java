package tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
/**
 * ��ҳ��ǩ
 * @author Administrator
 *
 */
public class PageTag extends SimpleTagSupport{
	private String url;//���ʵ�·��
	private int pages;//��ҳ��
	
	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public void doTag() throws JspException, IOException {
		//��ȡ�������
		JspWriter out=this.getJspContext().getOut();
		out.print("<a href='"+url+"?txtpage=1'>��ҳ</a>&nbsp;&nbsp;");	
		
		for(int i=1;i<=pages;i++) {
			out.print("<a href='"+url+"?txtpage="+i+"'>"+i+"</a>&nbsp;&nbsp;");
		}
		
		out.print("<a href='"+url+"?txtpage="+pages+"'>βҳ</a>&nbsp;&nbsp;");	
		
	}

}
