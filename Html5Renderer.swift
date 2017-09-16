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
        out += "<h" + node.value
        //if(headingIds) {
        //    String id = "";
        //    for(Node n : node.getChildren()) {
        //        if(n instanceof Text) {
        //            id += n.getValue().toString();
        //        }
        //    }
        //    out.append(" id=\"" + id.toLowerCase().replace(" ", "_")  + "\"");
        //}
        out += ">"
        //node.childrenAccept(this);
        out += "</h" + node.value + ">\n"
        //if(!node.isNested()) { out.append("\n"); }
    }

    func visit(node: BlockQuote) {
        indent()
        out += "<blockquote>"
        //if(node.getChildren() != null && node.getChildren().length > 0) { out.append("\n"); }
        //level++;
        //node.childrenAccept(this);
        //level--;
        indent()
        out += "</blockquote>\n"
        //if(!node.isNested()) { out.append("\n"); }
    }


    func visit(node: ListBlock) {
        //listSequence.push(0);
        var tag: String = node.isOrdered() ? "ol" : "ul"
        indent()
        out += "<" + tag + ">\n"
        //level++;
        //node.childrenAccept(this);
        //level--;
        indent()
        out += "</" + tag + ">\n"
        //if(!node.isNested()) { out.append("\n"); }
        //listSequence.pop();
    }
 
    func visit(node: ListItem) {
        //Integer seq = listSequence.peek() + 1;
        //listSequence.set(listSequence.size() - 1, seq);
        indent()
        out += "<li"
        //if(node.getNumber() != null && (!seq.equals(node.getNumber()))) {
            //out.append(" value=\"" + node.getNumber() + "\"");
            //listSequence.push(node.getNumber());
        //}
        out += ">"
        //if(node.getChildren() != null) {
            //boolean block = (node.getChildren()[0].getClass() == Paragraph.class || node.getChildren()[0].getClass() == BlockElement.class);
        
            //if(node.getChildren().length > 1 || !block) { out.append("\n"); }
            //level++;
            //node.childrenAccept(this);
            //level--;
            //if(node.getChildren().length > 1 || !block) { indent(); }
        //}
        out += "</li>\n"
    }


    func visit(node: CodeBlock) {
        indent()
        out += "<pre><code"
        //if(node.getLanguage() != null) {
            //out.append(" class=\"language-" + escape(node.getLanguage()) + "\"");
        //}
        out += ">"
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
        out += "</a>"
    }
 
    func visit(node: Strong) {
        out += "<strong>"
        node.childrenAccept(self);
        out += "</strong>"
    }
    
    func visit(node: Em) {
        out += "<em>"
        node.childrenAccept(self)
        out += "</em>"
    }
    
    func visit(node: Code) {
        out += "<code>"
        //node.childrenAccept(this);
        out += "</code>"
    }

    func visit(node: Text) {
        out += escape(node.value))
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
