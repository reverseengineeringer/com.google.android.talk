import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import java.nio.ByteBuffer;

public class iih<RS extends lyi>
  extends ihi
{
  private final String a;
  private final String b;
  private boolean c;
  public final RS t;
  
  protected iih(Context paramContext, ihw paramihw, String paramString1, String paramString2, RS paramRS, String paramString3, String paramString4) {}
  
  public void a(ByteBuffer paramByteBuffer)
  {
    b(paramByteBuffer);
    if (s()) {
      b(paramByteBuffer, aal.a(t));
    }
    c(t);
  }
  
  public void a(ByteBuffer paramByteBuffer, String paramString)
  {
    super.a(paramByteBuffer, paramString);
    if (Log.isLoggable("HttpOperation", 5))
    {
      paramByteBuffer = String.valueOf(new String(aal.a(paramByteBuffer), "UTF-8"));
      if (paramByteBuffer.length() != 0) {
        "HttpOperation error: Response follows: \n".concat(paramByteBuffer);
      }
    }
    else
    {
      return;
    }
    new String("HttpOperation error: Response follows: \n");
  }
  
  public String b()
  {
    return "application/x-protobuf";
  }
  
  protected RS b(ByteBuffer paramByteBuffer)
  {
    if (t != null)
    {
      if (paramByteBuffer.hasArray()) {}
      for (paramByteBuffer = lxy.a(paramByteBuffer.array(), paramByteBuffer.arrayOffset() + paramByteBuffer.position(), paramByteBuffer.remaining());; paramByteBuffer = lxy.a(paramByteBuffer, 0, paramByteBuffer.length))
      {
        t.a(paramByteBuffer);
        c = true;
        return t;
        paramByteBuffer = aal.a(paramByteBuffer);
      }
    }
    return null;
  }
  
  public void c(RS paramRS) {}
  
  public Bundle d()
  {
    return null;
  }
  
  public String i()
  {
    return a;
  }
  
  public String j()
  {
    return aal.a(g, b, t(), false, d());
  }
  
  public String t()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     iih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */