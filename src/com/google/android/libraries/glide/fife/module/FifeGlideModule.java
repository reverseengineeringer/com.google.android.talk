package com.google.android.libraries.glide.fife.module;

import ahl;
import aht;
import atw;
import com.google.android.apps.common.proguard.UsedByReflection;
import ham;
import hap;
import haq;
import has;
import hat;
import java.io.InputStream;
import java.nio.ByteBuffer;

@UsedByReflection
public final class FifeGlideModule
  implements atw
{
  public void a(ahl paramahl) {}
  
  public void a(aht paramaht)
  {
    paramaht.b(String.class, InputStream.class, new hat());
    paramaht.b(String.class, ByteBuffer.class, new has());
    paramaht.a(ham.class, ByteBuffer.class, new hap());
    paramaht.a(ham.class, InputStream.class, new haq());
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.glide.fife.module.FifeGlideModule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */