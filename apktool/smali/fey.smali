.class public final Lfey;
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
            "Lfey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lffe;

.field b:Lhpz;

.field c:Lffl;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lfez;

    invoke-direct {v0}, Lfez;-><init>()V

    sput-object v0, Lfey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfey;->d:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfey;->e:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lfey;->f:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lfey;->d:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lfey;->e:Ljava/lang/String;

    .line 42
    iput p3, p0, Lfey;->f:I

    .line 43
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 9

    .prologue
    .line 53
    const-class v0, Lffi;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffi;

    invoke-interface {v0, p1}, Lffi;->a(Landroid/content/Context;)Lffe;

    move-result-object v0

    iput-object v0, p0, Lfey;->a:Lffe;

    .line 54
    const-class v0, Lhpz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lfey;->b:Lhpz;

    .line 55
    const-class v0, Lffn;

    .line 56
    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffn;

    invoke-interface {v0, p1}, Lffn;->a(Landroid/content/Context;)Lffl;

    move-result-object v0

    iput-object v0, p0, Lfey;->c:Lffl;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    :try_start_0
    iget-object v2, p0, Lfey;->a:Lffe;

    invoke-virtual {v2}, Lffe;->a()Lfic;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Lfic;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    .line 60
    iget-object v2, p0, Lfey;->a:Lffe;

    invoke-virtual {v2}, Lffe;->a()Lfic;

    move-result-object v2

    invoke-interface {v2}, Lfic;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    const-string v0, "BabelSendMoreMessages"

    const-string v1, "GoogleApiClient failed to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget v0, Lbco;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v1, p0, Lfey;->a:Lffe;

    invoke-virtual {v1}, Lffe;->e()V

    .line 87
    :goto_0
    return v0

    .line 64
    :cond_0
    :try_start_1
    iget-object v2, p0, Lfey;->a:Lffe;

    invoke-virtual {v2}, Lffe;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v2

    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    iget-object v4, p0, Lfey;->c:Lffl;

    .line 68
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v5

    iget-object v6, p0, Lfey;->e:Ljava/lang/String;

    iget v7, p0, Lfey;->f:I

    .line 67
    invoke-virtual {v4, v5, v6, v7, v3}, Lffl;->a(ILjava/lang/String;ILjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v4

    .line 69
    new-instance v5, Lgrp;

    invoke-direct {v5}, Lgrp;-><init>()V

    .line 70
    const-string v6, "7"

    iget-object v7, p0, Lfey;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lgrp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v6, "16"

    invoke-virtual {v5, v6, v4}, Lgrp;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 72
    iget-object v4, p0, Lfey;->a:Lffe;

    .line 73
    invoke-virtual {v4}, Lffe;->c()Lgrr;

    move-result-object v4

    iget-object v6, p0, Lfey;->a:Lffe;

    .line 75
    invoke-virtual {v6}, Lffe;->a()Lfic;

    move-result-object v6

    iget-object v7, p0, Lfey;->d:Ljava/lang/String;

    const-string v8, "/hangouts/rpc/more_messages/"

    invoke-virtual {v5}, Lgrp;->a()[B

    move-result-object v5

    .line 74
    invoke-virtual {v4, v6, v7, v8, v5}, Lgrr;->a(Lfic;Ljava/lang/String;Ljava/lang/String;[B)Lfij;

    move-result-object v4

    .line 76
    invoke-interface {v4}, Lfij;->a()Lfim;

    .line 78
    iget-object v4, p0, Lfey;->a:Lffe;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lffe;->a(Lbfd;Ljava/util/Map;Ljava/util/Map;)V

    .line 80
    const-string v2, "BabelSendMoreMessages"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    sub-long v0, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "WearableService.sendMoreMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_1
    iget-object v0, p0, Lfey;->a:Lffe;

    invoke-virtual {v0}, Lffe;->e()V

    .line 87
    sget v0, Lbco;->a:I

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lfey;->a:Lffe;

    invoke-virtual {v1}, Lffe;->e()V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lfey;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lfey;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lfey;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
