package com.google.android.talk.util;

import com.google.android.gtalkservice.Presence;

public class PresenceUtils
{
  public static int translatePresence(Presence paramPresence)
  {
    if (paramPresence != null) {}
    for (boolean bool = paramPresence.isAvailable(); !bool; bool = false) {
      return 0;
    }
    if (paramPresence.isInvisible()) {
      return 1;
    }
    paramPresence = paramPresence.getShow();
    switch (paramPresence)
    {
    default: 
      return 5;
    case ???: 
      return 4;
    }
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.PresenceUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */