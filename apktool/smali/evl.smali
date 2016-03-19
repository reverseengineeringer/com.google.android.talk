.class public final Levl;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Levk;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p0, p0, v0}, Levl;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1050
    invoke-direct {p0}, Levl;-><init>()V

    .line 1051
    iput-object p1, p0, Levl;->a:Landroid/content/Context;

    .line 1052
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 1060
    const/4 v0, 0x4

    return v0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 1116
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 1117
    const-string v0, "Babel_telephony"

    const-string v1, "TeleWifiCallingSettingsService.setLastEmergencyDialedTimeMillisFromDarkNumber, dialedTimeMillis: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Leut;->a(J)V

    .line 1122
    return-void
.end method

.method public a(Landroid/accounts/Account;)V
    .locals 5

    .prologue
    .line 1106
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 1107
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1108
    :goto_0
    const-string v2, "Babel_telephony"

    const-string v3, "TeleWifiCallingSettingsService.setTychoAccount, account name: "

    .line 1109
    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1108
    invoke-static {v2, v1, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    iget-object v1, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v1}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v1

    invoke-virtual {v1, v0}, Leut;->a(Ljava/lang/String;)V

    .line 1111
    return-void

    .line 1107
    :cond_0
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 1109
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1079
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 1080
    const-string v0, "Babel_telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x44

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TeleWifiCallingSettingsService.setWifiCallingState, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1072
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 1073
    const-string v0, "Babel_telephony"

    const-string v1, "TeleWifiCallingSettingsService.getWifiCallingState, API not used"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 1086
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 1087
    const-string v0, "Babel_telephony"

    const-string v1, "TeleWifiCallingSettingsService.getWifiCallingAccount, API not used"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 1093
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 1094
    const-string v0, "Babel_telephony"

    const-string v1, "TeleWifiCallingSettingsService.setWifiCallingAccount, ignored"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    return-void
.end method

.method public e()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 1099
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 1100
    const-string v0, "Babel_telephony"

    const-string v1, "TeleWifiCallingSettingsService.getTychoAccount, API not used"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1101
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 1065
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->t(Landroid/content/Context;)V

    .line 1066
    const-string v0, "Babel_telephony"

    const-string v1, "TeleWifiCallingSettingsService.getWifiCallingEnabledPreference"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    iget-object v0, p0, Levl;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->d()Z

    move-result v0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Levl;->a()I

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v2, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Levl;->b()Ljava/lang/String;

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Levl;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_4
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Levl;->c()Landroid/accounts/Account;

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    :sswitch_5
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 99
    :cond_0
    invoke-virtual {p0}, Levl;->d()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    :sswitch_6
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Levl;->e()Landroid/accounts/Account;

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 119
    :sswitch_7
    const-string v2, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 127
    :cond_1
    invoke-virtual {p0, v0}, Levl;->a(Landroid/accounts/Account;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    :sswitch_8
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 136
    invoke-virtual {p0, v2, v3}, Levl;->a(J)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    :sswitch_9
    const-string v0, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Levl;->f()Z

    move-result v0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
