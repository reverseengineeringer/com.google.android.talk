.class public Lebx;
.super Ldyx;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Long;

.field private final l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lgeo;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:J

.field private final w:J

.field private final x:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lebx;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbfd;Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 129
    invoke-direct {p0, p2}, Ldyx;-><init>(Lbfd;)V

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lebx;->w:J

    .line 130
    iput-object p1, p0, Lebx;->x:Landroid/content/Context;

    .line 132
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lebx;->k:Ljava/lang/Long;

    .line 135
    :cond_0
    iput-object p3, p0, Lebx;->e:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lebx;->l:Z

    .line 137
    iput-wide p6, p0, Lebx;->v:J

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;JI)V
    .locals 7

    .prologue
    .line 105
    invoke-direct {p0, p2}, Ldyx;-><init>(Lbfd;)V

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lebx;->w:J

    .line 106
    iput-object p1, p0, Lebx;->x:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lebx;->e:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lebx;->f:Ljava/lang/String;

    .line 109
    invoke-static {p5}, Laal;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lebx;->g:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lebx;->h:Ljava/lang/String;

    .line 111
    iput p7, p0, Lebx;->i:I

    .line 112
    iput-object p8, p0, Lebx;->j:Ljava/lang/String;

    .line 113
    move/from16 v0, p9

    iput v0, p0, Lebx;->n:I

    .line 114
    move/from16 v0, p10

    iput v0, p0, Lebx;->o:I

    .line 115
    move-object/from16 v0, p11

    iput-object v0, p0, Lebx;->s:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p12

    iput-object v0, p0, Lebx;->p:Ljava/lang/String;

    .line 117
    const/4 v2, 0x0

    iput-boolean v2, p0, Lebx;->l:Z

    .line 118
    move/from16 v0, p13

    iput-boolean v0, p0, Lebx;->q:Z

    .line 119
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lebx;->v:J

    .line 120
    move/from16 v0, p17

    iput v0, p0, Lebx;->m:I

    .line 121
    move-object/from16 v0, p14

    iput-object v0, p0, Lebx;->r:Lgeo;

    .line 122
    return-void
.end method

.method private a(Lbfz;I)J
    .locals 28

    .prologue
    .line 356
    invoke-virtual/range {p1 .. p1}, Lbfz;->a()V

    .line 359
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->e:Ljava/lang/String;

    const/16 v3, 0x3e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lbfz;->b(Ljava/lang/String;I)J

    move-result-wide v5

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->t:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 369
    move-object/from16 v0, p0

    iget v2, v0, Lebx;->u:I

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lebx;->u:I

    .line 370
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->x:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laal;->hr:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 371
    invoke-virtual {v3, v4, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lebx;->g:Ljava/lang/String;

    .line 375
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lebx;->a(I)V

    .line 377
    invoke-direct/range {p0 .. p0}, Lebx;->d()Ljava/util/List;

    move-result-object v10

    .line 384
    new-instance v2, Ledn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->e:Ljava/lang/String;

    .line 8127
    move-object/from16 v0, p0

    iget-object v4, v0, Ldyx;->b:Ldvb;

    iget-object v4, v4, Ldvb;->b:Lbfd;

    .line 386
    invoke-virtual {v4}, Lbfd;->b()Lczb;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lebx;->f:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lebx;->g:Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lemc;->b:Lemc;

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lebx;->q:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 400
    const/16 v19, 0x81

    :goto_1
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lebx;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lebx;->t:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lebx;->u:I

    move/from16 v25, v0

    const-wide/16 v26, 0x0

    invoke-direct/range {v2 .. v27}, Ledn;-><init>(Ljava/lang/String;Lczb;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLemc;IILjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;IJ)V

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->e:Ljava/lang/String;

    .line 413
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lbft;->f(Lbfz;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 414
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lebx;->q:Z

    if-eqz v3, :cond_4

    .line 415
    const/4 v3, 0x1

    .line 414
    :goto_2
    invoke-virtual {v2, v3}, Ledn;->a(I)Ledn;

    .line 416
    sget-object v3, Lemc;->c:Lemc;

    invoke-virtual {v2, v3}, Ledn;->a(Lemc;)V

    .line 417
    const-string v3, ","

    .line 418
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {v2, v3}, Ledn;->b(Ljava/lang/String;)Ledn;

    .line 8134
    move-object/from16 v0, p0

    iget-object v3, v0, Ldyx;->c:Ldyy;

    .line 420
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ledn;->a(Lbfz;Ldyy;)V

    .line 421
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lebx;->q:Z

    if-eqz v3, :cond_5

    .line 422
    new-instance v7, Lecb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lebx;->f:Ljava/lang/String;

    invoke-direct {v7, v3, v8, v5, v6}, Lecb;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 424
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v7, v3}, Lecb;->a([Ljava/lang/String;)Lecb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lebx;->p:Ljava/lang/String;

    .line 425
    invoke-virtual {v3, v4}, Lecb;->a(Ljava/lang/String;)Lecb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lebx;->g:Ljava/lang/String;

    .line 426
    invoke-virtual {v3, v4}, Lecb;->b(Ljava/lang/String;)Lecb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lebx;->h:Ljava/lang/String;

    .line 427
    invoke-virtual {v3, v4}, Lecb;->c(Ljava/lang/String;)Lecb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lebx;->s:Ljava/lang/String;

    .line 428
    invoke-virtual {v3, v4}, Lecb;->d(Ljava/lang/String;)Lecb;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lebx;->n:I

    .line 429
    invoke-virtual {v3, v4}, Lecb;->a(I)Lecb;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lebx;->o:I

    .line 430
    invoke-virtual {v3, v4}, Lecb;->b(I)Lecb;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lebx;->i:I

    .line 431
    invoke-virtual {v3, v4}, Lecb;->c(I)Lecb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lebx;->t:Ljava/lang/String;

    .line 432
    invoke-virtual {v3, v4}, Lecb;->e(Ljava/lang/String;)Lecb;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lebx;->u:I

    .line 433
    invoke-virtual {v3, v4}, Lecb;->d(I)Lecb;

    move-result-object v3

    .line 434
    invoke-virtual {v2}, Ledn;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lecb;->a(J)Lecb;

    move-result-object v3

    .line 435
    invoke-virtual {v3}, Lecb;->a()Leca;

    move-result-object v3

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lebx;->a(Leff;)V

    .line 457
    :cond_1
    invoke-virtual {v2}, Ledn;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 458
    invoke-virtual/range {p1 .. p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 463
    if-nez v2, :cond_6

    const-wide/16 v2, -0x1

    :goto_3
    return-wide v2

    .line 369
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 400
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 415
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 440
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->x:Landroid/content/Context;

    .line 441
    invoke-static {v3, v4}, Lenn;->a(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v8

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lbfz;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 444
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 445
    new-instance v10, Lecf;

    move-object/from16 v0, p0

    iget-object v11, v0, Lebx;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lebx;->f:Ljava/lang/String;

    invoke-direct {v10, v11, v12, v5, v6}, Lecf;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 447
    invoke-virtual {v10, v3}, Lecf;->a(Ljava/lang/String;)Lecf;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lebx;->g:Ljava/lang/String;

    .line 448
    invoke-virtual {v3, v10}, Lecf;->b(Ljava/lang/String;)Lecf;

    move-result-object v3

    .line 449
    invoke-virtual {v3, v8, v9}, Lecf;->a(J)Lecf;

    move-result-object v3

    .line 450
    invoke-virtual {v3, v7}, Lecf;->c(Ljava/lang/String;)Lecf;

    move-result-object v3

    .line 451
    invoke-virtual {v2}, Ledn;->a()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lecf;->b(J)Lecf;

    move-result-object v3

    .line 452
    invoke-virtual {v3}, Lecf;->a()Lece;

    move-result-object v3

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lebx;->a(Leff;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 460
    :catchall_0
    move-exception v2

    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    throw v2

    .line 9051
    :cond_6
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    goto :goto_3
.end method

.method private a(Lbfz;ILjava/lang/String;)J
    .locals 12

    .prologue
    .line 602
    invoke-virtual {p1}, Lbfz;->a()V

    .line 603
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 606
    :try_start_0
    invoke-direct {p0, p2}, Lebx;->a(I)V

    .line 608
    iget-object v0, p0, Lebx;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbfz;->f(Ljava/lang/String;)Lbgd;

    move-result-object v8

    .line 609
    if-nez v8, :cond_4

    .line 613
    iget-object v0, p0, Lebx;->e:Ljava/lang/String;

    invoke-static {v0}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lebx;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_1

    .line 616
    iput-object v0, p0, Lebx;->e:Ljava/lang/String;

    .line 617
    sget-boolean v0, Lebx;->a:Z

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "sendMessageLocally conversationId changed: "

    iget-object v1, p0, Lebx;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    :cond_0
    :goto_0
    iget-object v0, p0, Lebx;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbfz;->f(Ljava/lang/String;)Lbgd;

    move-result-object v8

    .line 630
    :cond_1
    if-nez v8, :cond_4

    .line 631
    const-string v1, "Babel"

    const-string v2, "Failed to find conversation: "

    iget-object v0, p0, Lebx;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-virtual {p1}, Lbfz;->c()V

    const-wide/16 v0, -0x1

    .line 684
    :goto_2
    return-wide v0

    .line 618
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0

    .line 631
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 637
    :cond_4
    iget-wide v0, v8, Lbgd;->q:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lbfz;->b(JI)J

    move-result-wide v2

    .line 640
    iget v0, p0, Lebx;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 641
    const/4 v5, 0x1

    .line 649
    :goto_3
    iget-object v4, p0, Lebx;->f:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lebx;->b(Lbfz;JLjava/lang/String;ZILjava/lang/String;Lbgd;)Ljava/lang/Long;

    move-result-object v0

    .line 651
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    invoke-virtual {p1}, Lbfz;->c()V

    .line 656
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 11123
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget v1, v1, Ldvb;->a:I

    .line 11219
    new-instance v4, Lcsn;

    .line 12040
    invoke-direct {v4}, Lcsn;-><init>()V

    .line 659
    iget-object v5, p0, Lebx;->f:Ljava/lang/String;

    .line 660
    invoke-virtual {v4, v5}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v4

    iget-object v5, p0, Lebx;->e:Ljava/lang/String;

    .line 661
    invoke-virtual {v4, v5}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 662
    iget-wide v6, p0, Lebx;->v:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const/16 v5, 0xb

    const/4 v8, 0x0

    .line 666
    invoke-virtual {v4, v8}, Lcsn;->a(I)Lcsn;

    move-result-object v8

    .line 662
    invoke-static {v1, v6, v7, v5, v8}, Laen;->a(IJILcsn;)V

    .line 667
    iget-wide v6, p0, Lebx;->w:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const/16 v5, 0xa

    const/16 v8, 0xc9

    .line 671
    invoke-virtual {v4, v8}, Lcsn;->a(I)Lcsn;

    move-result-object v8

    .line 667
    invoke-static {v1, v6, v7, v5, v8}, Laen;->a(IJILcsn;)V

    .line 672
    const/16 v5, 0xa

    const/16 v6, 0x65

    .line 676
    invoke-virtual {v4, v6}, Lcsn;->a(I)Lcsn;

    move-result-object v6

    .line 672
    invoke-static {v1, v10, v11, v5, v6}, Laen;->a(IJILcsn;)V

    .line 677
    const/16 v5, 0xa

    const/16 v6, 0x66

    .line 681
    invoke-virtual {v4, v6}, Lcsn;->a(I)Lcsn;

    move-result-object v4

    .line 677
    invoke-static {v1, v2, v3, v5, v4}, Laen;->a(IJILcsn;)V

    .line 683
    iget-object v1, p0, Lebx;->e:Ljava/lang/String;

    invoke-static {p1, v1}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 684
    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto/16 :goto_2

    .line 642
    :cond_5
    :try_start_3
    iget v0, p0, Lebx;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 645
    iget v0, v8, Lbgd;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 12051
    :cond_7
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    goto/16 :goto_2
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lebx;->r:Lgeo;

    if-eqz v0, :cond_2

    invoke-static {p1}, Laal;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lebx;->g:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lebx;->x:Landroid/content/Context;

    const-class v2, Lcrv;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrv;

    iget-object v2, p0, Lebx;->r:Lgeo;

    .line 338
    invoke-interface {v0, v2}, Lcrv;->b(Lgeo;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 340
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v0, p0, Lebx;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_3

    const/4 v0, 0x1

    .line 7134
    :goto_0
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 344
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v0, p0, Lebx;->r:Lgeo;

    invoke-interface {v0}, Lgeo;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v0, p0, Lebx;->r:Lgeo;

    invoke-interface {v0}, Lgeo;->b()Ljava/lang/CharSequence;

    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 351
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lebx;->g:Ljava/lang/String;

    .line 353
    :cond_2
    return-void

    .line 343
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lbfz;Ldyy;Lbgo;Lbgd;)V
    .locals 36

    .prologue
    .line 690
    move-object/from16 v0, p2

    iget-object v6, v0, Lbgo;->b:Ljava/lang/String;

    .line 691
    move-object/from16 v0, p2

    iget-object v5, v0, Lbgo;->a:Ljava/lang/String;

    .line 692
    invoke-static {v6}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p3

    iget v4, v0, Lbgd;->i:I

    if-nez v4, :cond_c

    .line 695
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lbfz;->X(Ljava/lang/String;)Z

    move-result v4

    .line 696
    if-eqz v4, :cond_2

    .line 698
    invoke-virtual/range {p0 .. p0}, Lbfz;->g()Lbfd;

    move-result-object v4

    const/4 v7, 0x5

    invoke-static {v4, v6, v7}, Lbft;->a(Lbfd;Ljava/lang/String;I)V

    .line 700
    sget-boolean v4, Lebx;->a:Z

    if-eqz v4, :cond_0

    .line 701
    const-string v4, "Messaging: delay sending message pending converting conversation to be permanent. ConversationId:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " messageId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :cond_0
    new-instance v4, Ldoz;

    new-instance v5, Ldos;

    .line 708
    invoke-static {}, Lbfz;->i()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 712
    invoke-virtual/range {p0 .. p0}, Lbfz;->g()Lbfd;

    move-result-object v10

    invoke-static {v10, v6}, Lbft;->a(Lbfd;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v5, v7, v8, v9, v10}, Ldos;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    invoke-direct {v4, v5, v6}, Ldoz;-><init>(Ldos;Ljava/lang/String;)V

    .line 706
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ldyy;->a(Leff;)V

    .line 863
    :cond_1
    :goto_0
    return-void

    .line 725
    :cond_2
    sget-boolean v4, Lebx;->a:Z

    if-eqz v4, :cond_3

    .line 726
    const-string v4, "Messaging: creating SendChatMessageRequest for message. ConversationId:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " messageId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_3
    sget-boolean v4, Lebx;->a:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p2

    iget-object v4, v0, Lbgo;->e:Ljava/lang/String;

    invoke-static {v4}, Laal;->u(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 732
    const-string v4, "Sending stress message from SendMessageGeneralOperation:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v7, v0, Lbgo;->e:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 736
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lbfz;->k(Ljava/lang/String;)J

    move-result-wide v8

    .line 739
    invoke-virtual/range {p2 .. p2}, Lbgo;->a()Ljava/lang/String;

    move-result-object v4

    .line 738
    invoke-static {v4}, Laal;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 742
    const-string v4, "hangouts/location"

    move-object/from16 v0, p2

    iget-object v7, v0, Lbgo;->o:Ljava/lang/String;

    .line 743
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 744
    move-object/from16 v0, p2

    iget-object v15, v0, Lbgo;->k:Ljava/lang/String;

    .line 747
    :goto_2
    move-object/from16 v0, p2

    iget v4, v0, Lbgo;->z:I

    packed-switch v4, :pswitch_data_0

    .line 756
    move-object/from16 v0, p2

    iget v4, v0, Lbgo;->x:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_8

    .line 757
    const/16 v30, 0x1

    .line 765
    :goto_3
    const/4 v12, 0x0

    .line 766
    move-object/from16 v0, p2

    iget-object v4, v0, Lbgo;->l:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 767
    move-object/from16 v0, p2

    iget-object v4, v0, Lbgo;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbfz;->af(Ljava/lang/String;)Ldrp;

    move-result-object v4

    .line 768
    if-eqz v4, :cond_5

    .line 13036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 769
    const-string v7, "babel_stickers_account_id"

    const-string v11, "108618507921641169817"

    invoke-static {v4, v7, v11}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 774
    :cond_5
    new-instance v4, Ldpo;

    .line 775
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lbfz;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v16, 0x1

    add-long v32, v8, v16

    move-object/from16 v0, p2

    iget-object v11, v0, Lbgo;->l:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v13, v0, Lbgo;->o:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v14, v0, Lbgo;->D:I

    move-object/from16 v0, p2

    iget v0, v0, Lbgo;->A:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget v0, v0, Lbgo;->B:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lbgo;->p:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lbgo;->q:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lbgo;->r:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lbgo;->s:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lbgo;->t:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lbgo;->u:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lbgo;->v:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 13875
    move-object/from16 v0, p3

    iget v0, v0, Lbgd;->m:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 13878
    move-object/from16 v0, p3

    iget v0, v0, Lbgd;->l:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    const/16 v27, 0x1

    .line 782
    :goto_4
    move-object/from16 v0, p2

    iget v0, v0, Lbgo;->x:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lbgo;->y:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v4 .. v30}, Ldpo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 774
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ldyy;->a(Leff;)V

    .line 786
    sget-object v4, Lemc;->c:Lemc;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v4, v7}, Lbfz;->a(Ljava/lang/String;Ljava/lang/String;Lemc;I)V

    .line 788
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v6, v1, v2}, Lbfz;->b(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 732
    :cond_6
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 744
    :cond_7
    move-object/from16 v0, p2

    iget-object v15, v0, Lbgo;->j:Ljava/lang/String;

    goto/16 :goto_2

    .line 750
    :pswitch_0
    const/16 v30, 0xb

    .line 751
    goto/16 :goto_3

    .line 753
    :pswitch_1
    const/16 v30, 0x2

    .line 754
    goto/16 :goto_3

    .line 759
    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 13878
    :cond_9
    const/16 v27, 0x0

    goto :goto_4

    .line 13880
    :cond_a
    move-object/from16 v0, p2

    iget-wide v0, v0, Lbgo;->i:J

    move-wide/from16 v28, v0

    const-wide/16 v34, 0x0

    cmp-long v27, v28, v34

    if-lez v27, :cond_b

    const/16 v27, 0x1

    goto :goto_4

    :cond_b
    const/16 v27, 0x0

    goto :goto_4

    .line 790
    :cond_c
    move-object/from16 v0, p3

    iget v4, v0, Lbgd;->i:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_d

    move-object/from16 v0, p3

    iget v4, v0, Lbgd;->k:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_f

    .line 794
    :cond_d
    sget-boolean v4, Lebx;->a:Z

    if-eqz v4, :cond_e

    .line 795
    const-string v4, "Messaging: delay sending message pending re-accept an invite. ConversationId:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " messageId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_e
    new-instance v4, Ldpm;

    invoke-direct {v4, v6}, Ldpm;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ldyy;->a(Leff;)V

    goto/16 :goto_0

    .line 819
    :cond_f
    move-object/from16 v0, p3

    iget v4, v0, Lbgd;->i:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_11

    .line 822
    sget-boolean v4, Lebx;->a:Z

    if-eqz v4, :cond_10

    .line 823
    const-string v4, "Messaging: delay sending message pending re-creation of conversation on server. ConversationId:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " messageId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lbfz;->g()Lbfd;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h(Lbfd;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 842
    :cond_11
    sget-boolean v4, Lebx;->a:Z

    if-eqz v4, :cond_1

    .line 843
    move-object/from16 v0, p3

    iget v4, v0, Lbgd;->i:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_12

    .line 845
    const-string v4, "Messaging: delay sending message pending an in-flight accept invite request. ConversationId:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " messageId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 848
    :cond_12
    move-object/from16 v0, p3

    iget v4, v0, Lbgd;->i:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_13

    .line 850
    const-string v4, "Messaging: delay sending message pending an in-flight conversation creation request. ConversationId:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " messageId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 853
    :cond_13
    move-object/from16 v0, p3

    iget v4, v0, Lbgd;->i:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_14

    .line 855
    const-string v4, "Messaging: delay sending message pending an in-flight persist conversation request. ConversationId:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " messageId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 859
    :cond_14
    const-string v4, "Babel"

    const-string v5, "Invalid state for conversation disposition"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 892
    const-string v0, "Babel"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    const-string v2, "Babel"

    const-string v3, "Check readiness for location image: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v2, v1

    .line 897
    :goto_1
    const/4 v0, 0x2

    if-ge v2, v0, :cond_4

    .line 899
    :try_start_0
    iget-object v0, p0, Lebx;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 900
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 901
    if-eqz v0, :cond_2

    .line 902
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 903
    const/4 v0, 0x1

    .line 920
    :goto_2
    return v0

    .line 893
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 906
    :cond_2
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 916
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 908
    :catch_0
    move-exception v0

    const-string v3, "Babel"

    const-string v4, "Location image not ready, will retry after 1 second: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 911
    :catch_1
    move-exception v0

    const-string v2, "Babel"

    const-string v3, "Location image check interrupted."

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 919
    :cond_4
    const-string v2, "Babel"

    const-string v3, "Failed to get location image. Skipping it: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 920
    goto :goto_2

    .line 911
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 919
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private d()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Left;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 237
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 239
    const-string v0, "hangouts/location"

    iget-object v1, p0, Lebx;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lebx;->r:Lgeo;

    if-nez v0, :cond_0

    .line 241
    const-string v0, "Babel"

    const-string v1, "mPlace should not be null"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v11

    .line 281
    :goto_0
    return-object v0

    .line 246
    :cond_0
    iget-object v0, p0, Lebx;->r:Lgeo;

    invoke-interface {v0}, Lgeo;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    iget-object v0, p0, Lebx;->r:Lgeo;

    invoke-interface {v0}, Lgeo;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 248
    iget-object v0, p0, Lebx;->r:Lgeo;

    invoke-interface {v0}, Lgeo;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 249
    iget-object v0, p0, Lebx;->r:Lgeo;

    invoke-interface {v0}, Lgeo;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 250
    iget-object v0, p0, Lebx;->x:Landroid/content/Context;

    const-class v1, Lcrv;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrv;

    .line 251
    iget-object v1, p0, Lebx;->r:Lgeo;

    .line 252
    invoke-interface {v0, v1}, Lcrv;->a(Lgeo;)Ljava/lang/String;

    move-result-object v9

    .line 253
    iget-object v1, p0, Lebx;->r:Lgeo;

    .line 254
    invoke-interface {v0, v1}, Lcrv;->b(Lgeo;)Ljava/lang/String;

    move-result-object v10

    .line 257
    new-instance v1, Lefv;

    new-array v2, v13, [I

    aput v12, v2, v12

    invoke-direct/range {v1 .. v10}, Lefv;-><init>([ILjava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v0, v11

    .line 281
    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lebx;->j:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lebx;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 261
    :cond_3
    iget-object v0, p0, Lebx;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 262
    const-string v0, "Babel"

    const-string v1, "[SendMessageOp] photo: sending photo with photo id"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :goto_2
    iget-object v0, p0, Lebx;->s:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 268
    iget-object v0, p0, Lebx;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lebx;->h:Ljava/lang/String;

    .line 269
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lebx;->s:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lebx;->s:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 272
    const-string v0, "image/jpg"

    iput-object v0, p0, Lebx;->s:Ljava/lang/String;

    .line 275
    :cond_4
    new-instance v0, Lefw;

    new-array v1, v13, [I

    aput v12, v1, v12

    iget-object v2, p0, Lebx;->j:Ljava/lang/String;

    iget-object v3, p0, Lebx;->h:Ljava/lang/String;

    iget v4, p0, Lebx;->n:I

    iget v5, p0, Lebx;->o:I

    iget-object v6, p0, Lebx;->s:Ljava/lang/String;

    iget v7, p0, Lebx;->i:I

    invoke-direct/range {v0 .. v7}, Lefw;-><init>([ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_5
    const-string v0, "Babel"

    const-string v1, "[SendMessageOp] photo: sending photo with url"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method protected a(Lbfz;JLjava/lang/String;ZILjava/lang/String;)J
    .locals 28

    .prologue
    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->g:Ljava/lang/String;

    .line 9102
    const/4 v3, 0x0

    invoke-static {v2, v3}, Laal;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 473
    invoke-direct/range {p0 .. p0}, Lebx;->d()Ljava/util/List;

    move-result-object v10

    .line 476
    new-instance v2, Ledn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->e:Ljava/lang/String;

    .line 9127
    move-object/from16 v0, p0

    iget-object v4, v0, Ldyx;->b:Ldvb;

    iget-object v4, v4, Ldvb;->b:Lbfd;

    .line 478
    invoke-virtual {v4}, Lbfd;->b()Lczb;

    move-result-object v4

    const/4 v9, 0x0

    sget-object v12, Lemc;->b:Lemc;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lebx;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lebx;->v:J

    move-wide/from16 v26, v0

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move/from16 v11, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    invoke-direct/range {v2 .. v27}, Ledn;-><init>(Ljava/lang/String;Lczb;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLemc;IILjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;IJ)V

    .line 9134
    move-object/from16 v0, p0

    iget-object v3, v0, Ldyx;->c:Ldyy;

    .line 506
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ledn;->a(Lbfz;Ldyy;)V

    .line 508
    invoke-virtual {v2}, Ledn;->a()J

    move-result-wide v2

    return-wide v2
.end method

.method protected a(Lbfz;JLjava/lang/String;ZILjava/lang/String;Lbgd;)V
    .locals 46

    .prologue
    .line 517
    const/16 v21, 0x0

    .line 518
    const-wide/16 v22, 0x0

    .line 519
    const-wide/16 v24, 0x0

    .line 520
    const/16 v26, 0x0

    .line 521
    const/16 v16, 0x0

    .line 522
    const/16 v27, 0x0

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->r:Lgeo;

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v2

    const/16 v3, 0x795

    invoke-static {v2, v3}, Laal;->a(Lbfd;I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->r:Lgeo;

    invoke-interface {v2}, Lgeo;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->r:Lgeo;

    invoke-interface {v2}, Lgeo;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v0, v2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    move-wide/from16 v22, v0

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->r:Lgeo;

    invoke-interface {v2}, Lgeo;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v0, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    move-wide/from16 v24, v0

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->r:Lgeo;

    invoke-interface {v2}, Lgeo;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->x:Landroid/content/Context;

    const-class v3, Lcrv;

    .line 533
    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcrv;

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->r:Lgeo;

    .line 535
    invoke-interface {v2, v3}, Lcrv;->a(Lgeo;)Ljava/lang/String;

    move-result-object v16

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lebx;->r:Lgeo;

    invoke-interface {v2, v3}, Lcrv;->b(Lgeo;)Ljava/lang/String;

    move-result-object v27

    .line 539
    :cond_0
    const/16 v30, -0x1

    .line 540
    invoke-static/range {p6 .. p6}, Laal;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lebx;->q:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move/from16 v30, v2

    .line 544
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lebx;->g:Ljava/lang/String;

    const/4 v3, 0x0

    .line 545
    invoke-static {v2, v3}, Laal;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Laal;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 547
    new-instance v3, Lbgo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lebx;->e:Ljava/lang/String;

    .line 10127
    move-object/from16 v0, p0

    iget-object v2, v0, Ldyx;->b:Ldvb;

    iget-object v2, v2, Ldvb;->b:Lbfd;

    .line 550
    invoke-virtual {v2}, Lbfd;->b()Lczb;

    move-result-object v2

    iget-object v6, v2, Lczb;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lebx;->g:Ljava/lang/String;

    sget-object v9, Lemc;->b:Lemc;

    sget-object v10, Lemd;->b:Lemd;

    if-eqz p5, :cond_3

    .line 556
    const-wide v13, 0x7fffffffffffffffL

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lebx;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lebx;->j:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lebx;->s:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lebx;->n:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lebx;->o:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lebx;->i:I

    move/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x2

    move-object/from16 v4, p4

    move-wide/from16 v11, p2

    move/from16 v28, p6

    move-object/from16 v29, p7

    invoke-direct/range {v3 .. v44}, Lbgo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lemc;Lemd;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 10134
    move-object/from16 v0, p0

    iget-object v2, v0, Ldyx;->c:Ldyy;

    .line 584
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-static {v0, v2, v3, v1}, Lebx;->a(Lbfz;Ldyy;Lbgo;Lbgd;)V

    .line 585
    return-void

    .line 541
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 556
    :cond_3
    const-wide/16 v13, 0x0

    goto :goto_1
.end method

.method protected b(Lbfz;JLjava/lang/String;ZILjava/lang/String;Lbgd;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 593
    invoke-virtual/range {p0 .. p7}, Lebx;->a(Lbfz;JLjava/lang/String;ZILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 595
    invoke-virtual/range {p0 .. p8}, Lebx;->a(Lbfz;JLjava/lang/String;ZILjava/lang/String;Lbgd;)V

    .line 597
    return-object v0
.end method

.method public o_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lebx;->k:Ljava/lang/Long;

    return-object v0
.end method

.method public p_()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 157
    iget-boolean v0, p0, Lebx;->l:Z

    if-eqz v0, :cond_1

    .line 1927
    const-string v0, "Babel"

    invoke-static {v0, v9}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1928
    const-string v0, "Babel"

    const-string v1, "retrySendMessage"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1930
    :cond_0
    new-instance v0, Lbfz;

    iget-object v1, p0, Lebx;->x:Landroid/content/Context;

    .line 2123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 1931
    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 1932
    iget-object v1, p0, Lebx;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbfz;->e(Ljava/lang/String;)Lbgd;

    move-result-object v2

    .line 1941
    iget-object v1, p0, Lebx;->e:Ljava/lang/String;

    iget-object v3, p0, Lebx;->k:Ljava/lang/Long;

    .line 3051
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v3

    .line 3134
    iget-object v5, p0, Ldyx;->c:Ldyy;

    .line 1943
    iget-wide v6, p0, Lebx;->v:J

    iget-wide v8, p0, Lebx;->w:J

    .line 1941
    invoke-static/range {v0 .. v9}, Lbft;->a(Lbfz;Ljava/lang/String;Lbgd;JLdyy;JJ)V

    .line 162
    :goto_0
    return-void

    .line 3169
    :cond_1
    const-string v0, "Babel"

    invoke-static {v0, v9}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3170
    const-string v2, "Babel"

    iget-object v0, p0, Lebx;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "..."

    :goto_1
    iget-object v3, p0, Lebx;->h:Ljava/lang/String;

    iget v4, p0, Lebx;->i:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x41

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "sendOriginalMessage: text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", mAttachmentUri="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", rotation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3174
    :cond_2
    new-instance v2, Lbfz;

    iget-object v0, p0, Lebx;->x:Landroid/content/Context;

    .line 4123
    iget-object v3, p0, Ldyx;->b:Ldvb;

    iget v3, v3, Ldvb;->a:I

    .line 3175
    invoke-direct {v2, v0, v3}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 4305
    const-string v0, "Babel"

    invoke-static {v0, v9}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4306
    const-string v3, "Babel"

    const-string v4, "sendMessageLocally conversationId: "

    iget-object v0, p0, Lebx;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5185
    :cond_3
    iget-object v0, p0, Lebx;->s:Ljava/lang/String;

    invoke-static {v0}, Laen;->a(Ljava/lang/String;)Z

    move-result v0

    .line 5187
    iget-object v3, p0, Lebx;->j:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5188
    const-string v0, "Babel"

    invoke-static {v0, v9}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5189
    const-string v3, "Babel"

    const-string v4, "sending image picasaPhotoId "

    iget-object v0, p0, Lebx;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4312
    :cond_4
    :goto_4
    iget-object v0, p0, Lebx;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lbfz;->g(Ljava/lang/String;)I

    move-result v0

    .line 4313
    invoke-static {v0}, Laal;->e(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4314
    invoke-static {}, Lezm;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6127
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget-object v1, v1, Ldvb;->b:Lbfd;

    .line 4315
    invoke-static {v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g(Lbfd;)V

    .line 4319
    :cond_5
    invoke-direct {p0, v2, v0}, Lebx;->a(Lbfz;I)J

    move-result-wide v0

    .line 3176
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lebx;->k:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 3170
    goto/16 :goto_1

    .line 4306
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 5189
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 5191
    :cond_9
    if-nez v0, :cond_4

    iget-object v0, p0, Lebx;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5192
    const-string v0, "Babel"

    invoke-static {v0, v9}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5193
    const-string v3, "Babel"

    const-string v4, "sending image "

    iget-object v0, p0, Lebx;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5197
    :cond_a
    iget-object v0, p0, Lebx;->h:Ljava/lang/String;

    iget-object v3, p0, Lebx;->x:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/apps/hangouts/content/EsProvider;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5198
    const-string v0, "Babel"

    const-string v3, "Sticker cache file found."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 5193
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 5207
    :cond_c
    iget-object v0, p0, Lebx;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5208
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/android/apps/hangouts/content/EsProvider;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5209
    const-string v0, "Babel"

    invoke-static {v0, v9}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5210
    const-string v3, "Babel"

    const-string v4, "sending attachment "

    iget-object v0, p0, Lebx;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5215
    :cond_d
    const-string v0, "hangouts/location"

    iget-object v3, p0, Lebx;->s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5216
    iget-object v0, p0, Lebx;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lebx;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5218
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lebx;->s:Ljava/lang/String;

    goto/16 :goto_4

    .line 5210
    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 5220
    :cond_f
    const-string v3, "Babel"

    const-string v4, "sending location failed because image not ready "

    iget-object v0, p0, Lebx;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5222
    iput-object v1, p0, Lebx;->h:Ljava/lang/String;

    goto/16 :goto_4

    .line 5220
    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 5227
    :cond_11
    const-string v0, "Babel"

    const-string v3, "trying to send an attachment that doesn\'t exist"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5228
    iput-object v1, p0, Lebx;->h:Ljava/lang/String;

    goto/16 :goto_4

    .line 6289
    :cond_12
    packed-switch v0, :pswitch_data_0

    .line 4325
    :goto_9
    invoke-direct {p0, v2, v0, v1}, Lebx;->a(Lbfz;ILjava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_5

    .line 7127
    :pswitch_0
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget-object v1, v1, Ldvb;->b:Lbfd;

    .line 6291
    invoke-virtual {v1}, Lbfd;->v()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 6294
    :pswitch_1
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 6289
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
