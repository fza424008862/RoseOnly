package tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
/**
 * 分页标签
 * @author Administrator
 *
 */
public class PageTag extends SimpleTagSupport{
	private String url;//访问的路径
	private int pages;//总页数
	
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
		//获取输出对象
		JspWriter out=this.getJspContext().getOut();
		out.print("<a href='"+url+"?txtpage=1'>首页</a>&nbsp;&nbsp;");	
		
		for(int i=1;i<=pages;i++) {
			out.print("<a href='"+url+"?txtpage="+i+"'>"+i+"</a>&nbsp;&nbsp;");
		}
		
		out.print("<a href='"+url+"?txtpage="+pages+"'>尾页</a>&nbsp;&nbsp;");	
		
	}

}
