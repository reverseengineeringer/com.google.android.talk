import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;

public final class dyc
  implements cwi
{
  static final boolean a = false;
  private final dye b;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  protected dyc()
  {
    b = null;
  }
  
  public dyc(dye paramdye)
  {
    b = paramdye;
  }
  
  private ieb a(ied paramied)
  {
    String str = String.valueOf(b.e());
    if (str.length() != 0) {}
    for (str = "Start uploading local URL -- ".concat(str);; str = new String("Start uploading local URL -- "))
    {
      ezi.c("Babel_MediaUploadNetReq", str, new Object[0]);
      try
      {
        paramied = paramied.a(new ier().a(Uri.parse(b.e())).a(b.h()).b(b.g()).c(b.f()).a().b().c());
        return paramied;
      }
      catch (idy paramied)
      {
        throw new dvn(122, paramied);
      }
      catch (idu paramied)
      {
        throw new dvn(114, paramied, 0L, false, "media changed");
      }
      catch (idv paramied)
      {
        throw new dvn(114, paramied, 0L, false, "media unavailable");
      }
      catch (idt paramied)
      {
        throw new dvn(114, paramied);
      }
      catch (idq paramied)
      {
        throw new dvn(102, paramied, 0L, false, "connectivity constraint");
      }
      catch (idx paramied)
      {
        throw new dvn(104, paramied);
      }
      catch (ids paramied)
      {
        throw new dvn(114, paramied, 0L, false, "invalid content uri");
      }
      catch (idr paramied)
      {
        throw new dvn(114, paramied, 0L, false, "invalid content type");
      }
      catch (idw paramied)
      {
        throw new dvn(122, paramied, 0L, false, "restart; retriable");
      }
      catch (idp paramied)
      {
        throw new dvn(121, paramied, 0L, false, "abort");
      }
    }
  }
  
  private void a(int paramInt1, int paramInt2, long paramLong)
  {
    csn localcsn = new csn().a(b.b()).c(b.a()).a(paramInt2).b(paramLong);
    aen.a(paramInt1, SystemClock.elapsedRealtime(), 10, localcsn);
  }
  
  public boolean E_()
  {
    return false;
  }
  
  public boolean F_()
  {
    return true;
  }
  
  public String a()
  {
    return "photo_queue";
  }
  
  public void a(Context paramContext, cwk paramcwk, cwm paramcwm)
  {
    int i = c;
    paramcwk = new dyd(this);
    paramcwm = dvd.e(i);
    if (paramcwm == null) {
      throw new dvn(114, "null account");
    }
    paramContext = new ief(paramContext).a(paramcwm.a()).b(ba).c(paramcwm.U()).a(paramcwk).a(iep.a).a();
    a(i, 501, 0L);
    a(i, 502, a(paramContext).a());
  }
  
  public boolean a(cwi paramcwi)
  {
    return false;
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    int i = ((bdp)ilh.a(aal.oJ, bdp.class)).a("babel_max_upload_error_retries", 10);
    switch (paramdvn.c())
    {
    default: 
      i = paramdvn.c();
      ezi.d("Babel_MediaUploadNetReq", 49 + "Default no retry on BabelClientError: " + i, new Object[0]);
      return false;
    case 104: 
      return false;
    case 122: 
      return d < i;
    case 102: 
      return true;
    }
    return false;
  }
  
  public boolean a(String paramString)
  {
    return false;
  }
  
  public long b()
  {
    return ((bdp)ilh.a(aal.oJ, bdp.class)).a("babel_pending_message_failure_duration", 1200000L);
  }
  
  public void b(int paramInt, dvn paramdvn)
  {
    if (dvd.e(paramInt) == null)
    {
      if (ezi.a("Babel_MediaUploadNetReq", 3)) {
        ezi.a("Babel_MediaUploadNetReq", 57 + "Skipping request failure for invalid account: " + paramInt, new Object[0]);
      }
      return;
    }
    a(paramInt, 503, paramdvn.c());
  }
  
  public String e()
  {
    return null;
  }
  
  public String toString()
  {
    String str = String.valueOf(b.toString());
    if (str.length() != 0) {
      return "MediaUploadNetworkRequest ".concat(str);
    }
    return new String("MediaUploadNetworkRequest ");
  }
}

/* Location:
 * Qualified Name:     dyc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */