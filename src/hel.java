import android.content.Context;
import com.google.android.libraries.hangouts.video.internal.CallService;

final class hel
{
  final Context a;
  
  hel(Context paramContext)
  {
    a = paramContext;
  }
  
  protected hbl a(String paramString, jxm paramjxm, jxj paramjxj, mdx parammdx)
  {
    hgv localhgv = new hgv(a, CallService.b(a));
    localhgv.a(paramString, System.currentTimeMillis());
    paramString = new hhe(a, localhgv);
    paramString.a(paramjxm);
    paramString.a(paramjxj);
    paramString.a(parammdx);
    return paramString;
  }
  
  void a(hkt paramhkt, kju paramkju)
  {
    String str = paramhkt.n();
    hbw.a(new hem(this, ((hcb)ilh.b(a).a(hcb.class)).a(str), paramkju, paramhkt.d()));
  }
}

/* Location:
 * Qualified Name:     hel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */