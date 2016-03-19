import android.content.Context;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class ctb
  extends img
  implements csv, iam
{
  private iad a;
  private hpz b;
  private int c = -1;
  
  public void a()
  {
    Object localObject = getContext();
    bfd localbfd = dvd.e(c);
    if (bff.a)
    {
      String str = String.valueOf(ezi.b(localbfd.a()));
      new StringBuilder(String.valueOf(str).length() + 49).append("setGmailChatArchiveEnabled: ").append(str).append(" enableArchive: true");
    }
    RealTimeChatService.a(localbfd.g(), 6, true);
    ((hpz)ilh.a((Context)localObject, hpz.class)).b(localbfd.g()).b("chat_archive_enabled", true).d();
    localObject = b.a(c);
    a.a(((hqb)localObject).b("account_name"), ((hqb)localObject).b("effective_gaia_id"));
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
    if (((eot)binder.a(eot.class)).a(paramInt)) {
      a.b(getString(StressMode.sd), "Cannot login SMS only account");
    }
    Object localObject1 = b.a(paramInt);
    if (cta.d((hqb)localObject1))
    {
      if ((!cta.b((hqb)localObject1)) && (cta.a((hqb)localObject1)))
      {
        Object localObject2 = context;
        localObject1 = getChildFragmentManager();
        Bundle localBundle = new Bundle();
        localBundle.putString("title", ((Context)localObject2).getString(StressMode.hd));
        localBundle.putString("message", ((Context)localObject2).getString(StressMode.hb));
        localBundle.putString("positive", ((Context)localObject2).getString(StressMode.hc));
        localObject2 = new csu();
        ((csu)localObject2).setArguments(localBundle);
        ((csu)localObject2).a((bg)localObject1, "archive_tos");
      }
      do
      {
        return;
        if (!cta.a((hqb)localObject1))
        {
          cst.a(context, getChildFragmentManager(), StressMode.hh, StressMode.hg);
          return;
        }
      } while (!cta.c((hqb)localObject1));
      cst.a(context, getChildFragmentManager(), StressMode.hj, StressMode.hi);
      return;
    }
    a.b(getString(StressMode.sd), "Account upgrade without OOBE");
  }
  
  public void b()
  {
    a.c();
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    b = ((hpz)binder.a(hpz.class));
    a = ((iad)binder.a(iad.class));
    binder.a(csv.class, this);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      c = paramBundle.getInt("account_id");
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("account_id", c);
  }
}

/* Location:
 * Qualified Name:     ctb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */