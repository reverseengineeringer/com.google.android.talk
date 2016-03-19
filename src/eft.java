import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class eft
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final int[] a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public final String h;
  
  public eft(lyt paramlyt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    a = a;
    String str;
    if (!TextUtils.isEmpty(b))
    {
      str = b;
      b = str;
      if (TextUtils.isEmpty(c)) {
        break label119;
      }
      paramlyt = c;
      label49:
      c = paramlyt;
      if (TextUtils.isEmpty(paramString1)) {
        break label124;
      }
      label61:
      d = paramString1;
      if (TextUtils.isEmpty(paramString2)) {
        break label129;
      }
      label73:
      e = paramString2;
      if (TextUtils.isEmpty(paramString3)) {
        break label134;
      }
      label86:
      f = paramString3;
      if (TextUtils.isEmpty(paramString4)) {
        break label140;
      }
    }
    for (;;)
    {
      g = paramString4;
      h = paramString5;
      return;
      str = null;
      break;
      label119:
      paramlyt = null;
      break label49;
      label124:
      paramString1 = null;
      break label61;
      label129:
      paramString2 = null;
      break label73;
      label134:
      paramString3 = null;
      break label86;
      label140:
      paramString4 = null;
    }
  }
  
  private eft(lyt paramlyt, max parammax)
  {
    this(paramlyt, e, f, a(o), c, "hangouts/*");
  }
  
  protected eft(int[] paramArrayOfInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    a = paramArrayOfInt;
    b = null;
    c = null;
    d = paramString3;
    e = null;
    f = paramString5;
    g = paramString6;
    h = paramString7;
  }
  
  static eft a(med parammed, int paramInt)
  {
    parammed = a;
    int i = 0;
    while (i < a.length)
    {
      int j = a[i];
      Object localObject;
      if (j == 249)
      {
        localObject = (map)parammed.b(map.a);
        if (localObject != null) {
          return new efw(parammed, (map)localObject);
        }
      }
      else if (j == 340)
      {
        localObject = (lzv)parammed.b(lzv.a);
        if ((localObject != null) && (o != null)) {
          return new efv(parammed, (lzv)localObject);
        }
      }
      else if (j == 339)
      {
        localObject = (lzp)parammed.b(lzp.a);
        if (localObject != null) {
          return new efw(parammed, (lzp)localObject);
        }
      }
      else if (j == 438)
      {
        localObject = (lzw)parammed.b(lzw.a);
        if ((localObject != null) && (X != null))
        {
          if (paramInt == 3) {
            return new efy(parammed, (lzw)localObject);
          }
          return new efu(parammed, (lzw)localObject);
        }
      }
      else if (j == 335)
      {
        localObject = (max)parammed.b(max.a);
        if (localObject != null) {
          return new eft(parammed, (max)localObject);
        }
      }
      i += 1;
    }
    ezi.d("Babel", "Received invalid attachment", new Object[0]);
    return null;
  }
  
  protected static String a(lyt paramlyt)
  {
    if (paramlyt != null)
    {
      paramlyt = (lzp)paramlyt.b(lzp.a);
      if (paramlyt != null) {
        return c;
      }
    }
    return null;
  }
  
  public static List<eft> a(mel[] paramArrayOfmel, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfmel.length;
    int i = 0;
    if (i < j)
    {
      Object localObject1 = paramArrayOfmel[i];
      int k;
      Object localObject2;
      if (((mel)localObject1).a(kmi.a))
      {
        localObject1 = (kmi)((mel)localObject1).b(kmi.a);
        if (localObject1 != null)
        {
          k = aal.a(b, 0);
          if ((k != 1) || (!((kmi)localObject1).a(kmk.a))) {
            break label206;
          }
          localObject1 = bab;
          if (!((lyt)localObject1).a(map.a)) {
            break label161;
          }
          localObject2 = (map)((lyt)localObject1).b(map.a);
          if (localObject2 == null) {
            break label497;
          }
          localObject1 = new efw((lyt)localObject1, (map)localObject2);
        }
      }
      for (;;)
      {
        if (localObject1 != null) {
          localArrayList.add(localObject1);
        }
        i += 1;
        break;
        label161:
        if (((lyt)localObject1).a(lzp.a))
        {
          localObject2 = (lzp)((lyt)localObject1).b(lzp.a);
          if (localObject2 != null)
          {
            localObject1 = new efw((lyt)localObject1, (lzp)localObject2);
            continue;
            label206:
            if ((k == 2) && (((kmi)localObject1).a(kmj.a)))
            {
              localObject1 = bab;
              localObject2 = (lzv)((lyt)localObject1).b(lzv.a);
              if ((localObject2 != null) && (o != null)) {
                localObject1 = new efv((lyt)localObject1, (lzv)localObject2);
              }
            }
            else if ((k == 3) && (((kmi)localObject1).a(kmh.a)))
            {
              localObject1 = bab;
              localObject2 = (lzw)((lyt)localObject1).b(lzw.a);
              if ((localObject2 != null) && (X != null))
              {
                if (paramInt == 3)
                {
                  localObject1 = new efy((lyt)localObject1, (lzw)localObject2);
                  continue;
                }
                localObject1 = new efu((lyt)localObject1, (lzw)localObject2);
              }
            }
            else if ((k == 5) && (((kmi)localObject1).a(kml.a)))
            {
              localObject1 = bab;
              localObject2 = (max)((lyt)localObject1).b(max.a);
              if (localObject2 != null) {
                localObject1 = new eft((lyt)localObject1, (max)localObject2);
              }
            }
            else if ((k == 7) && (((kmi)localObject1).a(kmg.a)))
            {
              localObject1 = (kmg)((kmi)localObject1).b(kmg.a);
              if (localObject1 != null)
              {
                localObject1 = new efs(b);
                continue;
              }
            }
          }
        }
        label497:
        ezi.d("Babel", "Received invalid attachment", new Object[0]);
        localObject1 = null;
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     eft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */