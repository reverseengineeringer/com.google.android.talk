.class final Lffa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lbcn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lffa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lffb;

    invoke-direct {v0}, Lffb;-><init>()V

    sput-object v0, Lffa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lffa;->a:Landroid/net/Uri;

    .line 32
    iput-object p2, p0, Lffa;->b:Landroid/graphics/Bitmap;

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lffa;->a:Landroid/net/Uri;

    .line 37
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lffa;->b:Landroid/graphics/Bitmap;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    const-class v0, Lffi;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffi;

    invoke-interface {v0, p1}, Lffi;->a(Landroid/content/Context;)Lffe;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lffe;->a()Lfic;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Lfic;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    .line 44
    invoke-virtual {v4}, Lffe;->a()Lfic;

    move-result-object v0

    invoke-interface {v0}, Lfic;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "BabelUploadConvAvatar"

    const-string v1, "GoogleApiClient failed to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget v0, Lbco;->d:I

    .line 88
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-virtual {v4}, Lffe;->b()Lgrg;

    move-result-object v0

    invoke-virtual {v4}, Lffe;->a()Lfic;

    move-result-object v1

    iget-object v5, p0, Lffa;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5}, Lgrg;->a(Lfic;Landroid/net/Uri;)Lfij;

    move-result-object v0

    invoke-interface {v0}, Lfij;->a()Lfim;

    move-result-object v0

    check-cast v0, Lgro;

    .line 51
    :try_start_0
    invoke-virtual {v0}, Lgro;->j()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lgro;->a()I

    move-result v1

    if-lez v1, :cond_2

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgro;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgrm;

    invoke-static {v1}, Lffe;->c(Lgrm;)Lgrw;

    move-result-object v5

    .line 53
    new-instance v6, Lffv;

    invoke-virtual {v5}, Lgrw;->b()Lgrp;

    move-result-object v1

    invoke-direct {v6, v1}, Lffv;-><init>(Lgrp;)V

    .line 54
    iget-object v1, p0, Lffa;->b:Landroid/graphics/Bitmap;

    invoke-static {v1}, Laal;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v7

    .line 56
    invoke-virtual {v6}, Lffv;->b()Lcom/google/android/gms/wearable/Asset;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    .line 66
    :goto_1
    if-eqz v1, :cond_5

    .line 67
    invoke-virtual {v6, v7}, Lffv;->a(Lcom/google/android/gms/wearable/Asset;)V

    .line 68
    const-string v1, "BabelUploadConvAvatar"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "WearableService.uploadAvatar avatar loaded: %s, size: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v6, p0, Lffa;->a:Landroid/net/Uri;

    .line 73
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    .line 74
    invoke-virtual {v7}, Lcom/google/android/gms/wearable/Asset;->a()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 71
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    :cond_1
    invoke-virtual {v4}, Lffe;->b()Lgrg;

    move-result-object v1

    .line 78
    invoke-virtual {v4}, Lffe;->a()Lfic;

    move-result-object v2

    invoke-virtual {v5}, Lgrw;->c()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgrg;->a(Lfic;Lcom/google/android/gms/wearable/PutDataRequest;)Lfij;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Lfij;->a()Lfim;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lffe;->e()V

    .line 86
    invoke-virtual {v0}, Lfkg;->b()V

    .line 88
    sget v0, Lbco;->a:I

    goto/16 :goto_0

    .line 63
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/wearable/Asset;->a()[B

    move-result-object v1

    .line 1206
    invoke-static {}, Lffe;->g()Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1207
    new-instance v8, Ljava/lang/String;

    const/16 v9, 0xb

    .line 1208
    invoke-static {v1, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    .line 1209
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v1, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 64
    invoke-virtual {v6}, Lffv;->b()Lcom/google/android/gms/wearable/Asset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_1

    .line 80
    :cond_5
    const-string v1, "BabelUploadConvAvatar"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lezi;->a(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 85
    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Lffe;->e()V

    .line 86
    invoke-virtual {v0}, Lfkg;->b()V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lffa;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-object v0, p0, Lffa;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    return-void
.end method
