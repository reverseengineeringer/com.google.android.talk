package com.google.android.gtalkservice;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GroupChatInvitation
  implements Parcelable
{
  public static final Parcelable.Creator<GroupChatInvitation> CREATOR = new Parcelable.Creator()
  {
    public GroupChatInvitation createFromParcel(Parcel paramAnonymousParcel)
    {
      return new GroupChatInvitation(paramAnonymousParcel);
    }
    
    public GroupChatInvitation[] newArray(int paramAnonymousInt)
    {
      return new GroupChatInvitation[paramAnonymousInt];
    }
  };
  private long mGroupContactId;
  private String mInviter;
  private String mPassword;
  private String mReason;
  private String mRoomAddress;
  
  public GroupChatInvitation(Parcel paramParcel)
  {
    mRoomAddress = paramParcel.readString();
    mInviter = paramParcel.readString();
    mReason = paramParcel.readString();
    mPassword = paramParcel.readString();
    mGroupContactId = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getInviter()
  {
    return mInviter;
  }
  
  public String getPassword()
  {
    return mPassword;
  }
  
  public String getRoomAddress()
  {
    return mRoomAddress;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mRoomAddress);
    paramParcel.writeString(mInviter);
    paramParcel.writeString(mReason);
    paramParcel.writeString(mPassword);
    paramParcel.writeLong(mGroupContactId);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.GroupChatInvitation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */