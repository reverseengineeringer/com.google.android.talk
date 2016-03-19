.class public final Ljyc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile i:[Ljyc;


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Long;

.field public c:Ljxr;

.field public d:[Ljzl;

.field public e:Ljzp;

.field public f:Ljzp;

.field public g:Ljava/lang/Boolean;

.field public h:[Ljyl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12586
    invoke-direct {p0}, Llyb;-><init>()V

    .line 13591
    iput-object v1, p0, Ljyc;->a:Ljxw;

    .line 13592
    iput-object v1, p0, Ljyc;->b:Ljava/lang/Long;

    .line 13593
    iput-object v1, p0, Ljyc;->c:Ljxr;

    .line 13594
    invoke-static {}, Ljzl;->d()[Ljzl;

    move-result-object v0

    iput-object v0, p0, Ljyc;->d:[Ljzl;

    .line 13595
    iput-object v1, p0, Ljyc;->e:Ljzp;

    .line 13596
    iput-object v1, p0, Ljyc;->f:Ljzp;

    .line 13597
    iput-object v1, p0, Ljyc;->g:Ljava/lang/Boolean;

    .line 13598
    invoke-static {}, Ljyl;->d()[Ljyl;

    move-result-object v0

    iput-object v0, p0, Ljyc;->h:[Ljyl;

    .line 13599
    iput-object v1, p0, Ljyc;->eD:Llyd;

    .line 13600
    const/4 v0, -0x1

    iput v0, p0, Ljyc;->eE:I

    .line 12588
    return-void
.end method

.method public static d()[Ljyc;
    .locals 2

    .prologue
    .line 12549
    sget-object v0, Ljyc;->i:[Ljyc;

    if-nez v0, :cond_1

    .line 12550
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 12552
    :try_start_0
    sget-object v0, Ljyc;->i:[Ljyc;

    if-nez v0, :cond_0

    .line 12553
    const/4 v0, 0x0

    new-array v0, v0, [Ljyc;

    sput-object v0, Ljyc;->i:[Ljyc;

    .line 12555
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12557
    :cond_1
    sget-object v0, Ljyc;->i:[Ljyc;

    return-object v0

    .line 12555
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13697
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 13698
    sparse-switch v0, :sswitch_data_0

    .line 13702
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13703
    :sswitch_0
    return-object p0

    .line 13708
    :sswitch_1
    iget-object v0, p0, Ljyc;->a:Ljxw;

    if-nez v0, :cond_1

    .line 13709
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljyc;->a:Ljxw;

    .line 13711
    :cond_1
    iget-object v0, p0, Ljyc;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 13715
    :sswitch_2
    iget-object v0, p0, Ljyc;->c:Ljxr;

    if-nez v0, :cond_2

    .line 13716
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iput-object v0, p0, Ljyc;->c:Ljxr;

    .line 13718
    :cond_2
    iget-object v0, p0, Ljyc;->c:Ljxr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 13722
    :sswitch_3
    const/16 v0, 0x1a

    .line 13723
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 13724
    iget-object v0, p0, Ljyc;->d:[Ljzl;

    if-nez v0, :cond_4

    move v0, v1

    .line 13725
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzl;

    .line 13727
    if-eqz v0, :cond_3

    .line 13728
    iget-object v3, p0, Ljyc;->d:[Ljzl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13730
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 13731
    new-instance v3, Ljzl;

    invoke-direct {v3}, Ljzl;-><init>()V

    aput-object v3, v2, v0

    .line 13732
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 13733
    invoke-virtual {p1}, Llxy;->a()I

    .line 13730
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13724
    :cond_4
    iget-object v0, p0, Ljyc;->d:[Ljzl;

    array-length v0, v0

    goto :goto_1

    .line 13736
    :cond_5
    new-instance v3, Ljzl;

    invoke-direct {v3}, Ljzl;-><init>()V

    aput-object v3, v2, v0

    .line 13737
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 13738
    iput-object v2, p0, Ljyc;->d:[Ljzl;

    goto :goto_0

    .line 13742
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyc;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 13746
    :sswitch_5
    iget-object v0, p0, Ljyc;->e:Ljzp;

    if-nez v0, :cond_6

    .line 13747
    new-instance v0, Ljzp;

    invoke-direct {v0}, Ljzp;-><init>()V

    iput-object v0, p0, Ljyc;->e:Ljzp;

    .line 13749
    :cond_6
    iget-object v0, p0, Ljyc;->e:Ljzp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 13753
    :sswitch_6
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljyc;->b:Ljava/lang/Long;

    goto/16 :goto_0

    .line 13757
    :sswitch_7
    const/16 v0, 0x3a

    .line 13758
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 13759
    iget-object v0, p0, Ljyc;->h:[Ljyl;

    if-nez v0, :cond_8

    move v0, v1

    .line 13760
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljyl;

    .line 13762
    if-eqz v0, :cond_7

    .line 13763
    iget-object v3, p0, Ljyc;->h:[Ljyl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13765
    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 13766
    new-instance v3, Ljyl;

    invoke-direct {v3}, Ljyl;-><init>()V

    aput-object v3, v2, v0

    .line 13767
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 13768
    invoke-virtual {p1}, Llxy;->a()I

    .line 13765
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 13759
    :cond_8
    iget-object v0, p0, Ljyc;->h:[Ljyl;

    array-length v0, v0

    goto :goto_3

    .line 13771
    :cond_9
    new-instance v3, Ljyl;

    invoke-direct {v3}, Ljyl;-><init>()V

    aput-object v3, v2, v0

    .line 13772
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 13773
    iput-object v2, p0, Ljyc;->h:[Ljyl;

    goto/16 :goto_0

    .line 13777
    :sswitch_8
    iget-object v0, p0, Ljyc;->f:Ljzp;

    if-nez v0, :cond_a

    .line 13778
    new-instance v0, Ljzp;

    invoke-direct {v0}, Ljzp;-><init>()V

    iput-object v0, p0, Ljyc;->f:Ljzp;

    .line 13780
    :cond_a
    iget-object v0, p0, Ljyc;->f:Ljzp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 13698
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12607
    iget-object v0, p0, Ljyc;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 12608
    const/4 v0, 0x1

    iget-object v2, p0, Ljyc;->a:Ljxw;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 12610
    :cond_0
    iget-object v0, p0, Ljyc;->c:Ljxr;

    if-eqz v0, :cond_1

    .line 12611
    const/4 v0, 0x2

    iget-object v2, p0, Ljyc;->c:Ljxr;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 12613
    :cond_1
    iget-object v0, p0, Ljyc;->d:[Ljzl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljyc;->d:[Ljzl;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 12614
    :goto_0
    iget-object v2, p0, Ljyc;->d:[Ljzl;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 12615
    iget-object v2, p0, Ljyc;->d:[Ljzl;

    aget-object v2, v2, v0

    .line 12616
    if-eqz v2, :cond_2

    .line 12617
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 12614
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12621
    :cond_3
    iget-object v0, p0, Ljyc;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 12622
    const/4 v0, 0x4

    iget-object v2, p0, Ljyc;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 12624
    :cond_4
    iget-object v0, p0, Ljyc;->e:Ljzp;

    if-eqz v0, :cond_5

    .line 12625
    const/4 v0, 0x5

    iget-object v2, p0, Ljyc;->e:Ljzp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 12627
    :cond_5
    iget-object v0, p0, Ljyc;->b:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 12628
    const/4 v0, 0x6

    iget-object v2, p0, Ljyc;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 12630
    :cond_6
    iget-object v0, p0, Ljyc;->h:[Ljyl;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljyc;->h:[Ljyl;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 12631
    :goto_1
    iget-object v0, p0, Ljyc;->h:[Ljyl;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 12632
    iget-object v0, p0, Ljyc;->h:[Ljyl;

    aget-object v0, v0, v1

    .line 12633
    if-eqz v0, :cond_7

    .line 12634
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 12631
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12638
    :cond_8
    iget-object v0, p0, Ljyc;->f:Ljzp;

    if-eqz v0, :cond_9

    .line 12639
    const/16 v0, 0x8

    iget-object v1, p0, Ljyc;->f:Ljzp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 12641
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 12642
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 12646
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 12647
    iget-object v2, p0, Ljyc;->a:Ljxw;

    if-eqz v2, :cond_0

    .line 12648
    const/4 v2, 0x1

    iget-object v3, p0, Ljyc;->a:Ljxw;

    .line 12649
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12651
    :cond_0
    iget-object v2, p0, Ljyc;->c:Ljxr;

    if-eqz v2, :cond_1

    .line 12652
    const/4 v2, 0x2

    iget-object v3, p0, Ljyc;->c:Ljxr;

    .line 12653
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12655
    :cond_1
    iget-object v2, p0, Ljyc;->d:[Ljzl;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljyc;->d:[Ljzl;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 12656
    :goto_0
    iget-object v3, p0, Ljyc;->d:[Ljzl;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 12657
    iget-object v3, p0, Ljyc;->d:[Ljzl;

    aget-object v3, v3, v0

    .line 12658
    if-eqz v3, :cond_2

    .line 12659
    const/4 v4, 0x3

    .line 12660
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12656
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 12664
    :cond_4
    iget-object v2, p0, Ljyc;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 12665
    const/4 v2, 0x4

    iget-object v3, p0, Ljyc;->g:Ljava/lang/Boolean;

    .line 12666
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 12666
    add-int/2addr v0, v2

    .line 12668
    :cond_5
    iget-object v2, p0, Ljyc;->e:Ljzp;

    if-eqz v2, :cond_6

    .line 12669
    const/4 v2, 0x5

    iget-object v3, p0, Ljyc;->e:Ljzp;

    .line 12670
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12672
    :cond_6
    iget-object v2, p0, Ljyc;->b:Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 12673
    const/4 v2, 0x6

    iget-object v3, p0, Ljyc;->b:Ljava/lang/Long;

    .line 12674
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12676
    :cond_7
    iget-object v2, p0, Ljyc;->h:[Ljyl;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ljyc;->h:[Ljyl;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 12677
    :goto_1
    iget-object v2, p0, Ljyc;->h:[Ljyl;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 12678
    iget-object v2, p0, Ljyc;->h:[Ljyl;

    aget-object v2, v2, v1

    .line 12679
    if-eqz v2, :cond_8

    .line 12680
    const/4 v3, 0x7

    .line 12681
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12677
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12685
    :cond_9
    iget-object v1, p0, Ljyc;->f:Ljzp;

    if-eqz v1, :cond_a

    .line 12686
    const/16 v1, 0x8

    iget-object v2, p0, Ljyc;->f:Ljzp;

    .line 12687
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12689
    :cond_a
    return v0
.end method
