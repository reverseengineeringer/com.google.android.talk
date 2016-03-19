import android.content.Intent;

public final class crw
{
  public crw(bng parambng) {}
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Intent localIntent = ((crv)a.binder.a(crv.class)).a(a.getActivity());
      a.aj.a(aal.jV, localIntent);
      return;
    }
    ezi.c("Babel_Conv", "Location permission not granted!", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     crw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */