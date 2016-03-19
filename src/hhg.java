import android.content.Intent;
import android.util.Pair;
import java.io.IOException;

final class hhg
  extends hbw<Void, Void, Pair<String, Intent>>
{
  hhg(hhe paramhhe) {}
  
  private Pair<String, Intent> b()
  {
    try
    {
      hlk.a(3, "vclib", "AuthenticationTask.doInBackgroundTimed");
      Object localObject = a.d.a(a.b, "oauth2:https://www.googleapis.com/auth/hangouts ");
      hlk.a(3, "vclib", "Got authToken for hangouts");
      localObject = Pair.create(localObject, null);
      return (Pair<String, Intent>)localObject;
    }
    catch (fgm localfgm)
    {
      hlk.a("vclib", "Got authException", localfgm);
      return Pair.create(null, localfgm.b());
    }
    catch (fgj localfgj)
    {
      hlk.a("vclib", "Error in getToken", localfgj);
      return null;
    }
    catch (IOException localIOException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     hhg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */