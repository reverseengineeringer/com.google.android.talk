import com.google.android.apps.hangouts.content.EsProvider;
import java.io.File;

public final class bit
  extends bhs
{
  private final int i;
  
  public bit(int paramInt, eyd parameyd, String paramString, bhv parambhv, Object paramObject)
  {
    super(parameyd, parambhv, true, paramObject);
    i = paramInt;
    if (paramString != null)
    {
      if (new File(paramString).exists()) {
        f.a(paramString);
      }
    }
    else {
      return;
    }
    parameyd = String.valueOf(paramString);
    if (parameyd.length() != 0) {}
    for (parameyd = "Missing cache file:".concat(parameyd);; parameyd = new String("Missing cache file:"))
    {
      ezi.d("Babel_StickerRequest", parameyd, new Object[0]);
      return;
    }
  }
  
  public void a(String paramString)
  {
    Object localObject1 = String.valueOf(paramString);
    Object localObject2;
    if (((String)localObject1).length() != 0)
    {
      localObject1 = "fileSaved fileName:".concat((String)localObject1);
      ezi.c("Babel_StickerRequest", (String)localObject1, new Object[0]);
      bfz localbfz = new bfz(aal.oJ, i);
      localObject2 = localbfz.af(f.r());
      if ((localObject2 != null) && (c != null) && (!c.equals(paramString)))
      {
        if ((!c.contains("sticker_cache")) || (c.contains(EsProvider.b(aal.oJ)))) {
          break label333;
        }
        localObject1 = c;
        localObject2 = String.valueOf(EsProvider.b(aal.oJ));
        ezi.e("Babel_StickerRequest", String.valueOf(localObject1).length() + 38 + String.valueOf(localObject2).length() + "path change detected. oldPath:" + (String)localObject1 + " not in:" + (String)localObject2, new Object[0]);
      }
      if (!localbfz.k(paramString, f.r()))
      {
        localObject1 = new File(paramString);
        if ((((File)localObject1).exists()) && (!((File)localObject1).delete()))
        {
          localObject1 = String.valueOf(paramString);
          if (((String)localObject1).length() == 0) {
            break label470;
          }
        }
      }
    }
    label333:
    label457:
    label470:
    for (localObject1 = "Couldn't delete file:".concat((String)localObject1);; localObject1 = new String("Couldn't delete file:"))
    {
      ezi.e("Babel_StickerRequest", (String)localObject1, new Object[0]);
      localObject1 = String.valueOf(f.r());
      ezi.d("Babel_StickerRequest", String.valueOf(paramString).length() + 43 + String.valueOf(localObject1).length() + "Failed to update sticker fileName=" + paramString + " photoId=" + (String)localObject1, new Object[0]);
      return;
      localObject1 = new String("fileSaved fileName:");
      break;
      localObject1 = new File(c);
      if ((((File)localObject1).exists()) && (!((File)localObject1).delete()))
      {
        localObject1 = String.valueOf(c);
        if (((String)localObject1).length() == 0) {
          break label457;
        }
      }
      for (localObject1 = "Couldn't delete file:".concat((String)localObject1);; localObject1 = new String("Couldn't delete file:"))
      {
        ezi.e("Babel_StickerRequest", (String)localObject1, new Object[0]);
        localObject1 = c;
        ezi.e("Babel_StickerRequest", String.valueOf(paramString).length() + 40 + String.valueOf(localObject1).length() + "Deleted old file. fileName=" + paramString + " oldFileName=" + (String)localObject1, new Object[0]);
        break;
      }
    }
  }
  
  public boolean f()
  {
    return true;
  }
  
  public File j()
  {
    return new File(EsProvider.b(aal.oJ));
  }
}

/* Location:
 * Qualified Name:     bit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */