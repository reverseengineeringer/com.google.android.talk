.class public final Ledl;
.super Ledm;
.source "SourceFile"


# instance fields
.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Legb;)V
    .locals 18

    .prologue
    .line 492
    invoke-virtual/range {p1 .. p1}, Legb;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Legb;->b()Lczb;

    move-result-object v5

    .line 493
    invoke-virtual/range {p1 .. p1}, Legb;->c()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Legb;->k()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Legb;->j()Ljava/lang/String;

    move-result-object v10

    .line 494
    invoke-virtual/range {p1 .. p1}, Legb;->n()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Legb;->l()I

    move-result v12

    .line 495
    invoke-virtual/range {p1 .. p1}, Legb;->m()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Legb;->o()J

    move-result-wide v14

    sget-object v16, Lemc;->e:Lemc;

    .line 496
    invoke-virtual/range {p1 .. p1}, Legb;->p()[B

    move-result-object v17

    move-object/from16 v3, p0

    .line 492
    invoke-direct/range {v3 .. v17}, Ledm;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;IIJLemc;[B)V

    .line 1037
    move-object/from16 v0, p1

    iget-object v2, v0, Legb;->d:Ljava/lang/String;

    .line 497
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ledl;->l:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;Lemc;)V
    .locals 19

    .prologue
    .line 503
    const/4 v11, 0x0

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

    move-object/from16 v16, p9

    invoke-direct/range {v3 .. v17}, Ledm;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;IIJLemc;[B)V

    .line 506
    invoke-static/range {p8 .. p8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Ledl;->l:Ljava/lang/String;

    .line 507
    return-void
.end method

.method private c(Lbfz;Ldyy;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 542
    iget-object v0, p0, Ledl;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 543
    iget-object v1, p0, Ledl;->f:Ljava/lang/String;

    iget-object v2, p0, Ledl;->a:Ljava/lang/String;

    iget-object v3, p0, Ledl;->k:Lemc;

    iget-object v4, p0, Ledl;->g:Lczb;

    sget-object v5, Lemd;->d:Lemd;

    iget-wide v6, p0, Ledl;->h:J

    iget-wide v8, p0, Ledl;->i:J

    iget v10, p0, Ledl;->c:I

    iget-object v11, p0, Ledl;->l:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v12}, Lbfz;->a(Ljava/lang/String;Ljava/lang/String;Lemc;Lczb;Lemd;JJILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 548
    iget-object v1, p0, Ledl;->f:Ljava/lang/String;

    iget-wide v2, p0, Ledl;->h:J

    iget-wide v4, p0, Ledl;->i:J

    const/4 v6, 0x5

    iget-object v7, p0, Ledl;->g:Lczb;

    iget-object v10, p0, Ledl;->k:Lemc;

    iget-object v11, p0, Ledl;->l:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v12}, Lbfz;->a(Ljava/lang/String;JJILczb;JLemc;Ljava/lang/String;Ljava/lang/String;)Z

    .line 552
    iget-object v0, p0, Ledl;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 554
    iget-wide v0, p0, Ledl;->h:J

    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v2

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Ldyy;->a(JI)V

    .line 556
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p1}, Lbfz;->a()V

    .line 518
    :try_start_0
    invoke-direct {p0, p1, p2}, Ledl;->c(Lbfz;Ldyy;)V

    .line 1159
    invoke-virtual {p0, p1}, Ledm;->a(Lbfz;)V

    .line 520
    iget-object v0, p0, Ledl;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Ledl;->f:Ljava/lang/String;

    iget-object v1, p0, Ledl;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lbfz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_0
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    invoke-virtual {p1}, Lbfz;->c()V

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method

.method public b(Lbfz;Ldyy;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Ledl;->c(Lbfz;Ldyy;)V

    .line 537
    invoke-virtual {p0, p1}, Ledl;->a(Lbfz;)V

    .line 538
    return-void
.end method
