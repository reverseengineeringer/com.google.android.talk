.class public final Lebl;
.super Ldym;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lbcl;
.implements Lbcn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lebl;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lezv;

.field private static final e:Ljava/util/Random;


# instance fields
.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Lebq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b:Lezv;

    sput-object v0, Lebl;->a:Lezv;

    .line 8052
    sget-object v0, Lkoc;->a:Ljava/security/SecureRandom;

    .line 38
    sput-object v0, Lebl;->e:Ljava/util/Random;

    .line 233
    new-instance v0, Lebm;

    invoke-direct {v0}, Lebm;-><init>()V

    sput-object v0, Lebl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 6

    .prologue
    .line 84
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ldym;-><init>(Lbfd;JJ)V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lebl;->i:J

    .line 57
    sget-object v0, Lebq;->a:Lebq;

    iput-object v0, p0, Lebl;->j:Lebq;

    .line 85
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0, p1}, Ldym;-><init>(Landroid/os/Parcel;)V

    .line 54
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lebl;->i:J

    .line 57
    sget-object v0, Lebq;->a:Lebq;

    iput-object v0, p0, Lebl;->j:Lebq;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lebl;->f:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lebl;->g:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lebl;->h:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lebl;->i:J

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lebl;->j:Lebq;

    .line 219
    return-void

    :cond_0
    move v0, v2

    .line 213
    goto :goto_0

    :cond_1
    move v1, v2

    .line 214
    goto :goto_1

    .line 218
    :cond_2
    invoke-static {}, Lebq;->values()[Lebq;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_2
.end method

.method public static b(I)Lebl;
    .locals 6

    .prologue
    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 64
    const-string v2, "babel_warm_sync_lowmark_seconds"

    const/16 v3, 0x1c20

    .line 63
    invoke-static {v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    .line 62
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 70
    const-string v4, "babel_warm_sync_highmark_seconds"

    const v5, 0x93a80

    .line 69
    invoke-static {v1, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    .line 68
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 74
    new-instance v0, Lebl;

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lebl;-><init>(IJJ)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 1

    .prologue
    .line 194
    invoke-super {p0, p2}, Ldym;->a(Lbcg;)I

    move-result v0

    return v0
.end method

.method public a()J
    .locals 14

    .prologue
    const-wide/16 v8, 0x0

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 145
    const-string v1, "babel_maxsynctickledelay"

    const v2, 0xea60

    .line 144
    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 151
    sget-object v2, Lebn;->a:[I

    iget-object v3, p0, Lebl;->j:Lebq;

    invoke-virtual {v3}, Lebq;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid delay parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-wide v2, v4

    move-wide v6, v8

    .line 172
    :goto_0
    add-long v10, v4, v6

    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 174
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 7123
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget v1, v1, Ldvb;->a:I

    .line 174
    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    .line 175
    const-string v1, "warm_sync_deferral_limit"

    const-wide/16 v12, -0x1

    invoke-virtual {v0, v1, v12, v13}, Lhqc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 177
    cmp-long v1, v12, v8

    if-ltz v1, :cond_0

    cmp-long v1, v12, v2

    if-lez v1, :cond_1

    .line 178
    :cond_0
    const-string v1, "warm_sync_deferral_limit"

    invoke-virtual {v0, v1, v2, v3}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 181
    :cond_1
    cmp-long v0, v12, v8

    if-ltz v0, :cond_2

    cmp-long v0, v10, v12

    if-lez v0, :cond_2

    .line 182
    sub-long v0, v12, v4

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 184
    :cond_2
    return-wide v6

    .line 6036
    :pswitch_1
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 159
    const-string v3, "babel_hashsyncdelay"

    const/16 v6, 0x1388

    .line 158
    invoke-static {v2, v3, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 162
    add-long/2addr v0, v4

    move-wide v6, v2

    move-wide v2, v0

    .line 163
    goto :goto_0

    .line 166
    :pswitch_2
    const/4 v2, 0x1

    shl-long v2, v0, v2

    .line 167
    add-long v0, v4, v2

    move-wide v6, v2

    move-wide v2, v0

    .line 168
    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(J)V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lebq;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lebl;->j:Lebq;

    .line 137
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lebl;->f:Z

    .line 125
    return-void
.end method

.method public b()Lbcj;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lbcj;->b:Lbcj;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 132
    iput-wide p1, p0, Lebl;->i:J

    .line 133
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2123
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget v0, v0, Ldvb;->a:I

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WarmSync_Acct_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected i()J
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 2127
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 88
    invoke-static {v0}, Ldvd;->d(Lbfd;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lebl;->g:Z

    .line 129
    return-void
.end method

.method public p_()V
    .locals 8

    .prologue
    .line 93
    sget-object v0, Lebl;->a:Lezv;

    const-string v1, "ReqWarmSyncTask"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 98
    iget-wide v4, p0, Lebl;->i:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 99
    const-string v0, ""

    .line 100
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lebl;->e:Ljava/util/Random;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_1
    iput-object v0, p0, Lebl;->h:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lebl;->k()V

    .line 3123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 110
    :try_start_0
    new-instance v3, Lbfz;

    .line 4036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 111
    invoke-direct {v3, v4, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4134
    iget-object v2, p0, Ldyx;->c:Ldyy;

    .line 112
    iget-boolean v4, p0, Lebl;->f:Z

    iget-boolean v5, p0, Lebl;->g:Z

    .line 110
    invoke-static {v3, v2, v4, v5, v0}, Lbft;->a(Lbfz;Ldyy;ZZLjava/lang/String;)V
    :try_end_0
    .catch Lbgz; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_2
    sget-object v0, Lebl;->a:Lezv;

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 120
    return-void

    .line 99
    :cond_0
    const-string v0, "from_hash_sync:"

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    iget-boolean v0, p0, Lebl;->f:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 205
    iget-boolean v0, p0, Lebl;->g:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 206
    iget-object v0, p0, Lebl;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-wide v0, p0, Lebl;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    iget-object v0, p0, Lebl;->j:Lebq;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 204
    goto :goto_0

    :cond_1
    move v1, v2

    .line 205
    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lebl;->j:Lebq;

    invoke-virtual {v0}, Lebq;->ordinal()I

    move-result v0

    goto :goto_2
.end method
