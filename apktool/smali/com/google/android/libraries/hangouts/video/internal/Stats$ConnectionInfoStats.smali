.class public Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;
.super Lcom/google/android/libraries/hangouts/video/internal/Stats;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljum;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 1
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/Stats;-><init>()V

    .line 573
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->n:I

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->o:Ljum;

    .line 592
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->a:I

    .line 593
    invoke-static {p2}, Lcom/google/android/libraries/hangouts/video/internal/Stats;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->b:I

    .line 594
    iput-object p3, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->c:Ljava/lang/String;

    .line 595
    invoke-static {p4}, Lcom/google/android/libraries/hangouts/video/internal/Stats;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->d:I

    .line 596
    invoke-static {p5}, Lcom/google/android/libraries/hangouts/video/internal/Stats;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->e:I

    .line 597
    iput-object p6, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->f:Ljava/lang/String;

    .line 598
    invoke-static {p7}, Lcom/google/android/libraries/hangouts/video/internal/Stats;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->g:I

    .line 599
    iput p8, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->h:I

    .line 600
    iput p9, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->i:I

    .line 601
    iput p10, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->j:I

    .line 602
    iput p11, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->k:I

    .line 603
    iput p12, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->l:I

    .line 604
    iput p13, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->m:I

    .line 605
    return-void
.end method

.method public static printLegend(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 673
    const-string v0, "  Connection -- media type, local address, type, protocol, remote address, type, protocol, received bitrate, sent bitrate, media network type, wifi signal strength, cell signal type, cell level, cell asu level"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    return-void
.end method


# virtual methods
.method public addTo(Ljuk;)V
    .locals 6
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 622
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->a:I

    packed-switch v0, :pswitch_data_0

    .line 630
    const/4 v0, 0x0

    .line 635
    :goto_0
    new-instance v1, Ljuh;

    invoke-direct {v1}, Ljuh;-><init>()V

    .line 637
    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->c:Ljava/lang/String;

    iput-object v2, v1, Ljuh;->a:Ljava/lang/String;

    .line 638
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Ljuh;->b:Ljava/lang/Integer;

    .line 639
    iget v2, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Ljuh;->c:Ljava/lang/Integer;

    .line 640
    iget v2, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Ljuh;->d:Ljava/lang/Integer;

    .line 643
    new-instance v2, Ljuh;

    invoke-direct {v2}, Ljuh;-><init>()V

    .line 645
    iget-object v3, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->c:Ljava/lang/String;

    iput-object v3, v2, Ljuh;->a:Ljava/lang/String;

    .line 646
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Ljuh;->b:Ljava/lang/Integer;

    .line 647
    iget v3, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Ljuh;->c:Ljava/lang/Integer;

    .line 648
    iget v3, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Ljuh;->d:Ljava/lang/Integer;

    .line 650
    new-instance v3, Ljul;

    invoke-direct {v3}, Ljul;-><init>()V

    .line 651
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Ljul;->a:Ljava/lang/Integer;

    .line 652
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Ljul;->b:Ljava/lang/Integer;

    .line 653
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Ljul;->c:Ljava/lang/Integer;

    .line 654
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->j:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Ljul;->d:Ljava/lang/Long;

    .line 655
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->h:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Ljul;->h:Ljava/lang/Long;

    .line 656
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->k:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Ljul;->e:Ljava/lang/Integer;

    .line 657
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->i:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Ljul;->i:Ljava/lang/Integer;

    .line 658
    iput-object v1, v3, Ljul;->j:Ljuh;

    .line 659
    iput-object v2, v3, Ljul;->k:Ljuh;

    .line 661
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->n:I

    if-lez v0, :cond_0

    .line 662
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Ljul;->l:Ljava/lang/Integer;

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->o:Ljum;

    iput-object v0, v3, Ljul;->m:Ljum;

    .line 666
    iget-object v0, p1, Ljuk;->e:[Ljul;

    array-length v1, v0

    .line 667
    iget-object v0, p1, Ljuk;->e:[Ljul;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljul;

    iput-object v0, p1, Ljuk;->e:[Ljul;

    .line 668
    iget-object v0, p1, Ljuk;->e:[Ljul;

    aput-object v3, v0, v1

    .line 669
    return-void

    .line 624
    :pswitch_0
    const/4 v0, 0x1

    .line 625
    goto/16 :goto_0

    .line 627
    :pswitch_1
    const/4 v0, 0x2

    .line 628
    goto/16 :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public print(Ljava/io/PrintWriter;Lcom/google/android/libraries/hangouts/video/internal/Stats$AggregatePrintStats;)V
    .locals 18
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 682
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->b:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->e:I

    if-ne v1, v2, :cond_1

    .line 1032
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p2

    iput-boolean v1, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$AggregatePrintStats;->c:Z

    .line 688
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->a:I

    if-nez v1, :cond_2

    .line 689
    const-string v1, "video"

    .line 690
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->d:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->e:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->g:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->i:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->k:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->n:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->o:Ljum;

    iget-object v11, v11, Ljum;->a:Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->o:Ljum;

    iget-object v12, v12, Ljum;->b:Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->o:Ljum;

    iget-object v13, v13, Ljum;->c:Ljava/lang/Integer;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->o:Ljum;

    iget-object v14, v14, Ljum;->d:Ljava/lang/Integer;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x79

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v16, " -- Connection -- "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ", "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    return-void

    .line 2032
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p2

    iput-boolean v1, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$AggregatePrintStats;->c:Z

    goto/16 :goto_0

    .line 689
    :cond_2
    const-string v1, "audio"

    goto/16 :goto_1
.end method

.method public setMediaNetworkType(I)V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 609
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->n:I

    .line 610
    return-void
.end method

.method public setSignalStrength(Ljum;)V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 614
    iput-object p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->o:Ljum;

    .line 615
    return-void
.end method
