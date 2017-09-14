import Foundation

/*
private Stack<Integer> listSequence = new Stack<Integer>();
*/

public class Html5Renderer {

    var out: String = ""
    var level: Int64 = 0
    var partial: Bool = false
    var hardwrap: Bool = false
    var headingIds: Bool = false

    func visit(node: Document) {
        out = ""
        node.childrenAccept(self);
    }
    
    func visit(node: Heading) {
        indent()
        //out.append("<h" + node.getValue());
        //if(headingIds) {
        //    String id = "";
        //    for(Node n : node.getChildren()) {
        //        if(n instanceof Text) {
        //            id += n.getValue().toString();
        //        }
        //    }
        //    out.append(" id=\"" + id.toLowerCase().replace(" ", "_")  + "\"");
        //}
        //out.append(">");
        //node.childrenAccept(this);
        //out.append("</h" + node.getValue() + ">\n");
        //if(!node.isNested()) { out.append("\n"); }
    }

    func visit(node: BlockQuote) {
        indent()
        //out.append("<blockquote>");
        //if(node.getChildren() != null && node.getChildren().length > 0) { out.append("\n"); }
        //level++;
        //node.childrenAccept(this);
        //level--;
        indent()
        //out.append("</blockquote>\n");
        //if(!node.isNested()) { out.append("\n"); }
    }


    func visit(node: ListBlock) {
        //listSequence.push(0);
        //String tag = node.isOrdered() ? "ol" : "ul";
        indent()
        //out.append("<" + tag + ">\n");
        //level++;
        //node.childrenAccept(this);
        //level--;
        indent()
        //out.append("</" + tag + ">\n");
        //if(!node.isNested()) { out.append("\n"); }
        //listSequence.pop();
    }
 
    func visit(node: ListItem) {
        //Integer seq = listSequence.peek() + 1;
        //listSequence.set(listSequence.size() - 1, seq);
        indent()
        //out.append("<li");
        //if(node.getNumber() != null && (!seq.equals(node.getNumber()))) {
            //out.append(" value=\"" + node.getNumber() + "\"");
            //listSequence.push(node.getNumber());
        //}
        //out.append(">");
        //if(node.getChildren() != null) {
            //boolean block = (node.getChildren()[0].getClass() == Paragraph.class || node.getChildren()[0].getClass() == BlockElement.class);
        
            //if(node.getChildren().length > 1 || !block) { out.append("\n"); }
            //level++;
            //node.childrenAccept(this);
            //level--;
            //if(node.getChildren().length > 1 || !block) { indent(); }
        //}
        //out.append("</li>\n");
    }


    func visit(node: CodeBlock) {
        indent()
        //out.append("<pre><code");
        //if(node.getLanguage() != null) {
            //out.append(" class=\"language-" + escape(node.getLanguage()) + "\"");
        //}
        //out.append(">");
        //out.append(escape(node.getValue().toString()) + "</code></pre>\n");
        //if(!node.isNested()) { out.append("\n"); }
    }
    
    
  

    func visit(node: Paragraph) {
        //if(node.isNested() && (node.getParent() instanceof ListItem) && node.isSingleChild()) {
            //node.childrenAccept(this);
        //} else {
            indent()
            //out.append("<p>");
            //node.childrenAccept(this);
            //out.append("</p>\n");
            //if(!node.isNested()) { out.append("\n"); }
        //}
    }

    func visit(node: BlockElement) {
        //if(node.isNested() && (node.getParent() instanceof ListItem) && node.isSingleChild()) {
            //node.childrenAccept(this);
        //} else {
            indent()
            //node.childrenAccept(this);
            //if(!node.isNested()) { out.append("\n"); }
        //}
    }
    
    func visit(node: Image) {
        //out.append("<img src=\"" + escapeUrl(node.getValue().toString()) + "\" alt=\"");
        //node.childrenAccept(this);
        //out.append("\" />");
    }
    
    func visit(node: Link) {
        //out.append("<a href=\"" + escapeUrl(node.getValue().toString()) + "\">");
        //node.childrenAccept(this);
        //out.append("</a>");
    }
 
    func visit(node: Strong) {
        //out.append("<strong>");
        //node.childrenAccept(this);
        //out.append("</strong>");
    }
    
    func visit(node: Em) {
        //out.append("<em>");
        //node.childrenAccept(this);
        //out.append("</em>");
    }
    
    func visit(node: Code) {
        //out.append("<code>");
        //node.childrenAccept(this);
        //out.append("</code>");
    }

    func visit(node: Text) {
        //out.append(escape(node.getValue().toString()));
    }

    func escape(text: String) -> String {
        return text
        //.replaceAll("&", "&amp;")
            //.replaceAll("<", "&lt;")
            //.replaceAll(">", "&gt;")
            //.replaceAll("\"", "&quot;");
    }

    func visit(node: LineBreak) {
        //if(hardwrap || node.isExplicit()) {
        //    out.append("<br>");
        //}
        //out.append("\n");
        //indent();
        //node.childrenAccept(this);
    }

    func escapeUrl(text: String) -> String {
        return text
        //.replaceAll(" ", "%20")
        //.replaceAll("\"", "%22")
        //.replaceAll("`", "%60")
        //.replaceAll("<", "%3C")
        //.replaceAll(">", "%3E")
        //.replaceAll("\\[", "%5B")
        //.replaceAll("\\]", "%5D")
        //.replaceAll("\\\\", "%5C");
    }

    func indent() {
        //int repeat = level * 2;
        //for (int i = repeat - 1; i >= 0; i--) {
            //out.append(" ");
        //}
    }

    func getOutput() -> String {
        //if(!partial) {
            //StringBuffer wrapper = new StringBuffer("<!DOCTYPE html>\n");
            //wrapper.append("<html>\n");
            //wrapper.append("  <body>\n");
            //wrapper.append(out.toString().trim().replaceAll("(?m)^", "    ") + "\n");
            //wrapper.append("  </body>\n");
            //wrapper.append("</html>\n");
            //return wrapper.toString();
        //}
        //return out.toString().trim();
    }

    func setPartial(partial: Bool) {
        //this.partial = partial;
    }

    func setHardwrap(hardwrap: Bool) {
        //this.hardwrap = hardwrap;
    }

    func setHeadingIds(headingIds: Bool) {
        //this.headingIds = headingIds;
    }

}
