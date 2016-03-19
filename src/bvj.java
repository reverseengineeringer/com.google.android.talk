import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import java.io.IOException;
import java.io.OutputStream;

final class bvj
  implements bhv
{
  private final Context a;
  
  public bvj(Context paramContext)
  {
    a = paramContext;
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    Uri localUri = (Uri)parambhs.l();
    paramexs = String.valueOf(parambhs.n());
    parambhs = String.valueOf(localUri);
    ezi.c("Babel_DownMapImgCons", String.valueOf(paramexs).length() + 31 + String.valueOf(parambhs).length() + "Download of " + paramexs + " to " + parambhs + " Success: " + paramBoolean1, new Object[0]);
    if (paramBoolean1)
    {
      parambhs = null;
      paramexs = null;
    }
    for (;;)
    {
      try
      {
        localOutputStream = a.getContentResolver().openOutputStream(localUri);
        paramexs = localOutputStream;
        parambhs = localOutputStream;
        parameys.e().compress(Bitmap.CompressFormat.JPEG, 70, localOutputStream);
        paramexs = localOutputStream;
        parambhs = localOutputStream;
        if (ezi.a("Babel_DownMapImgCons", 3))
        {
          paramexs = localOutputStream;
          parambhs = localOutputStream;
          parameys = String.valueOf(localUri);
          paramexs = localOutputStream;
          parambhs = localOutputStream;
          ezi.b("Babel_DownMapImgCons", String.valueOf(parameys).length() + 24 + "Saved location image to " + parameys, new Object[0]);
        }
      }
      catch (IOException parameys)
      {
        OutputStream localOutputStream;
        parambhs = paramexs;
        ezi.d("Babel_DownMapImgCons", "IOException saving location image", parameys);
        if (paramexs == null) {
          continue;
        }
        try
        {
          paramexs.close();
          return;
        }
        catch (IOException parameys)
        {
          ezi.d("Babel_DownMapImgCons", "IOException closing output stream", parameys);
          return;
        }
      }
      finally
      {
        if (parambhs == null) {
          break label274;
        }
      }
      try
      {
        localOutputStream.close();
        return;
      }
      catch (IOException parameys)
      {
        ezi.d("Babel_DownMapImgCons", "IOException closing output stream", parameys);
        return;
      }
    }
    try
    {
      parambhs.close();
      label274:
      throw parameys;
    }
    catch (IOException paramexs)
    {
      for (;;)
      {
        ezi.d("Babel_DownMapImgCons", "IOException closing output stream", paramexs);
      }
    }
  }
}

/* Location:
 * Qualified Name:     bvj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */