package tag;

import java.io.IOException;
import java.util.List;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class IteratorTag extends SimpleTagSupport {

    //标签属性，用于指定需要被迭代的集合
    private List<String> myList;
    //标签属性，指定迭代集合元素，为集合元素指定的名称
    private String item;

    //标签的处理方法，简单标签处理类只需要重写doTag方法
    public void doTag() throws JspException, IOException {
        //遍历集合
        for (String s : myList) {

            //将集合的元素设置到page 范围
            //不能用 setItem方法设置标签属性的值，只能用getJspContext().setAttribute方法
            getJspContext().setAttribute(item, s );//JspContext是pageContext的父类，也只能在同一个jsp页面上访问存储在其中的数据
            //输出标签体：这种方式可以将标签体的内容不做修改，直接输出到浏览器端
            getJspBody().invoke(null);
        }
    }

    public List<String> getMyList() {
        return myList;
    }

    public void setMyList(List<String> myList) {
        this.myList = myList;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }
}
