import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.google.android.apps.hangouts.hangout.ProximityCoverView;

public final class cjf
  implements SensorEventListener
{
  public cjf(ProximityCoverView paramProximityCoverView) {}
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    a.b = sensor.getMaximumRange();
    a.a = values[0];
    a.c();
  }
}

/* Location:
 * Qualified Name:     cjf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */