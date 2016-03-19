.class public final Lfgw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/clearcut/LogEventParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-static {p0}, Laal;->a(Landroid/os/Parcel;)I

    move-result v6

    const/4 v0, 0x0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move v5, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v6, :cond_1

    .line 1000
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2000
    const v7, 0xffff

    and-int/2addr v7, v0

    .line 0
    packed-switch v7, :pswitch_data_0

    invoke-static {p0, v0}, Laal;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v0}, Laal;->e(Landroid/os/Parcel;I)I

    move-result v0

    move v5, v0

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->CREATOR:Lgpz;

    invoke-static {p0, v0, v4}, Laal;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-object v4, v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, v0}, Laal;->l(Landroid/os/Parcel;I)[B

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 3000
    :pswitch_3
    invoke-static {p0, v0}, Laal;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_1
    move-object v1, v0

    .line 0
    goto :goto_0

    .line 3000
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    add-int/2addr v1, v7

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1

    .line 0
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v6, :cond_2

    new-instance v0, Lax;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lax;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-direct {v0, v5, v4, v3, v1}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(ILcom/google/android/gms/playlog/internal/PlayLoggerContext;[B[I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lfgw;->a(Landroid/os/Parcel;)Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4000
    new-array v0, p1, [Lcom/google/android/gms/clearcut/LogEventParcelable;

    .line 0
    return-object v0
.end method
