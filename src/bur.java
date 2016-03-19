import android.content.Context;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class bur
  implements iaw
{
  private final hpz a;
  private final bdp b;
  private final Context c;
  private final eot d;
  
  bur(Context paramContext)
  {
    a = ((hpz)ilh.a(paramContext, hpz.class));
    b = ((bdp)ilh.a(paramContext, bdp.class));
    d = ((eot)ilh.a(paramContext, eot.class));
    c = paramContext;
  }
  
  public void a(int paramInt)
  {
    ezi.c("Babel_StickerModule", 34 + "Account change update: " + paramInt, new Object[0]);
    if (a.d(paramInt))
    {
      String str = b.a("babel_stickers_account_id", "108618507921641169817");
      bfd localbfd = dvd.e(paramInt);
      if ((d.a(paramInt)) || (dvd.d(localbfd))) {}
      long l;
      do
      {
        return;
        l = bff.i(c, localbfd);
        if ((l > 0L) && (!aal.a(c, "babel_stickers_auto_update", true)))
        {
          ezi.a("Babel_StickerModule", 59 + "Skip stickers auto update. Last update:" + l, new Object[0]);
          return;
        }
      } while (aal.a(c, "babel_stickers_query_limit_ms", eea.i) + l >= System.currentTimeMillis());
      ezi.c("Babel_StickerModule", 63 + "Sticker update initiated. last:" + l + " empty:false", new Object[0]);
      RealTimeChatService.o(localbfd, str);
      return;
    }
    ezi.d("Babel_StickerModule", "Null account update.", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     bur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */