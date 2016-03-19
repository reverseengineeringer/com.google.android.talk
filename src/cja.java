import com.google.android.apps.hangouts.hangout.FocusedParticipantView;
import com.google.android.apps.hangouts.hangout.ParticipantTrayView;

final class cja
  extends hjr
{
  cja(ciu paramciu) {}
  
  public void a()
  {
    ezi.a("Babel_calls", "onUnfocused for %s", new Object[] { a.l() });
    a.k = false;
    a.l = false;
    a.i();
  }
  
  public void a(hkl paramhkl)
  {
    paramhkl.a(a);
  }
  
  public void a(boolean paramBoolean)
  {
    ezi.a("Babel_calls", "onFocused for %s", new Object[] { a.l() });
    a.k = true;
    a.l = paramBoolean;
    a.e.g();
    a.f.a(a.a);
    a.i();
  }
}

/* Location:
 * Qualified Name:     cja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */