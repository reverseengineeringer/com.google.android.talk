import android.content.Context;
import java.io.File;
import org.chromium.net.CronetEngine.Builder;
import org.chromium.net.HttpUrlRequestFactoryConfig;
import org.chromium.net.UrlRequestContextConfig;

final class efi
{
  private final bwl a = new bwm().a("hangouts_rpc").b("Module containing code for making rpcs to datamixer.").a(true).a();
  
  public ihv a(Context paramContext)
  {
    return (ihv)a.a(paramContext, new efg(paramContext));
  }
  
  public bwl[] a()
  {
    return new bwl[] { a };
  }
  
  public efg b(Context paramContext)
  {
    return (efg)a.a(paramContext, new efg(paramContext));
  }
  
  public UrlRequestContextConfig c(Context paramContext)
  {
    boolean bool = aal.a(paramContext, "babel_quic_for_cronet", false);
    File localFile = new File(paramContext.getCacheDir(), "cronet_cache");
    localFile.mkdir();
    HttpUrlRequestFactoryConfig localHttpUrlRequestFactoryConfig = new HttpUrlRequestFactoryConfig();
    localHttpUrlRequestFactoryConfig.b(localFile.getPath()).a(2, 1048576L).a(bool).d("www.googleapis.com");
    return (UrlRequestContextConfig)a.a(paramContext, localHttpUrlRequestFactoryConfig);
  }
}

/* Location:
 * Qualified Name:     efi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */