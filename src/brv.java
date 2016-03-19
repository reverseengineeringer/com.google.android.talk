import android.content.Context;
import com.google.android.apps.hangouts.conversation.v2.TransportSpinner;

public final class brv
  extends dlj
{
  public brv(TransportSpinner paramTransportSpinner, Context paramContext, iog paramiog, int paramInt)
  {
    super(paramContext, paramiog, paramInt, al);
  }
  
  public void a(dns paramdns)
  {
    TransportSpinner localTransportSpinner = a;
    boolean bool = paramdns.e();
    if (c != bool)
    {
      c = bool;
      b.notifyDataSetChanged();
      localTransportSpinner.b();
    }
  }
  
  protected void c()
  {
    TransportSpinner localTransportSpinner = a;
    if (c)
    {
      c = false;
      b.notifyDataSetChanged();
      localTransportSpinner.b();
    }
  }
}

/* Location:
 * Qualified Name:     brv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */