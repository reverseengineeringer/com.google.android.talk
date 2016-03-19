.class public final Lebo;
.super Ldym;
.source "SourceFile"


# static fields
.field private static final a:Lezv;

.field private static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lebo;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Random;


# instance fields
.field private g:J

.field private h:I

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Ljava/lang/String;

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b:Lezv;

    sput-object v0, Lebo;->a:Lezv;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lebo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lebo;->f:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    .line 130
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ldym;-><init>(Lbfd;JJ)V

    .line 63
    iput-wide v6, p0, Lebo;->g:J

    .line 71
    iput v8, p0, Lebo;->h:I

    .line 74
    iput-boolean v8, p0, Lebo;->i:Z

    .line 77
    iput-boolean v8, p0, Lebo;->j:Z

    .line 81
    iput-wide v6, p0, Lebo;->k:J

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lebo;->l:Ljava/lang/String;

    .line 87
    iput-wide v6, p0, Lebo;->m:J

    .line 2127
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 131
    invoke-virtual {v0}, Lbfd;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lebo;->k:J

    .line 157
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 137
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 138
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "warm_sync_deferral_limit"

    invoke-interface {v0, v1, v6, v7}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 139
    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 144
    const-string v1, "babel_maxsynctickledelay"

    const v4, 0xea60

    .line 143
    invoke-static {v0, v1, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lebo;->k:J

    goto :goto_0

    .line 5036
    :cond_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 152
    const-string v1, "babel_synctickledelay"

    const/16 v4, 0x2710

    .line 151
    invoke-static {v0, v1, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lebo;->k:J

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v1, p0, Lebo;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lebo;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {p0}, Lebo;->g()Z

    move-result v0

    .line 18134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 393
    invoke-virtual {p0, p2}, Lebo;->a(I)V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lebo;->l:Ljava/lang/String;

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lebo;->h:I

    .line 396
    sget-object v0, Lebo;->a:Lezv;

    const-string v1, "WarmSyncServerOp"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x1

    monitor-exit p0

    .line 400
    :goto_0
    return v0

    .line 399
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(I)Lebo;
    .locals 6

    .prologue
    .line 93
    sget-object v0, Lebo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebo;

    .line 94
    if-nez v0, :cond_0

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 95
    const-string v1, "babel_warm_sync_lowmark_seconds"

    const/16 v2, 0x1c20

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 99
    const-string v1, "babel_warm_sync_highmark_seconds"

    const v4, 0x93a80

    invoke-static {v0, v1, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    .line 104
    new-instance v0, Lebo;

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lebo;-><init>(IJJ)V

    .line 111
    sget-object v1, Lebo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lebo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebo;

    .line 114
    :cond_0
    return-object v0
.end method

.method public static c(I)Lebo;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lebo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebo;

    return-object v0
.end method

.method public static l()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 160
    sget-object v0, Lebo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebo;

    .line 5127
    iget-object v2, v0, Ldyx;->b:Ldvb;

    iget-object v2, v2, Ldvb;->b:Lbfd;

    .line 161
    invoke-static {v2}, Ldvd;->e(Lbfd;)Ldvm;

    move-result-object v2

    .line 162
    if-nez v2, :cond_2

    .line 163
    const-string v2, "Babel_ReqWarmSyncOp"

    const-string v3, "Account is not valid. Skipping parasite warm sync operation: "

    .line 6127
    iget-object v0, v0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 164
    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v3, v8, [Ljava/lang/Object;

    .line 163
    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 168
    iget-wide v6, v0, Lebo;->k:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Lebo;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {v0}, Lebo;->e()Z
    :try_end_0
    .catch Lhqd; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 6327
    sget-boolean v3, Lexo;->b:Z

    .line 181
    if-eqz v3, :cond_3

    .line 182
    new-instance v3, Lexr;

    invoke-direct {v3}, Lexr;-><init>()V

    const-string v6, "rtcs_warm_sync_queued"

    .line 183
    invoke-virtual {v3, v6}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v3

    .line 7127
    iget-object v6, v0, Ldyx;->b:Ldvb;

    iget-object v6, v6, Ldvb;->b:Lbfd;

    .line 184
    invoke-virtual {v3, v6}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Lexr;->b()V

    .line 8036
    :cond_3
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 190
    const-string v6, "babel_maxsynctickledelay"

    const v7, 0xea60

    .line 189
    invoke-static {v3, v6, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    .line 194
    add-long/2addr v4, v6

    iput-wide v4, v0, Lebo;->k:J

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lebo;->a(Z)V

    .line 197
    invoke-virtual {v0, v8}, Lebo;->b(Z)V

    .line 198
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lebo;->a(I)V

    .line 199
    invoke-virtual {v0}, Lebo;->p_()V

    .line 200
    invoke-virtual {v0, v2, v8}, Lebo;->a(Ldvm;I)Z

    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 202
    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lebq;)J
    .locals 18

    .prologue
    .line 237
    const-wide v2, 0x7fffffffffffffffL

    .line 238
    invoke-virtual/range {p0 .. p0}, Lebo;->m()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 11036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 240
    const-string v3, "babel_maxsynctickledelay"

    const v4, 0xea60

    invoke-static {v2, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    int-to-long v12, v2

    .line 245
    sget-object v2, Lebp;->a:[I

    invoke-virtual/range {p1 .. p1}, Lebq;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 262
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid delay parameter."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :pswitch_0
    const-wide/16 v2, 0x0

    move-wide v4, v6

    move-wide v8, v2

    .line 264
    :goto_0
    add-long v10, v6, v8

    .line 13036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 265
    const-class v3, Lhpz;

    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhpz;

    .line 13123
    move-object/from16 v0, p0

    iget-object v3, v0, Ldyx;->b:Ldvb;

    iget v3, v3, Ldvb;->a:I

    .line 266
    invoke-interface {v2, v3}, Lhpz;->b(I)Lhqc;

    move-result-object v14

    .line 267
    const-string v2, "warm_sync_deferral_limit"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v14, v2, v0, v1}, Lhqc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 269
    const-wide/16 v16, 0x0

    cmp-long v15, v2, v16

    if-ltz v15, :cond_0

    cmp-long v15, v2, v4

    if-lez v15, :cond_1

    .line 270
    :cond_0
    const-string v15, "warm_sync_deferral_limit"

    invoke-virtual {v14, v15, v4, v5}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v4

    invoke-virtual {v4}, Lhqc;->d()I

    .line 273
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    cmp-long v4, v10, v2

    if-lez v4, :cond_4

    .line 276
    const-wide/16 v4, 0x0

    sub-long v6, v2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 13327
    :goto_1
    sget-boolean v4, Lexo;->b:Z

    .line 278
    if-eqz v4, :cond_2

    .line 279
    new-instance v4, Lexr;

    invoke-direct {v4}, Lexr;-><init>()V

    const-string v5, "rtcs_set_sane_alarm"

    .line 280
    invoke-virtual {v4, v5}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 14127
    move-object/from16 v0, p0

    iget-object v5, v0, Ldyx;->b:Ldvb;

    iget-object v5, v5, Ldvb;->b:Lbfd;

    .line 281
    invoke-virtual {v4, v5}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v4

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lexr;->b(J)Lexr;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1f

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "delay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {v4, v5}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 284
    invoke-virtual {v4}, Lexr;->b()V

    .line 287
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lebo;->k:J

    add-long v6, v2, v12

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 288
    add-long v4, v2, v12

    move-object/from16 v0, p0

    iput-wide v4, v0, Lebo;->k:J

    .line 291
    :cond_3
    return-wide v2

    .line 12036
    :pswitch_1
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 252
    const-string v3, "babel_hashsyncdelay"

    const/16 v4, 0x1388

    invoke-static {v2, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    .line 254
    add-long v2, v6, v12

    move-wide v8, v4

    move-wide v4, v2

    .line 255
    goto/16 :goto_0

    .line 258
    :pswitch_2
    const/4 v2, 0x1

    shl-long v4, v12, v2

    .line 259
    add-long v2, v6, v4

    move-wide v8, v4

    move-wide v4, v2

    .line 260
    goto/16 :goto_0

    :cond_4
    move-wide v2, v10

    goto :goto_1

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(J)V
    .locals 3

    .prologue
    .line 355
    iput-wide p1, p0, Lebo;->g:J

    .line 18036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 18123
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget v1, v1, Ldvb;->a:I

    .line 358
    const-string v2, "last_warm_sync_localtime"

    .line 356
    invoke-static {v0, v1, v2, p1, p2}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;J)V

    .line 361
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 488
    iput-boolean p1, p0, Lebo;->i:Z

    .line 489
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 367
    iget v1, p0, Lebo;->h:I

    iget-object v0, p0, Lebo;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 374
    const-string v0, "[IDLE]"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x53

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Increment pending requests for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Current number of pending request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lebo;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lebo;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget v0, p0, Lebo;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lebo;->h:I

    .line 378
    const/4 v0, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :goto_1
    return v0

    .line 374
    :cond_0
    iget-object v0, p0, Lebo;->l:Ljava/lang/String;

    goto :goto_0

    .line 380
    :cond_1
    :try_start_1
    monitor-exit p0

    .line 381
    const/4 v0, 0x0

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 496
    iput-wide p1, p0, Lebo;->m:J

    .line 497
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 492
    iput-boolean p1, p0, Lebo;->j:Z

    .line 493
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    iget v3, p0, Lebo;->h:I

    iget-object v0, p0, Lebo;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 417
    const-string v0, "[IDLE]"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x53

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Decrement pending requests for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Current number of pending request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    monitor-enter p0

    .line 420
    :try_start_0
    iget-object v0, p0, Lebo;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lebo;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 421
    iget v0, p0, Lebo;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lebo;->h:I

    .line 422
    iget v0, p0, Lebo;->h:I

    if-ltz v0, :cond_2

    move v0, v1

    .line 19134
    :goto_1
    const-string v3, "Expected condition to be true"

    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 423
    iget v0, p0, Lebo;->h:I

    if-nez v0, :cond_4

    .line 424
    invoke-virtual {p0}, Lebo;->g()Z

    move-result v0

    .line 20134
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 425
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lebo;->a(I)V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lebo;->l:Ljava/lang/String;

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lebo;->h:I

    move v0, v1

    .line 431
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    sget-boolean v1, Lbft;->a:Z

    if-eqz v1, :cond_0

    .line 434
    const-string v1, "RequestWarmSyncOperation completed: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    :cond_0
    :goto_3
    return v0

    .line 417
    :cond_1
    iget-object v0, p0, Lebo;->l:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 422
    goto :goto_1

    .line 431
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 434
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public c(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 446
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lebo;->a(Ljava/lang/String;I)Z

    move-result v2

    .line 447
    if-nez v2, :cond_0

    .line 449
    const-string v3, "Babel_ReqWarmSyncOp"

    if-nez p1, :cond_2

    .line 452
    const-string v0, "null"

    :goto_0
    iget-object v1, p0, Lebo;->l:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 454
    const-string v1, "null"

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x39

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "RequestWarmSync: Mismatched key upon SANE completion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " != "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 449
    invoke-static {v3, v0, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lebo;->a(J)V

    .line 457
    :cond_0
    sget-boolean v0, Lbft;->a:Z

    if-eqz v0, :cond_1

    .line 458
    if-eqz v2, :cond_5

    .line 459
    const-string v0, "RequestWarmSyncOperation complete: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    :cond_1
    :goto_2
    return v2

    :cond_2
    move-object v0, p1

    .line 452
    goto :goto_0

    .line 454
    :cond_3
    iget-object v1, p0, Lebo;->l:Ljava/lang/String;

    goto :goto_1

    .line 459
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 461
    :cond_5
    const-string v0, "RequestWarmSyncOperation complete after restart "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lebo;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 474
    sget-boolean v1, Lbft;->a:Z

    if-eqz v1, :cond_0

    .line 475
    if-eqz v0, :cond_2

    .line 476
    const-string v1, "RequestWarmSyncOperation failed: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 476
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_2
    const-string v1, "RequestWarmSyncOperation failed after restart "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected i()J
    .locals 6

    .prologue
    .line 339
    iget-wide v0, p0, Lebo;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 17036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 17123
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget v1, v1, Ldvb;->a:I

    .line 343
    const-string v2, "last_warm_sync_localtime"

    const-wide/16 v4, 0x0

    .line 341
    invoke-static {v0, v1, v2, v4, v5}, Lbff;->a(Landroid/content/Context;ILjava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lebo;->g:J

    .line 347
    :cond_0
    iget-wide v0, p0, Lebo;->g:J

    return-wide v0
.end method

.method public m()Z
    .locals 4

    .prologue
    .line 205
    iget-wide v0, p0, Lebo;->k:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 8127
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 206
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

.method public n()Z
    .locals 6

    .prologue
    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 216
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 9123
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget v1, v1, Ldvb;->a:I

    .line 217
    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "warm_sync_deferral_limit"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 218
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 225
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 10123
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget v1, v1, Ldvb;->a:I

    .line 226
    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "warm_sync_deferral_limit"

    invoke-virtual {v0, v1}, Lhqc;->f(Ljava/lang/String;)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 227
    return-void
.end method

.method public p_()V
    .locals 8

    .prologue
    .line 296
    sget-object v0, Lebo;->a:Lezv;

    const-string v1, "WarmSyncOp"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 302
    iget-wide v4, p0, Lebo;->m:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 303
    const-string v0, ""

    .line 304
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lebo;->f:Ljava/util/Random;

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

    .line 305
    :goto_1
    monitor-enter p0

    .line 307
    :try_start_0
    iput-object v0, p0, Lebo;->l:Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lebo;->k()V

    .line 310
    const/4 v2, 0x0

    iput v2, p0, Lebo;->h:I

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 316
    :try_start_1
    new-instance v3, Lbfz;

    .line 16036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 317
    invoke-direct {v3, v4, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 16134
    iget-object v4, p0, Ldyx;->c:Ldyy;

    .line 318
    iget-boolean v5, p0, Lebo;->i:Z

    iget-boolean v6, p0, Lebo;->j:Z

    .line 316
    invoke-static {v3, v4, v5, v6, v0}, Lbft;->a(Lbfz;Ldyy;ZZLjava/lang/String;)V

    .line 322
    sget-object v0, Lebo;->a:Lezv;

    const-string v3, "WarmSyncServerOp"

    invoke-virtual {v0, v3}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lbgz; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    :goto_2
    sget-object v0, Lebo;->a:Lezv;

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 331
    return-void

    .line 303
    :cond_0
    const-string v0, "from_hash_sync:"

    goto :goto_0

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 327
    :catch_0
    move-exception v0

    invoke-static {v2}, Lebo;->c(I)Lebo;

    goto :goto_2
.end method
