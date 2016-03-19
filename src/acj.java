import android.content.Context;
import android.content.Intent;
import android.database.Cursor;

public class acj
  extends acg
{
  public if<String, Integer> g = new if(acq.a.length);
  public final float h;
  public boolean i;
  
  public acj(Context paramContext, bg parambg, Cursor paramCursor, float paramFloat, boolean paramBoolean)
  {
    super(paramContext, parambg, paramCursor);
    h = paramFloat;
    i = paramBoolean;
  }
  
  private String a(Cursor paramCursor, String paramString)
  {
    if (g.containsKey(paramString)) {
      return paramCursor.getString(((Integer)g.get(paramString)).intValue());
    }
    return null;
  }
  
  protected ack a(Intent paramIntent, int paramInt, boolean paramBoolean)
  {
    ack localack = new ack();
    ack.a(paramIntent, paramInt, paramBoolean, localack);
    return localack;
  }
  
  public Cursor a(Cursor paramCursor)
  {
    int k = 0;
    g.clear();
    if (paramCursor != null)
    {
      String[] arrayOfString = acq.a;
      int m = arrayOfString.length;
      int j = 0;
      String str;
      while (j < m)
      {
        str = arrayOfString[j];
        g.put(str, Integer.valueOf(paramCursor.getColumnIndexOrThrow(str)));
        j += 1;
      }
      arrayOfString = acq.b;
      m = arrayOfString.length;
      j = k;
      while (j < m)
      {
        str = arrayOfString[j];
        k = paramCursor.getColumnIndex(str);
        if (k != -1) {
          g.put(str, Integer.valueOf(k));
        }
        j += 1;
      }
    }
    return super.a(paramCursor);
  }
  
  public av a(Cursor paramCursor, int paramInt)
  {
    String str1 = b(paramCursor);
    String str2 = c(paramCursor);
    boolean bool3 = d(paramCursor);
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (str1 == null)
    {
      bool1 = bool2;
      if (bool3) {
        bool1 = true;
      }
    }
    paramCursor = aal.a(a, f());
    paramCursor.c(str1).d(str2).a(i).a(h);
    return a(paramCursor.b(), paramInt, bool1);
  }
  
  public String b(Cursor paramCursor)
  {
    return a(paramCursor, "contentUri");
  }
  
  public String c(Cursor paramCursor)
  {
    return a(paramCursor, "thumbnailUri");
  }
  
  public boolean d(Cursor paramCursor)
  {
    paramCursor = a(paramCursor, "loadingIndicator");
    if (paramCursor == null) {
      return false;
    }
    return Boolean.valueOf(paramCursor).booleanValue();
  }
  
  protected Class<? extends ack> f()
  {
    return ack.class;
  }
}

/* Location:
 * Qualified Name:     acj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */