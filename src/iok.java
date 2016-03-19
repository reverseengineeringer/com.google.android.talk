import android.os.Bundle;

final class iok
  implements iol
{
  iok(iog paramiog, Bundle paramBundle) {}
  
  public void a(ioz paramioz)
  {
    if ((paramioz instanceof iow))
    {
      Bundle localBundle = new Bundle();
      ((iow)paramioz).b(localBundle);
      paramioz = (String)aen.a(iog.b(paramioz));
      a.putBundle(paramioz, localBundle);
    }
  }
}

/* Location:
 * Qualified Name:     iok
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */