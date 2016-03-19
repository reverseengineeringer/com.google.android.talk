import android.content.Context;

final class dis
  implements Runnable
{
  dis(dir paramdir, Throwable paramThrowable, boolean paramBoolean, Thread paramThread) {}
  
  public void run()
  {
    dir localdir = d;
    Throwable localThrowable = a;
    fak localfak = (fak)ilh.a(a, fak.class);
    if ((!localfak.a()) && ((localfak.b()) || (aal.a(a, "babel_send_silent_crash_feedback", false)))) {
      ikj.a(a, localThrowable, String.valueOf(a.getPackageName()).concat(".SILENT_CRASH_REPORT"));
    }
    if ((b) && (d.b != null)) {
      d.b.uncaughtException(c, a);
    }
  }
}

/* Location:
 * Qualified Name:     dis
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */