.class public final Ledp;
.super Ledm;
.source "SourceFile"


# instance fields
.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:J


# direct methods
.method public constructor <init>(Legm;)V
    .locals 18

    .prologue
    .line 411
    invoke-virtual/range {p1 .. p1}, Legm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Legm;->b()Lczb;

    move-result-object v5

    .line 412
    invoke-virtual/range {p1 .. p1}, Legm;->c()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Legm;->k()J

    move-result-wide v8

    .line 413
    invoke-virtual/range {p1 .. p1}, Legm;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Legm;->n()Ljava/lang/String;

    move-result-object v11

    .line 414
    invoke-virtual/range {p1 .. p1}, Legm;->l()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Legm;->m()I

    move-result v13

    .line 415
    invoke-virtual/range {p1 .. p1}, Legm;->o()J

    move-result-wide v14

    sget-object v16, Lemc;->e:Lemc;

    .line 416
    invoke-virtual/range {p1 .. p1}, Legm;->p()[B

    move-result-object v17

    move-object/from16 v3, p0

    .line 411
    invoke-direct/range {v3 .. v17}, Ledm;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;IIJLemc;[B)V

    .line 417
    invoke-virtual/range {p1 .. p1}, Legm;->d()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ledp;->l:I

    .line 418
    invoke-virtual/range {p1 .. p1}, Legm;->e()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ledp;->m:I

    .line 419
    invoke-virtual/range {p1 .. p1}, Legm;->g()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Ledp;->n:I

    .line 420
    invoke-virtual/range {p1 .. p1}, Legm;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1051
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 420
    move-object/from16 v0, p0

    iput-wide v2, v0, Ledp;->o:J

    .line 421
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;ILemc;)V
    .locals 19

    .prologue
    .line 426
    const/4 v12, -0x1

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v16, p10

    invoke-direct/range {v3 .. v17}, Ledm;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;IIJLemc;[B)V

    .line 429
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ledp;->l:I

    .line 430
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Ledp;->m:I

    .line 431
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Ledp;->n:I

    .line 432
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2051
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 432
    move-object/from16 v0, p0

    iput-wide v2, v0, Ledp;->o:J

    .line 433
    return-void
.end method

.method private d(Lbfz;)V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 477
    iget v0, p0, Ledp;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 479
    sget-object v5, Lemd;->j:Lemd;

    .line 482
    :goto_0
    iget-object v1, p0, Ledp;->f:Ljava/lang/String;

    iget-object v2, p0, Ledp;->a:Ljava/lang/String;

    iget-object v3, p0, Ledp;->k:Lemc;

    iget-object v4, p0, Ledp;->g:Lczb;

    iget-wide v6, p0, Ledp;->h:J

    iget-wide v8, p0, Ledp;->o:J

    iget v10, p0, Ledp;->c:I

    move-object v0, p1

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lbfz;->a(Ljava/lang/String;Ljava/lang/String;Lemc;Lczb;Lemd;JJILjava/lang/String;Ljava/lang/String;)J

    .line 485
    return-void

    .line 480
    :cond_0
    sget-object v5, Lemd;->k:Lemd;

    goto :goto_0
.end method


# virtual methods
.method public b(Lbfz;)V
    .locals 7

    .prologue
    .line 445
    invoke-virtual {p1}, Lbfz;->a()V

    .line 447
    :try_start_0
    invoke-direct {p0, p1}, Ledp;->d(Lbfz;)V

    .line 2159
    invoke-virtual {p0, p1}, Ledm;->a(Lbfz;)V

    .line 451
    iget-wide v0, p0, Ledp;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 452
    iget v2, p0, Ledp;->m:I

    iget v3, p0, Ledp;->n:I

    iget-wide v4, p0, Ledp;->h:J

    iget-object v6, p0, Ledp;->f:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lbfz;->a(IIJLjava/lang/String;)V

    .line 455
    :cond_0
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-virtual {p1}, Lbfz;->c()V

    .line 460
    iget-object v0, p0, Ledp;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 461
    return-void

    .line 457
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method

.method public c(Lbfz;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Ledp;->d(Lbfz;)V

    .line 473
    invoke-virtual {p0, p1}, Ledp;->a(Lbfz;)V

    .line 474
    return-void
.end method
