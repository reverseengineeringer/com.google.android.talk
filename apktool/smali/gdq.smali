.class public final Lgdq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/LocationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;
    .locals 17

    .prologue
    .line 0
    invoke-static/range {p0 .. p0}, Laal;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x66

    const-wide/32 v4, 0x36ee80

    const-wide/32 v6, 0x927c0

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    const v11, 0x7fffffff

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-ge v15, v1, :cond_0

    .line 1000
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2000
    const v16, 0xffff

    and-int v16, v16, v15

    .line 0
    sparse-switch v16, :sswitch_data_0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->e(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->e(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->f(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->f(Landroid/os/Parcel;I)J

    move-result-wide v6

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->c(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->f(Landroid/os/Parcel;I)J

    move-result-wide v9

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->e(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->g(Landroid/os/Parcel;I)F

    move-result v12

    goto :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Laal;->f(Landroid/os/Parcel;I)J

    move-result-wide v13

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-eq v15, v1, :cond_1

    new-instance v2, Lax;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Overread allowed size end="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v2, v1, v0}, Lax;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v2

    :cond_1
    new-instance v1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/location/LocationRequest;-><init>(IIJJZJIFJ)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lgdq;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3000
    new-array v0, p1, [Lcom/google/android/gms/location/LocationRequest;

    .line 0
    return-object v0
.end method
