import android.os.Bundle;
import android.os.ParcelFileDescriptor;

final class gow
  extends goh
{
  private final fis<glp> a;
  
  public gow(fis<glp> paramfis)
  {
    a = paramfis;
  }
  
  public void a(int paramInt, Bundle paramBundle1, ParcelFileDescriptor paramParcelFileDescriptor, Bundle paramBundle2)
  {
    int i = 0;
    if (aal.q(3))
    {
      new StringBuilder("Avatar callback: status=").append(paramInt).append(" resolution=").append(paramBundle1).append(" pfd=").append(paramParcelFileDescriptor);
      aal.q(3);
    }
    paramBundle1 = got.a(paramInt, paramBundle1);
    boolean bool;
    if (paramBundle2 != null)
    {
      bool = paramBundle2.getBoolean("rewindable");
      paramInt = paramBundle2.getInt("width");
      i = paramBundle2.getInt("height");
    }
    for (;;)
    {
      a.a(new goz(paramBundle1, paramParcelFileDescriptor, bool, paramInt, i));
      return;
      paramInt = 0;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     gow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */