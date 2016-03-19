import org.chromium.base.ApplicationStatus;

public final class mnj
  implements Runnable
{
  public void run()
  {
    if (ApplicationStatus.b != null) {
      return;
    }
    ApplicationStatus.b(new mnk(this));
    ApplicationStatus.a(ApplicationStatus.b);
  }
}

/* Location:
 * Qualified Name:     mnj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */