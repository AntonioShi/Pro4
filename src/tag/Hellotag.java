package tag;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class Hellotag extends SimpleTagSupport {
    public void doTag() throws JspException, IOException {
        this.getJspContext().getOut().write("<p>Hello SimpleTag!</p>");
    }
}
