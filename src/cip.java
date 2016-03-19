import com.google.android.apps.hangouts.hangout.ParticipantOverlays;
import java.util.Iterator;
import java.util.List;

public final class cip
  extends hku
{
  public cip(ParticipantOverlays paramParticipantOverlays)
  {
    super((byte)0);
  }
  
  public void c(hkx paramhkx)
  {
    if ((a.a != null) && (a.a.equals(paramhkx)))
    {
      Iterator localIterator = a.b.iterator();
      while (localIterator.hasNext()) {
        ((cio)localIterator.next()).a(paramhkx);
      }
    }
  }
}

/* Location:
 * Qualified Name:     cip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */