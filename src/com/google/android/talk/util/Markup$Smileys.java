package com.google.android.talk.util;

public class Markup$Smileys
{
  public static int ANGEL;
  public static int COOL;
  public static int CRYING;
  public static int EMBARRASSED;
  public static int FOOT_IN_MOUTH;
  public static int HAPPY;
  public static int KISSING;
  public static int LAUGHING = 15;
  public static int LIPS_ARE_SEALED;
  public static int MONEY_MOUTH;
  public static int SAD;
  public static int SURPRISED;
  public static int TONGUE_STICKING_OUT;
  public static int UNDECIDED;
  public static int WINKING;
  public static int WTF = 16;
  public static int YELLING;
  private static final int[] sIconIds = { 2130837546, 2130837554, 2130837559, 2130837557, 2130837556, 2130837548, 2130837561, 2130837542, 2130837552, 2130837545, 2130837544, 2130837541, 2130837558, 2130837543, 2130837550, 2130837549, 2130837560 };
  
  static
  {
    HAPPY = 0;
    SAD = 1;
    WINKING = 2;
    TONGUE_STICKING_OUT = 3;
    SURPRISED = 4;
    KISSING = 5;
    YELLING = 6;
    COOL = 7;
    MONEY_MOUTH = 8;
    FOOT_IN_MOUTH = 9;
    EMBARRASSED = 10;
    ANGEL = 11;
    UNDECIDED = 12;
    CRYING = 13;
    LIPS_ARE_SEALED = 14;
  }
  
  public static int getSmileyResource(int paramInt)
  {
    return sIconIds[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.Markup.Smileys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */