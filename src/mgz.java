import java.util.HashMap;
import java.util.Stack;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

final class mgz
  extends DefaultHandler
{
  HashMap<String, String> a = new HashMap();
  Stack<mha> b = new Stack();
  
  public void endElement(String paramString1, String paramString2, String paramString3)
  {
    if (b.size() > 0)
    {
      paramString1 = (mha)b.lastElement();
      c.append("</");
      c.append(paramString2);
      c.append(">");
      b -= 1;
      if (b == 0)
      {
        paramString2 = c.toString();
        a.put(a, paramString2);
        b.pop();
        if (b.size() > 0) {
          b.lastElement()).c.append(paramString2);
        }
      }
    }
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    paramString1 = paramAttributes.getValue("id");
    if (paramString1 != null)
    {
      paramString1 = new mha(this, paramString1);
      b.push(paramString1);
    }
    if (b.size() > 0)
    {
      paramString1 = (mha)b.lastElement();
      b += 1;
      paramString1 = c;
      paramString1.append("<");
      paramString1.append(paramString2);
      int i = 0;
      while (i < paramAttributes.getLength())
      {
        paramString1.append(" ");
        paramString1.append(paramAttributes.getQName(i));
        paramString1.append("='");
        paramString1.append(paramAttributes.getValue(i).replaceAll("\"", "&quot;").replaceAll("'", "&apos").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("&", "&amp;"));
        paramString1.append("'");
        i += 1;
      }
      paramString1.append(">");
    }
  }
}

/* Location:
 * Qualified Name:     mgz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */