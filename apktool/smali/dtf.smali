.class public Ldtf;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final g:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final h:J

.field private final i:Z

.field private final j:Z

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldtf;->g:Z

    return-void
.end method

.method private constructor <init>(Lkfk;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p1, Lkfk;->responseHeader:Lkdp;

    iget-object v2, p1, Lkfk;->g:Ljxc;

    invoke-direct {p0, v1, v2}, Ldqf;-><init>(Lkdp;Ljxc;)V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldtf;->k:Ljava/util/ArrayList;

    .line 62
    iget-object v1, p1, Lkfk;->b:Ljava/lang/Long;

    .line 1051
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 62
    iput-wide v2, p0, Ldtf;->h:J

    .line 64
    iget-object v1, p1, Lkfk;->a:Ljava/lang/Boolean;

    .line 2015
    invoke-static {v1, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 64
    iput-boolean v1, p0, Ldtf;->i:Z

    .line 65
    iget-object v1, p1, Lkfk;->d:Ljava/lang/Boolean;

    .line 3015
    invoke-static {v1, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 65
    iput-boolean v1, p0, Ldtf;->j:Z

    .line 67
    iget-object v1, p1, Lkfk;->c:[Ljyc;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 68
    iget-object v4, p0, Ldtf;->k:Ljava/util/ArrayList;

    invoke-static {v3}, Ljyc;->a(Llyi;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    sget-boolean v0, Ldtf;->g:Z

    if-eqz v0, :cond_1

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SyncAllNewEventsResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lkfk;

    invoke-direct {v0}, Lkfk;-><init>()V

    .line 3131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 79
    check-cast v0, Lkfk;

    .line 80
    iget-object v1, v0, Lkfk;->responseHeader:Lkdp;

    invoke-static {v1}, Ldtf;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkfk;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 83
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldtf;

    invoke-direct {v1, v0}, Ldtf;-><init>(Lkfk;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfd;)V
    .locals 1

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    invoke-static {v0, p0}, Ldqf;->a(ILdqf;)V

    .line 92
    :cond_0
    return-void
.end method

.method public a(Lbfz;Ldyy;)V
    .locals 36

    .prologue
    .line 115
    const/4 v4, 0x0

    .line 116
    const/16 v16, 0x0

    .line 117
    const/16 v22, 0x0

    .line 3327
    sget-boolean v5, Lexo;->b:Z

    .line 119
    if-eqz v5, :cond_0

    .line 120
    new-instance v5, Lexr;

    invoke-direct {v5}, Lexr;-><init>()V

    const-string v6, "sane_response"

    .line 121
    invoke-virtual {v5, v6}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v5

    .line 122
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    invoke-virtual {v5, v6}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v5

    .line 123
    invoke-virtual {v5}, Lexr;->b()V

    .line 126
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Ldtf;->i:Z

    if-eqz v5, :cond_3

    .line 127
    invoke-super/range {p0 .. p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 129
    const-string v5, "Babel_SANE"

    const-string v6, "Force clear cache and resync for account:"

    .line 132
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    invoke-virtual {v4}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 129
    invoke-static {v5, v4, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3456
    invoke-virtual/range {p1 .. p1}, Lbfz;->a()V

    .line 3458
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lbfz;->t()V

    .line 3460
    invoke-virtual/range {p1 .. p1}, Lbfz;->f()Landroid/content/Context;

    move-result-object v4

    .line 3461
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    const-string v6, "last_successful_sync_time"

    const-wide/16 v8, 0x0

    .line 3459
    invoke-static {v4, v5, v6, v8, v9}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;J)V

    .line 3464
    invoke-virtual/range {p1 .. p1}, Lbfz;->w()V

    .line 3465
    invoke-virtual/range {p1 .. p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3467
    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    .line 3471
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    .line 3473
    invoke-virtual {v5}, Lbfd;->g()I

    move-result v4

    invoke-static {v4}, Lebo;->b(I)Lebo;

    move-result-object v6

    .line 3474
    move-object/from16 v0, p0

    iget-object v4, v0, Ldtf;->b:Leff;

    check-cast v4, Ldpy;

    .line 3475
    invoke-virtual {v4}, Ldpy;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lebo;->c(Ljava/lang/String;)Z

    .line 3481
    invoke-virtual {v5}, Lbfd;->g()I

    move-result v4

    const/4 v6, 0x0

    sget-object v7, Lebq;->a:Lebq;

    .line 3480
    invoke-static {v4, v6, v7}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;)V

    .line 3485
    invoke-virtual {v5}, Lbfd;->n()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3487
    invoke-virtual/range {p1 .. p1}, Lbfz;->f()Landroid/content/Context;

    move-result-object v4

    .line 3488
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    const-string v7, "sms_last_sync_time_millis"

    .line 3486
    invoke-static {v4, v6, v7}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 3490
    invoke-static {v5}, Leny;->b(Lbfd;)V

    .line 453
    :cond_1
    return-void

    .line 132
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3467
    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    throw v4

    .line 137
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Ldtf;->b:Leff;

    if-eqz v5, :cond_4

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Ldtf;->b:Leff;

    check-cast v4, Ldpy;

    iget-boolean v5, v4, Ldpy;->c:Z

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Ldtf;->b:Leff;

    check-cast v4, Ldpy;

    invoke-virtual {v4}, Ldpy;->p()Ljava/lang/String;

    move-result-object v22

    move v4, v5

    .line 142
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Ldtf;->k:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Ldtf;->c:Ldsf;

    iget-wide v6, v6, Ldsf;->d:J

    .line 143
    invoke-static {v5, v4, v6, v7}, Ldmp;->a(Ljava/util/ArrayList;ZJ)Ljava/util/List;

    move-result-object v8

    .line 146
    invoke-super/range {p0 .. p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 148
    const-wide/16 v4, 0x0

    .line 149
    sget-boolean v6, Lbft;->a:Z

    if-eqz v6, :cond_2a

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide/from16 v26, v4

    .line 152
    :goto_1
    const-string v4, "Babel_SANE"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    const-string v4, "Babel_SANE"

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "processSyncAllNewEventsResponse: count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_5
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 157
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 158
    invoke-virtual/range {p0 .. p0}, Ldtf;->j()Lcqr;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 159
    invoke-virtual/range {p0 .. p0}, Ldtf;->j()Lcqr;

    move-result-object v4

    const-string v5, "sync_all_new_events_response"

    .line 160
    invoke-interface {v4, v5}, Lcqr;->a(Ljava/lang/String;)V

    .line 162
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lbfz;->a()V

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v12, v4, v6

    .line 166
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lbfz;->f()Landroid/content/Context;

    move-result-object v4

    .line 167
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    const-string v6, "last_successful_sync_time"

    const-wide/16 v10, 0x0

    .line 165
    invoke-static {v4, v5, v6, v10, v11}, Lbff;->a(Landroid/content/Context;ILjava/lang/String;J)J

    move-result-wide v32

    .line 172
    const/4 v14, 0x1

    .line 175
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ldtf;->j:Z

    if-eqz v4, :cond_a

    .line 176
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 178
    invoke-virtual/range {p1 .. p1}, Lbfz;->f()Landroid/content/Context;

    move-result-object v5

    const-string v6, "babel_separate_gcr_threshold"

    const/4 v7, 0x5

    .line 177
    invoke-static {v5, v6, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-le v4, v5, :cond_a

    .line 187
    new-instance v4, Ldpz;

    const/4 v5, 0x5

    move-object/from16 v0, v22

    invoke-direct {v4, v5, v0}, Ldpz;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ldyy;->a(Leff;)V

    .line 192
    new-instance v4, Ldpz;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ldpz;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ldyy;->a(Leff;)V

    .line 197
    invoke-virtual/range {p1 .. p1}, Lbfz;->t()V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lbfz;->o()V

    .line 200
    invoke-virtual/range {p1 .. p1}, Lbfz;->f()Landroid/content/Context;

    move-result-object v4

    .line 201
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    const-string v6, "last_successful_sync_time"

    const-wide/16 v8, 0x0

    .line 199
    invoke-static {v4, v5, v6, v8, v9}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;J)V

    .line 204
    const/4 v4, 0x1

    .line 427
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 429
    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    .line 430
    invoke-virtual/range {p0 .. p0}, Ldtf;->j()Lcqr;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 431
    invoke-virtual/range {p0 .. p0}, Ldtf;->j()Lcqr;

    move-result-object v5

    .line 433
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    const-string v7, "sync_all_new_events_response"

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x3

    .line 432
    invoke-interface/range {v5 .. v10}, Lcqr;->a(ILjava/lang/String;JI)V

    .line 439
    :cond_7
    sget-boolean v5, Lbft;->a:Z

    if-eqz v5, :cond_8

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 441
    sub-long v6, v6, v26

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x28

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "processSANE took "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_8
    if-eqz v4, :cond_9

    .line 445
    invoke-static/range {p1 .. p1}, Lbft;->d(Lbfz;)V

    .line 447
    :cond_9
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 448
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    goto :goto_3

    .line 206
    :cond_a
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 208
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    invoke-static {v4}, Lebo;->b(I)Lebo;

    move-result-object v34

    .line 210
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_4
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ldmp;

    move-object v15, v0

    .line 212
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    iget-object v5, v15, Ldmp;->b:Lega;

    .line 211
    invoke-static {v4, v5}, Lbft;->a(Lbfd;Lega;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 214
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    const/16 v5, 0x72f

    .line 213
    invoke-static {v4, v5}, Laal;->a(Lbfd;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 429
    :catchall_1
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    .line 430
    invoke-virtual/range {p0 .. p0}, Ldtf;->j()Lcqr;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 431
    invoke-virtual/range {p0 .. p0}, Ldtf;->j()Lcqr;

    move-result-object v5

    .line 433
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    const-string v7, "sync_all_new_events_response"

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x3

    .line 432
    invoke-interface/range {v5 .. v10}, Lcqr;->a(ILjava/lang/String;JI)V

    :cond_b
    throw v4

    .line 218
    :cond_c
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Ldtf;->g()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-ltz v4, :cond_29

    .line 219
    invoke-virtual/range {p1 .. p1}, Lbfz;->d()V

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide/from16 v28, v4

    .line 223
    :goto_5
    iget-object v0, v15, Ldmp;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 224
    iget-wide v4, v15, Ldmp;->g:J

    cmp-long v4, v4, v32

    if-ltz v4, :cond_e

    iget-wide v4, v15, Ldmp;->g:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ldtf;->h:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_e

    .line 226
    sget-boolean v4, Ldtf;->g:Z

    if-eqz v4, :cond_d

    .line 227
    iget-wide v4, v15, Ldmp;->g:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x35

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Conversation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has leaveTimestamp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lbfz;->j(Ljava/lang/String;)V

    move-wide/from16 v6, v28

    .line 235
    goto/16 :goto_4

    .line 238
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ldtf;->j:Z

    if-nez v4, :cond_1d

    .line 240
    iget-object v0, v15, Ldmp;->c:Ljava/util/List;

    move-object/from16 v20, v0

    .line 241
    const/4 v4, 0x0

    .line 242
    if-eqz v20, :cond_28

    .line 243
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    move v5, v4

    .line 250
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lbfz;->f()Landroid/content/Context;

    move-result-object v4

    const-string v6, "babel_crashifmissedpush"

    const/4 v7, 0x0

    .line 249
    invoke-static {v4, v6, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 253
    if-eqz v4, :cond_11

    if-lez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Ldtf;->b:Leff;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Ldtf;->b:Leff;

    check-cast v4, Ldpy;

    .line 256
    invoke-virtual {v4}, Ldpy;->o()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 257
    const-string v4, "Babel_SANE"

    iget-object v5, v15, Ldmp;->b:Lega;

    .line 262
    invoke-virtual {v5}, Lega;->w()J

    move-result-wide v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x43

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Got unexpected missed events in SANE "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " sorttime "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 257
    invoke-static {v4, v5, v6}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Legf;

    .line 264
    const-string v6, "Babel_SANE"

    invoke-virtual {v4}, Legf;->j()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Legf;->c()J

    move-result-wide v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1c

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "  "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " time "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v4, v7}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 266
    :cond_f
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Got unexpected missed events in SANE "

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 271
    :cond_11
    sget-boolean v4, Lbft;->a:Z

    if-eqz v4, :cond_18

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x28

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "syncing conversation "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " events "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    :cond_12
    :goto_9
    iget-object v4, v15, Ldmp;->b:Lega;

    if-eqz v4, :cond_16

    .line 281
    iget-wide v6, v15, Ldmp;->h:J

    .line 295
    cmp-long v4, v6, v32

    if-ltz v4, :cond_13

    move-object/from16 v0, p0

    iget-wide v4, v0, Ldtf;->h:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_14

    .line 297
    :cond_13
    const-wide/16 v6, 0x0

    .line 300
    :cond_14
    iget-object v5, v15, Ldmp;->b:Lega;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-static/range {v4 .. v11}, Lbft;->a(Lbfz;Lega;JLjava/lang/String;Ldyy;Lbfy;Z)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 309
    const/16 v16, 0x1

    .line 312
    :cond_15
    iget-object v4, v15, Ldmp;->b:Lega;

    invoke-virtual {v4}, Lega;->m()Z

    move-result v4

    if-nez v4, :cond_16

    .line 313
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Ldtf;->h:J

    iget-object v5, v15, Ldmp;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7, v5}, Lbfz;->a(IJLjava/lang/String;)V

    .line 324
    :cond_16
    if-eqz v20, :cond_1c

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    .line 325
    iget-object v5, v15, Ldmp;->a:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-static/range {v4 .. v9}, Lbft;->a(Lbfz;Ljava/lang/String;JLdyy;Legf;)Z

    .line 327
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 328
    const/4 v7, 0x0

    .line 329
    const/4 v5, 0x0

    .line 330
    const/4 v4, 0x0

    move/from16 v18, v4

    move v4, v5

    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_1a

    .line 331
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Legf;

    .line 334
    invoke-virtual {v6}, Legf;->f()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 335
    invoke-virtual {v6}, Legf;->f()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    :cond_17
    instance-of v5, v6, Legj;

    if-eqz v5, :cond_19

    .line 338
    const/4 v5, 0x1

    move/from16 v17, v5

    .line 349
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ldtf;->h()J

    move-result-wide v8

    .line 350
    invoke-virtual/range {p0 .. p0}, Ldtf;->i()J

    move-result-wide v10

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 345
    invoke-static/range {v5 .. v13}, Lbft;->a(Lbfz;Legf;Ldyy;JJJ)V

    .line 330
    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    move/from16 v7, v17

    goto :goto_a

    .line 273
    :cond_18
    if-lez v5, :cond_12

    const-string v4, "Babel_SANE"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 274
    const-string v4, "Babel_SANE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x28

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "syncing conversation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " events "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 339
    :cond_19
    instance-of v5, v6, Lefr;

    if-eqz v5, :cond_27

    .line 340
    const/4 v5, 0x1

    .line 341
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v8

    move-object v0, v6

    check-cast v0, Lefr;

    move-object v4, v0

    move-object/from16 v0, v22

    invoke-static {v8, v0, v4}, Ldtf;->a(Lbfd;Ljava/lang/String;Lefr;)V

    .line 342
    move-object v0, v6

    check-cast v0, Lefr;

    move-object v4, v0

    const/4 v8, 0x2

    .line 343
    invoke-virtual {v4, v8}, Lefr;->a(I)V

    move v4, v5

    move/from16 v17, v7

    goto :goto_b

    .line 354
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lbfz;->f()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v15, Ldmp;->a:Ljava/lang/String;

    .line 353
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v5, v1, v6, v2}, Ldyy;->a(Landroid/content/Context;Lbfz;Ljava/lang/String;Ljava/util/List;)V

    .line 359
    if-eqz v4, :cond_1b

    .line 360
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1b
    if-eqz v7, :cond_1c

    .line 363
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_1c
    sget-boolean v4, Lbft;->a:Z

    if-eqz v4, :cond_1d

    .line 368
    iget-boolean v4, v15, Ldmp;->d:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "mustQuerySeparately: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_1d
    move/from16 v5, v16

    .line 371
    iget-object v4, v15, Ldmp;->b:Lega;

    if-nez v4, :cond_1e

    iget-object v4, v15, Ldmp;->a:Ljava/lang/String;

    .line 373
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lbfz;->o(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_1e
    const/4 v4, 0x1

    .line 375
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v6, v0, Ldtf;->j:Z

    if-nez v6, :cond_1f

    if-nez v4, :cond_26

    .line 377
    :cond_1f
    const/4 v4, 0x0

    .line 378
    sget-boolean v6, Lbft;->a:Z

    if-eqz v6, :cond_20

    .line 379
    const-string v6, "requesting more events for "

    iget-object v7, v15, Ldmp;->a:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    :cond_20
    :goto_d
    new-instance v14, Ldoz;

    iget-object v15, v15, Ldmp;->a:Ljava/lang/String;

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v14 .. v25}, Ldoz;-><init>(Ljava/lang/String;ZZZ[BJLjava/lang/String;JLegf;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ldyy;->a(Leff;)V

    .line 401
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lebo;->a(Ljava/lang/String;)Z

    :goto_e
    move-wide/from16 v6, v28

    move v14, v4

    move/from16 v16, v5

    .line 403
    goto/16 :goto_4

    .line 373
    :cond_21
    const/4 v4, 0x0

    goto :goto_c

    .line 379
    :cond_22
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_d

    .line 405
    :cond_23
    if-eqz v14, :cond_24

    .line 406
    sget-boolean v4, Lbft;->a:Z

    .line 410
    invoke-virtual/range {p1 .. p1}, Lbfz;->f()Landroid/content/Context;

    move-result-object v4

    .line 411
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    const-string v6, "last_successful_sync_time"

    move-object/from16 v0, p0

    iget-wide v8, v0, Ldtf;->h:J

    .line 409
    invoke-static {v4, v5, v6, v8, v9}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;J)V

    .line 415
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lebo;->c(Ljava/lang/String;)Z

    move/from16 v4, v16

    goto/16 :goto_2

    .line 417
    :cond_24
    sget-boolean v4, Lbft;->a:Z

    .line 421
    invoke-virtual/range {p1 .. p1}, Lbfz;->f()Landroid/content/Context;

    move-result-object v4

    .line 422
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    const-string v6, "in_progress_sync_time"

    move-object/from16 v0, p0

    iget-wide v8, v0, Ldtf;->h:J

    .line 420
    invoke-static {v4, v5, v6, v8, v9}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v4, v16

    goto/16 :goto_2

    .line 450
    :cond_25
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 451
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lbft;->c(Lbfz;Ljava/lang/String;)V

    goto :goto_f

    :cond_26
    move v4, v14

    goto :goto_e

    :cond_27
    move/from16 v17, v7

    goto/16 :goto_b

    :cond_28
    move v5, v4

    goto/16 :goto_6

    :cond_29
    move-wide/from16 v28, v6

    goto/16 :goto_5

    :cond_2a
    move-wide/from16 v26, v4

    goto/16 :goto_1
.end method
