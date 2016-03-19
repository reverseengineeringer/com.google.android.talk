import android.content.Context;
import android.content.Intent;

final class ejz
  implements iju, ioz
{
  ejz(eju parameju) {}
  
  public boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1)
    {
      if (paramInt2 == -1)
      {
        paramIntent = paramIntent.getStringExtra("com.google.android.gms.people.profile.EXTRA_AVATAR_URL");
        Object localObject = a.context;
        bfd localbfd = a.a;
        if (bff.a)
        {
          String str = String.valueOf(ezi.b(localbfd.a()));
          new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(paramIntent).length()).append("setAvatarUrl: ").append(str).append(" avatarUrl: ").append(paramIntent);
        }
        localObject = ((hpz)ilh.a((Context)localObject, hpz.class)).b(localbfd.g());
        ((hqc)localObject).b("profile_photo_url", paramIntent);
        ((hqc)localObject).d();
        a.b.a(a.a.q(), a.a);
      }
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     ejz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */