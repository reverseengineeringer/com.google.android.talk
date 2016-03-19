package org.chromium.net;

import atn;
import mnp;
import org.chromium.base.ApplicationStatus;

public class RegistrationPolicyApplicationStatus
  extends NetworkChangeNotifierAutoDetect.RegistrationPolicy
  implements atn
{
  private boolean b = false;
  
  protected void a()
  {
    if (b) {
      return;
    }
    ApplicationStatus.c.b(this);
    b = true;
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 1) {
      a.b();
    }
    while (paramInt != 2) {
      return;
    }
    a.c();
  }
  
  protected void a(NetworkChangeNotifierAutoDetect paramNetworkChangeNotifierAutoDetect)
  {
    super.a(paramNetworkChangeNotifierAutoDetect);
    ApplicationStatus.a(this);
    a(b());
  }
  
  int b()
  {
    return ApplicationStatus.getStateForApplication();
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.RegistrationPolicyApplicationStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */