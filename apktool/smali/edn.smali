.class public final Ledn;
.super Ledm;
.source "SourceFile"


# instance fields
.field final A:Ljava/lang/String;

.field final B:I

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:J

.field final F:Z

.field G:I

.field final H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:I

.field K:I

.field L:I

.field M:I

.field N:I

.field O:Laxw;

.field final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lefx;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field final n:Z

.field final o:I

.field final p:Ljava/lang/String;

.field final q:Ljava/lang/String;

.field final r:J

.field final s:J

.field final t:J

.field u:J

.field final v:Z

.field w:J

.field final x:J

.field final y:I

.field final z:J


# direct methods
.method public constructor <init>(Lefr;ZJJJJ)V
    .locals 21

    .prologue
    .line 1604
    invoke-virtual/range {p1 .. p1}, Lefr;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lefr;->b()Lczb;

    move-result-object v7

    .line 1605
    invoke-virtual/range {p1 .. p1}, Lefr;->c()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lefr;->k()J

    move-result-wide v10

    .line 1606
    invoke-virtual/range {p1 .. p1}, Lefr;->j()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lefr;->n()Ljava/lang/String;

    move-result-object v13

    .line 1607
    invoke-virtual/range {p1 .. p1}, Lefr;->l()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lefr;->m()I

    move-result v15

    .line 1608
    invoke-virtual/range {p1 .. p1}, Lefr;->o()J

    move-result-wide v16

    sget-object v18, Lemc;->e:Lemc;

    .line 1609
    invoke-virtual/range {p1 .. p1}, Lefr;->p()[B

    move-result-object v19

    move-object/from16 v5, p0

    .line 1604
    invoke-direct/range {v5 .. v19}, Ledm;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;IIJLemc;[B)V

    .line 1585
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Ledn;->E:J

    .line 1587
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->G:I

    .line 1595
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->M:I

    .line 1610
    invoke-virtual/range {p1 .. p1}, Lefr;->d()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->l:Ljava/util/List;

    .line 1611
    invoke-virtual/range {p1 .. p1}, Lefr;->e()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->m:Ljava/util/List;

    .line 1612
    invoke-virtual/range {p1 .. p1}, Lefr;->q()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ledn;->n:Z

    .line 1613
    invoke-virtual/range {p1 .. p1}, Lefr;->s()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->o:I

    .line 1614
    invoke-virtual/range {p1 .. p1}, Lefr;->t()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->p:Ljava/lang/String;

    .line 1615
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->q:Ljava/lang/String;

    .line 1616
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ledn;->x:J

    .line 1617
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->y:I

    .line 1618
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ledn;->z:J

    .line 1619
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->A:Ljava/lang/String;

    .line 1620
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->B:I

    .line 1621
    invoke-virtual/range {p1 .. p1}, Lefr;->r()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ledn;->F:Z

    .line 1622
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->H:Ljava/lang/String;

    .line 1623
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ledn;->v:Z

    .line 1624
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Ledn;->r:J

    .line 1625
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Ledn;->s:J

    .line 1626
    move-wide/from16 v0, p7

    move-object/from16 v2, p0

    iput-wide v0, v2, Ledn;->t:J

    .line 1627
    move-wide/from16 v0, p9

    move-object/from16 v2, p0

    iput-wide v0, v2, Ledn;->u:J

    .line 1628
    invoke-virtual/range {p1 .. p1}, Lefr;->h()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->L:I

    .line 1629
    invoke-virtual/range {p1 .. p1}, Lefr;->u()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->M:I

    .line 1630
    invoke-virtual/range {p1 .. p1}, Lefr;->i()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->N:I

    .line 2036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 1631
    const-class v5, Laxw;

    invoke-static {v4, v5}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laxw;

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->O:Laxw;

    .line 1632
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lczb;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLemc;IILjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;IJ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2644
    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v12, p5

    move-object/from16 v18, p10

    invoke-direct/range {v5 .. v19}, Ledm;-><init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;IIJLemc;[B)V

    .line 2585
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Ledn;->E:J

    .line 2587
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->G:I

    .line 2595
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Ledn;->M:I

    .line 2647
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Ledn;->H:Ljava/lang/String;

    .line 2648
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->l:Ljava/util/List;

    .line 2649
    if-eqz p6, :cond_0

    .line 2650
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lefx;

    .line 2651
    move-object/from16 v0, p0

    iget-object v6, v0, Ledn;->l:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2654
    :cond_0
    if-eqz p8, :cond_1

    .line 2655
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->m:Ljava/util/List;

    .line 2656
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Left;

    .line 2657
    move-object/from16 v0, p0

    iget-object v6, v0, Ledn;->m:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2660
    :cond_1
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ledn;->n:Z

    .line 2661
    if-eqz p9, :cond_2

    .line 2662
    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v4, v0, Ledn;->i:J

    .line 2666
    :goto_2
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput v0, v1, Ledn;->o:I

    .line 2667
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Ledn;->p:Ljava/lang/String;

    .line 2668
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ledn;->v:Z

    .line 2669
    move-wide/from16 v0, p24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ledn;->r:J

    .line 2670
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ledn;->s:J

    .line 2671
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ledn;->t:J

    .line 2673
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Ledn;->q:Ljava/lang/String;

    .line 2674
    move-wide/from16 v0, p15

    move-object/from16 v2, p0

    iput-wide v0, v2, Ledn;->x:J

    .line 2675
    move/from16 v0, p17

    move-object/from16 v1, p0

    iput v0, v1, Ledn;->y:I

    .line 2676
    move-wide/from16 v0, p18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ledn;->z:J

    .line 2677
    move-object/from16 v0, p20

    move-object/from16 v1, p0

    iput-object v0, v1, Ledn;->A:Ljava/lang/String;

    .line 2678
    move/from16 v0, p21

    move-object/from16 v1, p0

    iput v0, v1, Ledn;->B:I

    .line 2679
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Ledn;->F:Z

    .line 2680
    move-object/from16 v0, p22

    move-object/from16 v1, p0

    iput-object v0, v1, Ledn;->I:Ljava/lang/String;

    .line 2681
    move/from16 v0, p23

    move-object/from16 v1, p0

    iput v0, v1, Ledn;->J:I

    .line 2682
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Ledn;->K:I

    .line 3036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 2683
    const-class v5, Laxw;

    invoke-static {v4, v5}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laxw;

    move-object/from16 v0, p0

    iput-object v4, v0, Ledn;->O:Laxw;

    .line 2684
    return-void

    .line 2664
    :cond_2
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Ledn;->i:J

    goto :goto_2
.end method

.method private a(Lbfz;Ldyy;I)V
    .locals 41

    .prologue
    .line 4759
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v29

    .line 4760
    invoke-virtual/range {v29 .. v29}, Lbfd;->b()Lczb;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ledn;->g:Lczb;

    .line 4761
    invoke-virtual {v4, v5}, Lczb;->a(Lczb;)Z

    move-result v30

    .line 4763
    const/16 v28, 0x0

    .line 4764
    const/16 v27, 0x0

    .line 4765
    const/16 v26, 0x0

    .line 4766
    const/4 v6, 0x0

    .line 4767
    const/16 v24, 0x0

    .line 4768
    const/16 v23, 0x0

    .line 4769
    const/4 v4, 0x0

    .line 4770
    const/16 v19, 0x0

    .line 4771
    const/4 v15, 0x0

    .line 4772
    const-wide/16 v20, 0x0

    .line 4773
    const-wide/16 v16, 0x0

    .line 4774
    const/4 v14, 0x0

    .line 4775
    const/4 v13, 0x0

    .line 4776
    const/4 v12, 0x0

    .line 4777
    const/4 v11, 0x0

    .line 4778
    const/4 v10, 0x0

    .line 4779
    const/4 v9, 0x0

    .line 4780
    const/16 v18, 0x0

    .line 4783
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 4785
    move-object/from16 v0, p0

    iget-object v7, v0, Ledn;->m:Ljava/util/List;

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Ledn;->m:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v25, v7

    .line 4786
    :goto_0
    const/4 v7, 0x1

    move/from16 v0, v25

    if-ne v0, v7, :cond_9

    .line 4788
    move-object/from16 v0, p0

    iget-object v4, v0, Ledn;->m:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Left;

    .line 4789
    iget-object v0, v4, Left;->f:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 4790
    iget-object v0, v4, Left;->h:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 4791
    iget-object v8, v4, Left;->g:Ljava/lang/String;

    .line 4792
    iget-object v0, v4, Left;->d:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 4793
    iget-object v13, v4, Left;->e:Ljava/lang/String;

    .line 4794
    instance-of v6, v4, Lefw;

    if-eqz v6, :cond_3

    .line 4795
    check-cast v4, Lefw;

    .line 4796
    iget-object v0, v4, Lefw;->i:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 4797
    iget-object v15, v4, Lefw;->j:Ljava/lang/String;

    .line 4798
    iget-object v12, v4, Lefw;->k:Ljava/lang/String;

    .line 4799
    iget v11, v4, Lefw;->l:I

    .line 4800
    iget v9, v4, Lefw;->m:I

    .line 4801
    iget v6, v4, Lefw;->n:I

    .line 4802
    iget-object v7, v4, Lefw;->o:Ljava/lang/String;

    .line 4803
    iget-object v4, v4, Lefw;->p:Ljava/lang/String;

    move-object/from16 v24, v15

    move-object/from16 v15, v19

    move/from16 v19, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v10

    move-object v10, v14

    move-object/from16 v14, v25

    move-object/from16 v25, v23

    move-object/from16 v23, v12

    move-object v12, v13

    move-object/from16 v40, v22

    move/from16 v22, v11

    move-object/from16 v11, v40

    .line 4876
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ledn;->H:Ljava/lang/String;

    if-eqz v13, :cond_e

    .line 4877
    move-object/from16 v0, p0

    iget-object v13, v0, Ledn;->H:Ljava/lang/String;

    .line 4880
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ledn;->f:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d(Lbfd;Ljava/lang/String;)Z

    move-result v31

    .line 4883
    invoke-virtual/range {v29 .. v29}, Lbfd;->g()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ledn;->a(ILbfz;)Z

    move-result v32

    .line 4884
    invoke-direct/range {p0 .. p1}, Ledn;->b(Lbfz;)Z

    move-result v33

    .line 4885
    invoke-direct/range {p0 .. p1}, Ledn;->c(Lbfz;)Z

    move-result v34

    .line 4886
    invoke-direct/range {p0 .. p1}, Ledn;->d(Lbfz;)Z

    move-result v35

    .line 4887
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 4888
    invoke-direct/range {p0 .. p1}, Ledn;->e(Lbfz;)I

    move-result v27

    .line 4889
    move-object/from16 v0, p0

    iget v0, v0, Ledn;->M:I

    move/from16 v28, v0

    .line 4892
    const/16 v26, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    move/from16 v26, v27

    .line 4893
    :goto_3
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Ledn;->M:I

    .line 4895
    new-instance v26, Lbgn;

    invoke-direct/range {v26 .. v26}, Lbgn;-><init>()V

    .line 4896
    move-object/from16 v0, p0

    iget-object v0, v0, Ledn;->a:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    iput-object v0, v1, Lbgn;->a:Ljava/lang/String;

    .line 4897
    move-object/from16 v0, p0

    iget-object v0, v0, Ledn;->b:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    iput-object v0, v1, Lbgn;->b:Ljava/lang/String;

    .line 4898
    move-object/from16 v0, p0

    iget-object v0, v0, Ledn;->f:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    iput-object v0, v1, Lbgn;->c:Ljava/lang/String;

    .line 4899
    move-object/from16 v0, p0

    iget v0, v0, Ledn;->o:I

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, v26

    iput v0, v1, Lbgn;->d:I

    .line 4900
    move-object/from16 v0, p0

    iget-object v0, v0, Ledn;->p:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    iput-object v0, v1, Lbgn;->e:Ljava/lang/String;

    .line 4901
    move-object/from16 v0, p0

    iget-object v0, v0, Ledn;->g:Lczb;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    iput-object v0, v1, Lbgn;->f:Lczb;

    .line 4902
    move-object/from16 v0, v26

    iput-object v13, v0, Lbgn;->g:Ljava/lang/String;

    .line 4903
    move-object/from16 v0, p0

    iget-object v0, v0, Ledn;->k:Lemc;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lemc;->ordinal()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v26

    iput v0, v1, Lbgn;->h:I

    .line 4904
    move-object/from16 v0, p0

    iget-wide v0, v0, Ledn;->h:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, v26

    iput-wide v0, v2, Lbgn;->i:J

    .line 4905
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    iput-object v0, v1, Lbgn;->j:Ljava/lang/String;

    .line 4906
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    iput-object v0, v1, Lbgn;->k:Ljava/lang/String;

    .line 4907
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lbgn;->l:Ljava/lang/String;

    .line 4908
    move-object/from16 v0, v26

    iput-object v14, v0, Lbgn;->n:Ljava/lang/String;

    .line 4909
    move-object/from16 v0, v26

    iput-object v15, v0, Lbgn;->o:Ljava/lang/String;

    .line 4910
    move-object/from16 v0, v26

    iput-object v12, v0, Lbgn;->p:Ljava/lang/String;

    .line 4911
    move-wide/from16 v0, v20

    move-object/from16 v2, v26

    iput-wide v0, v2, Lbgn;->q:D

    .line 4912
    move-wide/from16 v0, v16

    move-object/from16 v2, v26

    iput-wide v0, v2, Lbgn;->r:D

    .line 4913
    move-object/from16 v0, v26

    iput-object v10, v0, Lbgn;->s:Ljava/lang/String;

    .line 4914
    move-object/from16 v0, v26

    iput-object v9, v0, Lbgn;->t:Ljava/lang/String;

    .line 4915
    move-object/from16 v0, v26

    iput-object v8, v0, Lbgn;->u:Ljava/lang/String;

    .line 4916
    move-object/from16 v0, v26

    iput-object v7, v0, Lbgn;->v:Ljava/lang/String;

    .line 4917
    move-object/from16 v0, v26

    iput-object v6, v0, Lbgn;->w:[B

    .line 4918
    move-object/from16 v0, v26

    iput v5, v0, Lbgn;->m:I

    .line 4920
    move/from16 v0, v30

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lbgn;->x:Z

    .line 4921
    move-object/from16 v0, p0

    iget v5, v0, Ledn;->c:I

    move-object/from16 v0, v26

    iput v5, v0, Lbgn;->y:I

    .line 4922
    move-object/from16 v0, p0

    iget-wide v6, v0, Ledn;->i:J

    move-object/from16 v0, v26

    iput-wide v6, v0, Lbgn;->z:J

    .line 4923
    move-object/from16 v0, p0

    iget-boolean v5, v0, Ledn;->n:Z

    move-object/from16 v0, v26

    iput-boolean v5, v0, Lbgn;->A:Z

    .line 4924
    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Lbgn;->B:I

    .line 4925
    move/from16 v0, v19

    move-object/from16 v1, v26

    iput v0, v1, Lbgn;->C:I

    .line 4926
    move-object/from16 v0, v26

    iput-object v11, v0, Lbgn;->D:Ljava/lang/String;

    .line 4927
    move-object/from16 v0, p0

    iget-object v5, v0, Ledn;->q:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v5, v0, Lbgn;->E:Ljava/lang/String;

    .line 4928
    move-object/from16 v0, p0

    iget-wide v6, v0, Ledn;->x:J

    move-object/from16 v0, v26

    iput-wide v6, v0, Lbgn;->F:J

    .line 4929
    move-object/from16 v0, p0

    iget v5, v0, Ledn;->y:I

    move-object/from16 v0, v26

    iput v5, v0, Lbgn;->G:I

    .line 4930
    move-object/from16 v0, p0

    iget-wide v6, v0, Ledn;->z:J

    move-object/from16 v0, v26

    iput-wide v6, v0, Lbgn;->H:J

    .line 4931
    move-object/from16 v0, p0

    iget-object v5, v0, Ledn;->A:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v5, v0, Lbgn;->I:Ljava/lang/String;

    .line 4932
    move-object/from16 v0, p0

    iget-object v5, v0, Ledn;->C:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v5, v0, Lbgn;->J:Ljava/lang/String;

    .line 4933
    move-object/from16 v0, p0

    iget-object v5, v0, Ledn;->D:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v5, v0, Lbgn;->K:Ljava/lang/String;

    .line 4934
    move-object/from16 v0, p0

    iget-boolean v5, v0, Ledn;->F:Z

    move-object/from16 v0, v26

    iput-boolean v5, v0, Lbgn;->L:Z

    .line 4935
    const/4 v5, -0x1

    move-object/from16 v0, v26

    iput v5, v0, Lbgn;->M:I

    .line 4936
    move-object/from16 v0, p0

    iget v5, v0, Ledn;->G:I

    move-object/from16 v0, v26

    iput v5, v0, Lbgn;->N:I

    .line 4937
    move-object/from16 v0, p0

    iget-object v5, v0, Ledn;->I:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v5, v0, Lbgn;->O:Ljava/lang/String;

    .line 4938
    move-object/from16 v0, p0

    iget v5, v0, Ledn;->J:I

    move-object/from16 v0, v26

    iput v5, v0, Lbgn;->P:I

    .line 4939
    move-object/from16 v0, p0

    iget v5, v0, Ledn;->K:I

    move-object/from16 v0, v26

    iput v5, v0, Lbgn;->Q:I

    .line 4940
    move/from16 v0, v18

    move-object/from16 v1, v26

    iput v0, v1, Lbgn;->R:I

    .line 4942
    if-eqz v30, :cond_10

    .line 4943
    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, v26

    iput v5, v0, Lbgn;->S:I

    .line 4944
    move/from16 v0, p3

    move-object/from16 v1, v26

    iput v0, v1, Lbgn;->T:I

    .line 4945
    move-object/from16 v0, p0

    iget-wide v6, v0, Ledn;->r:J

    move-object/from16 v0, v26

    iput-wide v6, v0, Lbgn;->U:J

    .line 4947
    move-object/from16 v0, p0

    iget-wide v6, v0, Ledn;->r:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v6, v36, v6

    move-object/from16 v0, v26

    iput-wide v6, v0, Lbgn;->V:J

    .line 4949
    const/16 v5, 0xa

    .line 4950
    if-nez v30, :cond_1

    .line 4954
    invoke-virtual/range {v29 .. v29}, Lbfd;->g()I

    move-result v6

    .line 4955
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Ledn;->b(ILbfz;)Z

    move-result v7

    .line 4956
    if-nez v32, :cond_0

    if-nez v7, :cond_0

    if-nez v31, :cond_0

    .line 4957
    move-object/from16 v0, p0

    iget v7, v0, Ledn;->c:I

    invoke-static {}, Ldyy;->a()I

    move-result v8

    if-ne v7, v8, :cond_11

    .line 4958
    move-object/from16 v0, p0

    iget-wide v8, v0, Ledn;->h:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v6}, Ldyy;->b(JI)V

    .line 4965
    :cond_0
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Ledn;->w:J

    :cond_1
    move/from16 v19, v5

    .line 4967
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lbfz;->a(Lbgn;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Ledn;->E:J

    .line 4970
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbgp;

    .line 4971
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lbfz;->a(Lbgp;)J

    goto :goto_6

    .line 4785
    :cond_2
    const/4 v7, 0x0

    move/from16 v25, v7

    goto/16 :goto_0

    .line 4804
    :cond_3
    instance-of v6, v4, Lefy;

    if-eqz v6, :cond_4

    .line 4805
    check-cast v4, Lefy;

    .line 4806
    iget-object v7, v4, Lefy;->i:Ljava/lang/String;

    .line 4807
    iget v0, v4, Lefy;->j:I

    move/from16 v18, v0

    move-object v4, v5

    move-object v6, v10

    move-object/from16 v15, v19

    move-object v10, v14

    move v5, v9

    move/from16 v19, v23

    move-object v9, v8

    move-object/from16 v14, v25

    move-object/from16 v23, v26

    move-object v8, v12

    move-object/from16 v25, v7

    move-object v12, v13

    move-object v7, v11

    move-object/from16 v11, v22

    move/from16 v22, v24

    move-object/from16 v24, v27

    .line 4808
    goto/16 :goto_1

    :cond_4
    instance-of v6, v4, Lefu;

    if-eqz v6, :cond_5

    .line 4809
    check-cast v4, Lefu;

    .line 4810
    iget-object v7, v4, Lefu;->i:Ljava/lang/String;

    move-object v4, v5

    move-object v6, v10

    move-object/from16 v15, v19

    move-object v10, v14

    move v5, v9

    move/from16 v19, v23

    move-object v9, v8

    move-object/from16 v14, v25

    move-object/from16 v23, v26

    move-object v8, v12

    move-object/from16 v25, v7

    move-object v12, v13

    move-object v7, v11

    move-object/from16 v11, v22

    move/from16 v22, v24

    move-object/from16 v24, v27

    .line 4811
    goto/16 :goto_1

    :cond_5
    instance-of v6, v4, Lefv;

    if-eqz v6, :cond_6

    .line 4812
    check-cast v4, Lefv;

    .line 4813
    iget-wide v14, v4, Lefv;->i:D

    .line 4814
    iget-wide v6, v4, Lefv;->j:D

    .line 4815
    iget-object v4, v4, Lefv;->k:Ljava/lang/String;

    move-wide/from16 v16, v6

    move-wide/from16 v20, v14

    move-object v6, v10

    move-object v7, v11

    move-object/from16 v15, v19

    move-object/from16 v14, v25

    move-object v10, v4

    move-object/from16 v11, v22

    move/from16 v19, v23

    move-object/from16 v25, v28

    move-object v4, v5

    move/from16 v22, v24

    move-object/from16 v23, v26

    move v5, v9

    move-object/from16 v24, v27

    move-object v9, v8

    move-object v8, v12

    move-object v12, v13

    .line 4821
    goto/16 :goto_1

    :cond_6
    instance-of v6, v4, Lefs;

    if-eqz v6, :cond_8

    .line 4822
    check-cast v4, Lefs;

    .line 4823
    invoke-virtual {v4}, Lefs;->a()Llci;

    move-result-object v6

    .line 4824
    if-eqz v6, :cond_7

    .line 4825
    invoke-virtual {v4}, Lefs;->a()Llci;

    move-result-object v4

    invoke-static {v4}, Llyi;->a(Llyi;)[B

    move-result-object v4

    move-object v6, v4

    move-object v7, v11

    move-object v10, v14

    move-object/from16 v15, v19

    move-object v4, v5

    move-object/from16 v11, v22

    move/from16 v19, v23

    move-object/from16 v14, v25

    move v5, v9

    move/from16 v22, v24

    move-object/from16 v23, v26

    move-object/from16 v25, v28

    move-object/from16 v24, v27

    move-object v9, v8

    move-object v8, v12

    move-object v12, v13

    goto/16 :goto_1

    .line 4827
    :cond_7
    const-string v4, "Babel"

    const-string v6, "askjane result is null."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    move-object v4, v5

    move-object v6, v10

    move-object v7, v11

    move-object/from16 v15, v19

    move-object v10, v14

    move v5, v9

    move-object/from16 v11, v22

    move/from16 v19, v23

    move-object v9, v8

    move/from16 v22, v24

    move-object/from16 v14, v25

    move-object/from16 v23, v26

    move-object v8, v12

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move-object v12, v13

    .line 4830
    goto/16 :goto_1

    :cond_9
    const/4 v7, 0x1

    move/from16 v0, v25

    if-le v0, v7, :cond_14

    .line 4834
    const-string v22, "multipart/mixed"

    .line 4835
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4838
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 4839
    const/4 v4, 0x0

    move/from16 v6, v18

    move-object/from16 v7, v28

    move/from16 v18, v4

    :goto_7
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 4840
    if-lez v18, :cond_a

    .line 4841
    const/16 v4, 0x7c

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4843
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Ledn;->m:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Left;

    .line 4844
    new-instance v28, Lbgp;

    invoke-direct/range {v28 .. v28}, Lbgp;-><init>()V

    .line 4846
    move-object/from16 v0, p0

    iget-object v5, v0, Ledn;->f:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v5, v0, Lbgp;->a:Ljava/lang/String;

    .line 4847
    move-object/from16 v0, p0

    iget-object v5, v0, Ledn;->a:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v5, v0, Lbgp;->b:Ljava/lang/String;

    .line 4848
    iget-object v5, v4, Left;->f:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v5, v0, Lbgp;->c:Ljava/lang/String;

    .line 4849
    iget-object v5, v4, Left;->h:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v5, v0, Lbgp;->d:Ljava/lang/String;

    .line 4854
    instance-of v5, v4, Lefw;

    if-eqz v5, :cond_b

    move-object v5, v4

    .line 4855
    check-cast v5, Lefw;

    .line 4856
    iget v0, v5, Lefw;->l:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput v0, v1, Lbgp;->e:I

    .line 4857
    iget v5, v5, Lefw;->m:I

    move-object/from16 v0, v28

    iput v5, v0, Lbgp;->f:I

    move v5, v6

    move-object v6, v7

    .line 4866
    :goto_8
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/16 v32, 0x0

    iget-object v0, v4, Left;->f:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v7, v32

    const/16 v32, 0x1

    iget-object v4, v4, Left;->h:Ljava/lang/String;

    aput-object v4, v7, v32

    invoke-static {v7}, Laal;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4869
    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4839
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    move-object v7, v6

    move v6, v5

    goto :goto_7

    .line 4858
    :cond_b
    instance-of v5, v4, Lefy;

    if-eqz v5, :cond_c

    move-object v5, v4

    .line 4859
    check-cast v5, Lefy;

    .line 4860
    iget-object v6, v5, Lefy;->i:Ljava/lang/String;

    .line 4861
    iget v5, v5, Lefy;->j:I

    goto :goto_8

    .line 4862
    :cond_c
    instance-of v5, v4, Lefu;

    if-eqz v5, :cond_13

    move-object v5, v4

    .line 4863
    check-cast v5, Lefu;

    .line 4864
    iget-object v5, v5, Lefu;->i:Ljava/lang/String;

    move/from16 v40, v6

    move-object v6, v5

    move/from16 v5, v40

    goto :goto_8

    .line 4871
    :cond_d
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v18, v6

    move v5, v9

    move-object/from16 v25, v7

    move-object v6, v10

    move-object v7, v11

    move-object v9, v13

    move-object v10, v14

    move-object/from16 v11, v22

    move/from16 v22, v24

    move-object v14, v4

    move-object/from16 v24, v27

    move-object v4, v8

    move-object v8, v12

    move-object v12, v15

    move-object/from16 v15, v19

    move/from16 v19, v23

    move-object/from16 v23, v26

    goto/16 :goto_1

    .line 4878
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Ledn;->l:Ljava/util/List;

    invoke-static {v13, v9}, Laal;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_f
    move/from16 v26, v28

    .line 4893
    goto/16 :goto_3

    .line 4943
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Ledn;->M:I

    goto/16 :goto_4

    .line 4959
    :cond_11
    move-object/from16 v0, p0

    iget v7, v0, Ledn;->c:I

    const/16 v8, 0xa

    if-eq v7, v8, :cond_0

    .line 4960
    move-object/from16 v0, p0

    iget-wide v8, v0, Ledn;->h:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v6}, Ldyy;->a(JI)V

    .line 4961
    move-object/from16 v0, p0

    iget v5, v0, Ledn;->c:I

    goto/16 :goto_5

    .line 4974
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Ledn;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Ledn;->h:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Ledn;->i:J

    move-object/from16 v0, p0

    iget v10, v0, Ledn;->B:I

    move-object/from16 v0, p0

    iget-object v12, v0, Ledn;->g:Lczb;

    move-object/from16 v0, p0

    iget-wide v15, v0, Ledn;->E:J

    move-object/from16 v0, p0

    iget v0, v0, Ledn;->G:I

    move/from16 v17, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v18}, Lbfz;->a(Ljava/lang/String;JJILjava/lang/String;Lczb;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, v31

    move/from16 v9, v33

    move/from16 v10, v34

    move/from16 v11, v35

    move-wide/from16 v12, v36

    move/from16 v14, v27

    move/from16 v15, v28

    move/from16 v16, v19

    .line 4981
    invoke-direct/range {v5 .. v16}, Ledn;->a(Lbfz;Ldyy;ZZZZJIII)V

    .line 4992
    return-void

    :cond_13
    move v5, v6

    move-object v6, v7

    goto/16 :goto_8

    :cond_14
    move-object v7, v11

    move-object v8, v12

    move/from16 v22, v24

    move-object/from16 v25, v28

    move-object v12, v15

    move-object v11, v4

    move-object/from16 v24, v27

    move-object/from16 v15, v19

    move-object v4, v5

    move/from16 v19, v23

    move v5, v9

    move-object/from16 v23, v26

    move-object v9, v13

    move-object/from16 v40, v10

    move-object v10, v14

    move-object v14, v6

    move-object/from16 v6, v40

    goto/16 :goto_1
.end method

.method private a(Lbfz;Ldyy;ZZZZJIII)V
    .locals 13

    .prologue
    .line 8062
    iget-wide v2, p0, Ledn;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 8063
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v2

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v3

    .line 9036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 8065
    const-class v4, Lekq;

    invoke-static {v2, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lekq;

    .line 8066
    invoke-virtual {v2, v3}, Lekq;->e(I)J

    move-result-wide v4

    .line 8069
    new-instance v6, Lbgc;

    invoke-direct {v6}, Lbgc;-><init>()V

    .line 8071
    invoke-virtual {p2}, Ldyy;->f()Ldza;

    move-result-object v2

    iput-object v2, v6, Lbgc;->a:Ldza;

    .line 8072
    move/from16 v0, p4

    iput-boolean v0, v6, Lbgc;->b:Z

    .line 8073
    move/from16 v0, p5

    iput-boolean v0, v6, Lbgc;->n:Z

    .line 8074
    if-nez p6, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v6, Lbgc;->c:Z

    .line 8075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v2, v8, v4

    if-gtz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v6, Lbgc;->d:Z

    .line 8076
    move/from16 v0, p3

    iput-boolean v0, v6, Lbgc;->e:Z

    .line 8077
    iget v2, p0, Ledn;->d:I

    iput v2, v6, Lbgc;->f:I

    .line 9319
    sget-object v2, Ldvp;->v:Ldml;

    invoke-virtual {v2, v3}, Ldml;->b(I)Z

    move-result v2

    .line 8079
    if-eqz v2, :cond_4

    .line 9345
    sget-object v2, Ldvp;->x:Ldml;

    invoke-virtual {v2, v3}, Ldml;->b(I)Z

    move-result v2

    .line 8080
    if-eqz v2, :cond_4

    .line 8081
    :goto_2
    move/from16 v0, p11

    iput v0, v6, Lbgc;->g:I

    .line 8082
    iget-wide v4, p0, Ledn;->h:J

    iput-wide v4, v6, Lbgc;->i:J

    .line 8083
    iget-object v2, p0, Ledn;->f:Ljava/lang/String;

    .line 8084
    invoke-virtual {p1, v2}, Lbfz;->t(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v6, Lbgc;->j:J

    .line 8085
    iget-object v2, p0, Ledn;->f:Ljava/lang/String;

    .line 8086
    invoke-virtual {p1, v2}, Lbfz;->u(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v6, Lbgc;->k:J

    .line 8087
    invoke-static {v3}, Ledn;->b(I)Z

    move-result v2

    iput-boolean v2, v6, Lbgc;->h:Z

    .line 8088
    move/from16 v0, p10

    iput v0, v6, Lbgc;->l:I

    .line 8089
    move/from16 v0, p9

    iput v0, v6, Lbgc;->m:I

    .line 8092
    invoke-direct {p0}, Ledn;->b()Z

    move-result v2

    .line 8095
    iget-boolean v4, p0, Ledn;->v:Z

    if-eqz v4, :cond_7

    .line 10219
    new-instance v4, Lcsn;

    .line 11040
    invoke-direct {v4}, Lcsn;-><init>()V

    .line 8096
    iget-object v5, p0, Ledn;->a:Ljava/lang/String;

    .line 8097
    invoke-virtual {v4, v5}, Lcsn;->c(Ljava/lang/String;)Lcsn;

    move-result-object v4

    iget-wide v8, p0, Ledn;->e:J

    .line 8098
    invoke-virtual {v4, v8, v9}, Lcsn;->a(J)Lcsn;

    move-result-object v4

    iget-object v5, p0, Ledn;->b:Ljava/lang/String;

    .line 8099
    invoke-virtual {v4, v5}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v4

    iget-object v5, p0, Ledn;->f:Ljava/lang/String;

    .line 8100
    invoke-virtual {v4, v5}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 8119
    invoke-static {v3}, Ledn;->b(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, v6, Lbgc;->d:Z

    if-nez v5, :cond_5

    .line 8121
    invoke-virtual {p2}, Ldyy;->f()Ldza;

    move-result-object v5

    sget-object v7, Ldza;->e:Ldza;

    if-ne v5, v7, :cond_5

    .line 8122
    iget-wide v8, p0, Ledn;->w:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/16 v5, 0xa

    const/16 v7, 0x191

    .line 8126
    invoke-virtual {v4, v7}, Lcsn;->a(I)Lcsn;

    move-result-object v7

    .line 8127
    invoke-virtual {v7, v6}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v7

    .line 8122
    invoke-static {v3, v8, v9, v5, v7}, Laen;->a(IJILcsn;)V

    .line 8128
    const/16 v5, 0xa

    const/16 v7, 0x192

    .line 8132
    invoke-virtual {v4, v7}, Lcsn;->a(I)Lcsn;

    move-result-object v7

    .line 8128
    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1, v5, v7}, Laen;->a(IJILcsn;)V

    .line 8146
    :goto_3
    invoke-virtual {p2}, Ldyy;->f()Ldza;

    move-result-object v5

    sget-object v7, Ldza;->b:Ldza;

    if-ne v5, v7, :cond_0

    .line 8149
    invoke-virtual {p2}, Ldyy;->d()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/16 v5, 0xa

    const/16 v7, 0x1c3

    .line 8151
    invoke-virtual {v4, v7}, Lcsn;->a(I)Lcsn;

    move-result-object v7

    .line 8152
    invoke-virtual {v7, v6}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v7

    .line 8147
    invoke-static {v3, v8, v9, v5, v7}, Laen;->a(IJILcsn;)V

    .line 8153
    const/16 v5, 0xa

    const/16 v7, 0x1c4

    .line 8157
    invoke-virtual {v4, v7}, Lcsn;->a(I)Lcsn;

    move-result-object v7

    .line 8153
    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1, v5, v7}, Laen;->a(IJILcsn;)V

    .line 8162
    :cond_0
    iget-wide v8, p0, Ledn;->r:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/4 v5, 0x1

    const/4 v7, 0x1

    .line 8167
    invoke-virtual {v4, v7}, Lcsn;->a(I)Lcsn;

    move-result-object v7

    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 8168
    :goto_4
    invoke-virtual {v7, v2}, Lcsn;->a(Z)Lcsn;

    move-result-object v2

    const/4 v7, 0x0

    .line 8169
    invoke-virtual {v2, v7}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v2

    .line 8162
    invoke-static {v3, v8, v9, v5, v2}, Laen;->a(IJILcsn;)V

    .line 8170
    iget-wide v8, p0, Ledn;->s:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/16 v2, 0xa

    const/16 v5, 0xce

    .line 8174
    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    const/4 v7, 0x0

    .line 8175
    invoke-virtual {v5, v7}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v5

    .line 8170
    invoke-static {v3, v8, v9, v2, v5}, Laen;->a(IJILcsn;)V

    .line 8176
    iget-wide v8, p0, Ledn;->t:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/16 v2, 0xa

    const/16 v5, 0xcf

    .line 8180
    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    const/4 v7, 0x0

    .line 8181
    invoke-virtual {v5, v7}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v5

    .line 8176
    invoke-static {v3, v8, v9, v2, v5}, Laen;->a(IJILcsn;)V

    .line 8182
    iget-wide v8, p0, Ledn;->u:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/16 v2, 0xa

    const/16 v5, 0x6b

    .line 8186
    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    const/4 v7, 0x0

    .line 8187
    invoke-virtual {v5, v7}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v5

    .line 8182
    invoke-static {v3, v8, v9, v2, v5}, Laen;->a(IJILcsn;)V

    .line 8188
    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 8192
    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v4

    .line 8188
    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1, v2, v4}, Laen;->a(IJILcsn;)V

    .line 8238
    :cond_1
    :goto_5
    return-void

    .line 8074
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 8075
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 8081
    :cond_4
    iget v0, p0, Ledn;->c:I

    move/from16 p11, v0

    goto/16 :goto_2

    .line 8134
    :cond_5
    iget-wide v8, p0, Ledn;->w:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/16 v5, 0xa

    const/16 v7, 0x19b

    .line 8138
    invoke-virtual {v4, v7}, Lcsn;->a(I)Lcsn;

    move-result-object v7

    .line 8139
    invoke-virtual {v7, v6}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v7

    .line 8134
    invoke-static {v3, v8, v9, v5, v7}, Laen;->a(IJILcsn;)V

    goto/16 :goto_3

    .line 8167
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 11219
    :cond_7
    new-instance v4, Lcsn;

    .line 12040
    invoke-direct {v4}, Lcsn;-><init>()V

    .line 8196
    iget-object v5, p0, Ledn;->a:Ljava/lang/String;

    .line 8197
    invoke-virtual {v4, v5}, Lcsn;->c(Ljava/lang/String;)Lcsn;

    move-result-object v4

    iget-object v5, p0, Ledn;->b:Ljava/lang/String;

    .line 8199
    invoke-virtual {v4, v5}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v4

    iget-object v5, p0, Ledn;->f:Ljava/lang/String;

    .line 8200
    invoke-virtual {v4, v5}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 8201
    iget-wide v8, p0, Ledn;->r:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/4 v5, 0x1

    iget v7, p0, Ledn;->L:I

    .line 8206
    invoke-virtual {v4, v7}, Lcsn;->a(I)Lcsn;

    move-result-object v7

    iget v10, p0, Ledn;->N:I

    .line 8207
    invoke-virtual {v7, v10}, Lcsn;->b(I)Lcsn;

    move-result-object v7

    if-nez v2, :cond_8

    const/4 v2, 0x1

    .line 8208
    :goto_6
    invoke-virtual {v7, v2}, Lcsn;->a(Z)Lcsn;

    move-result-object v2

    .line 8209
    invoke-virtual {v2, v6}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v2

    .line 8201
    invoke-static {v3, v8, v9, v5, v2}, Laen;->a(IJILcsn;)V

    .line 8210
    iget-wide v8, p0, Ledn;->t:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/16 v2, 0xa

    const/16 v5, 0xcc

    .line 8214
    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    const/4 v7, 0x0

    .line 8215
    invoke-virtual {v5, v7}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v5

    .line 8210
    invoke-static {v3, v8, v9, v2, v5}, Laen;->a(IJILcsn;)V

    .line 8216
    iget-wide v8, p0, Ledn;->u:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/16 v2, 0xa

    const/16 v5, 0x6c

    .line 8220
    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    const/4 v7, 0x0

    .line 8221
    invoke-virtual {v5, v7}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v5

    .line 8216
    invoke-static {v3, v8, v9, v2, v5}, Laen;->a(IJILcsn;)V

    .line 8222
    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 8226
    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v5

    .line 8222
    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1, v2, v5}, Laen;->a(IJILcsn;)V

    .line 8229
    const/16 v2, 0xa

    const/16 v5, 0x1cd

    .line 8234
    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v4

    .line 8235
    invoke-virtual {v4, v6}, Lcsn;->a(Lbgc;)Lcsn;

    move-result-object v4

    .line 8229
    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1, v2, v4}, Laen;->a(IJILcsn;)V

    goto/16 :goto_5

    .line 8207
    :cond_8
    const/4 v2, 0x0

    goto :goto_6
.end method

.method private a(ILbfz;)Z
    .locals 1

    .prologue
    .line 6319
    sget-object v0, Ldvp;->v:Ldml;

    invoke-virtual {v0, p1}, Ldml;->b(I)Z

    move-result v0

    .line 6014
    if-eqz v0, :cond_0

    .line 6345
    sget-object v0, Ldvp;->x:Ldml;

    invoke-virtual {v0, p1}, Ldml;->b(I)Z

    move-result v0

    .line 6015
    if-eqz v0, :cond_0

    .line 6016
    invoke-direct {p0, p2}, Ledn;->c(Lbfz;)Z

    move-result v0

    .line 6018
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2}, Ledn;->b(Lbfz;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 8047
    iget-object v0, p0, Ledn;->O:Laxw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledn;->O:Laxw;

    invoke-interface {v0}, Laxw;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 2

    .prologue
    .line 5036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 4998
    const-class v1, Lekq;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    .line 4999
    invoke-virtual {v0, p0}, Lekq;->b(I)Z

    move-result v0

    return v0
.end method

.method private b(ILbfz;)Z
    .locals 1

    .prologue
    .line 12319
    sget-object v0, Ldvp;->v:Ldml;

    invoke-virtual {v0, p1}, Ldml;->b(I)Z

    move-result v0

    .line 12260
    if-eqz v0, :cond_0

    .line 12345
    sget-object v0, Ldvp;->x:Ldml;

    invoke-virtual {v0, p1}, Ldml;->b(I)Z

    move-result v0

    .line 12261
    if-eqz v0, :cond_0

    .line 12262
    invoke-direct {p0, p2}, Ledn;->f(Lbfz;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2}, Ledn;->d(Lbfz;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Lbfz;)Z
    .locals 4

    .prologue
    .line 7023
    iget-object v0, p0, Ledn;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbfz;->m(Ljava/lang/String;)J

    move-result-wide v0

    .line 7024
    iget-wide v2, p0, Ledn;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lbfz;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7030
    iget-object v2, p0, Ledn;->f:Ljava/lang/String;

    iget-object v3, p0, Ledn;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lbfz;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 7031
    iget-object v3, p0, Ledn;->f:Ljava/lang/String;

    iget-object v4, p0, Ledn;->a:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lbfz;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 7035
    if-eqz v2, :cond_0

    move v3, v0

    .line 7036
    :goto_0
    if-eqz v4, :cond_1

    .line 7051
    invoke-static {v4, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 7037
    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    move v2, v0

    .line 7039
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_0
    move v3, v1

    .line 7035
    goto :goto_0

    :cond_1
    move v2, v1

    .line 7037
    goto :goto_1

    :cond_2
    move v0, v1

    .line 7039
    goto :goto_2
.end method

.method private d(Lbfz;)Z
    .locals 4

    .prologue
    .line 12242
    iget-object v0, p0, Ledn;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbfz;->t(Ljava/lang/String;)J

    move-result-wide v0

    .line 12243
    iget-wide v2, p0, Ledn;->h:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lbfz;)I
    .locals 2

    .prologue
    .line 12248
    iget-object v0, p0, Ledn;->f:Ljava/lang/String;

    iget-object v1, p0, Ledn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lbfz;->f(Ljava/lang/String;Ljava/lang/String;)Lbgo;

    move-result-object v0

    .line 12251
    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lbgo;->J:I

    goto :goto_0
.end method

.method private f(Lbfz;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12256
    invoke-direct {p0, p1}, Ledn;->e(Lbfz;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 3702
    iget-wide v0, p0, Ledn;->E:J

    return-wide v0
.end method

.method public a(I)Ledn;
    .locals 0

    .prologue
    .line 3697
    iput p1, p0, Ledn;->G:I

    .line 3698
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ledn;
    .locals 0

    .prologue
    .line 3687
    iput-object p1, p0, Ledn;->C:Ljava/lang/String;

    .line 3688
    return-object p0
.end method

.method public a(Lbfz;Ldyy;)V
    .locals 4

    .prologue
    .line 3721
    invoke-virtual {p1}, Lbfz;->a()V

    .line 3722
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Ledn;->u:J

    .line 3724
    :try_start_0
    iget v0, p0, Ledn;->o:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3728
    iget-object v0, p0, Ledn;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lbfz;->c(Ljava/lang/String;I)V

    .line 3730
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ledn;->a(Lbfz;Ldyy;I)V

    .line 4159
    invoke-virtual {p0, p1}, Ledm;->a(Lbfz;)V

    .line 3732
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3734
    invoke-virtual {p1}, Lbfz;->c()V

    .line 3737
    iget-object v0, p0, Ledn;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 3738
    return-void

    .line 3734
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method

.method public a(Lemc;)V
    .locals 0

    .prologue
    .line 3706
    iput-object p1, p0, Ledn;->k:Lemc;

    .line 3707
    return-void
.end method

.method public b(Ljava/lang/String;)Ledn;
    .locals 0

    .prologue
    .line 3692
    iput-object p1, p0, Ledn;->D:Ljava/lang/String;

    .line 3693
    return-object p0
.end method

.method public b(Lbfz;Ldyy;)V
    .locals 1

    .prologue
    .line 4751
    iget v0, p0, Ledn;->L:I

    invoke-direct {p0, p1, p2, v0}, Ledn;->a(Lbfz;Ldyy;I)V

    .line 4752
    invoke-virtual {p0, p1}, Ledn;->a(Lbfz;)V

    .line 4753
    return-void
.end method
