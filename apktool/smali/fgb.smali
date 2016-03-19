.class public abstract Lfgb;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lfga;


# direct methods
.method public static a(Landroid/os/IBinder;)Lfga;
    .locals 2

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v0, "com.google.android.apps.tycho.IVoiceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    instance-of v1, v0, Lfga;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lfga;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lfgc;

    invoke-direct {v0, p0}, Lfgc;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v0, "com.google.android.apps.tycho.IVoiceService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.google.android.apps.tycho.IVoiceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lfgb;->a()I

    move-result v0

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v0, "com.google.android.apps.tycho.IVoiceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lfgb;->b()Z

    move-result v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :sswitch_3
    const-string v0, "com.google.android.apps.tycho.IVoiceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lfgb;->c()V

    goto :goto_0

    .line 73
    :sswitch_4
    const-string v0, "com.google.android.apps.tycho.IVoiceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1026
    if-nez v3, :cond_1

    .line 1027
    const/4 v0, 0x0

    .line 78
    :goto_2
    invoke-virtual {p0, v2, v0}, Lfgb;->a(Ljava/lang/String;Lffx;)V

    goto :goto_0

    .line 1029
    :cond_1
    const-string v0, "com.google.android.apps.tycho.IProxyNumberCallback"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_2

    instance-of v4, v0, Lffx;

    if-eqz v4, :cond_2

    .line 1031
    check-cast v0, Lffx;

    goto :goto_2

    .line 1033
    :cond_2
    new-instance v0, Lffz;

    invoke-direct {v0, v3}, Lffz;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
