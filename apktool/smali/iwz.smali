.class public final Liwz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwz;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile r:[Liwz;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Long;

.field public n:Ljava/lang/Long;

.field public o:Ljava/lang/Boolean;

.field public p:Ljava/lang/Long;

.field public q:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5697
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6702
    iput-object v0, p0, Liwz;->a:Lixc;

    .line 6703
    iput-object v0, p0, Liwz;->b:Ljava/lang/String;

    .line 6704
    iput-object v0, p0, Liwz;->c:Ljava/lang/String;

    .line 6705
    iput-object v0, p0, Liwz;->d:Ljava/lang/String;

    .line 6706
    iput-object v0, p0, Liwz;->e:Ljava/lang/String;

    .line 6707
    iput-object v0, p0, Liwz;->f:Ljava/lang/String;

    .line 6708
    iput-object v0, p0, Liwz;->g:Ljava/lang/String;

    .line 6709
    iput-object v0, p0, Liwz;->h:Ljava/lang/String;

    .line 6710
    iput-object v0, p0, Liwz;->i:Ljava/lang/String;

    .line 6711
    iput-object v0, p0, Liwz;->j:Ljava/lang/Integer;

    .line 6712
    iput-object v0, p0, Liwz;->k:Ljava/lang/String;

    .line 6713
    iput-object v0, p0, Liwz;->l:Ljava/lang/String;

    .line 6714
    iput-object v0, p0, Liwz;->m:Ljava/lang/Long;

    .line 6715
    iput-object v0, p0, Liwz;->n:Ljava/lang/Long;

    .line 6716
    iput-object v0, p0, Liwz;->o:Ljava/lang/Boolean;

    .line 6717
    iput-object v0, p0, Liwz;->p:Ljava/lang/Long;

    .line 6718
    iput-object v0, p0, Liwz;->q:Ljava/lang/Long;

    .line 6719
    iput-object v0, p0, Liwz;->eD:Llyd;

    .line 6720
    const/4 v0, -0x1

    iput v0, p0, Liwz;->eE:I

    .line 5699
    return-void
.end method

.method public static d()[Liwz;
    .locals 2

    .prologue
    .line 5633
    sget-object v0, Liwz;->r:[Liwz;

    if-nez v0, :cond_1

    .line 5634
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5636
    :try_start_0
    sget-object v0, Liwz;->r:[Liwz;

    if-nez v0, :cond_0

    .line 5637
    const/4 v0, 0x0

    new-array v0, v0, [Liwz;

    sput-object v0, Liwz;->r:[Liwz;

    .line 5639
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5641
    :cond_1
    sget-object v0, Liwz;->r:[Liwz;

    return-object v0

    .line 5639
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
    .locals 2

    .prologue
    .line 7860
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7861
    sparse-switch v0, :sswitch_data_0

    .line 7865
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7866
    :sswitch_0
    return-object p0

    .line 7871
    :sswitch_1
    iget-object v0, p0, Liwz;->a:Lixc;

    if-nez v0, :cond_1

    .line 7872
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwz;->a:Lixc;

    .line 7874
    :cond_1
    iget-object v0, p0, Liwz;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7878
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->b:Ljava/lang/String;

    goto :goto_0

    .line 7882
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->c:Ljava/lang/String;

    goto :goto_0

    .line 7886
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->d:Ljava/lang/String;

    goto :goto_0

    .line 7890
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->e:Ljava/lang/String;

    goto :goto_0

    .line 7894
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->f:Ljava/lang/String;

    goto :goto_0

    .line 7898
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->g:Ljava/lang/String;

    goto :goto_0

    .line 7902
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->h:Ljava/lang/String;

    goto :goto_0

    .line 7906
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->i:Ljava/lang/String;

    goto :goto_0

    .line 7910
    :sswitch_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 7911
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7915
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liwz;->j:Ljava/lang/Integer;

    goto :goto_0

    .line 7921
    :sswitch_b
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Liwz;->m:Ljava/lang/Long;

    goto :goto_0

    .line 7925
    :sswitch_c
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Liwz;->n:Ljava/lang/Long;

    goto :goto_0

    .line 7929
    :sswitch_d
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liwz;->o:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 7933
    :sswitch_e
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Liwz;->p:Ljava/lang/Long;

    goto/16 :goto_0

    .line 7937
    :sswitch_f
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Liwz;->q:Ljava/lang/Long;

    goto/16 :goto_0

    .line 7941
    :sswitch_10
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 7945
    :sswitch_11
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwz;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 7861
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
    .end sparse-switch

    .line 7911
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 5727
    iget-object v0, p0, Liwz;->a:Lixc;

    if-eqz v0, :cond_0

    .line 5728
    const/4 v0, 0x1

    iget-object v1, p0, Liwz;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5730
    :cond_0
    iget-object v0, p0, Liwz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5731
    const/4 v0, 0x2

    iget-object v1, p0, Liwz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5733
    :cond_1
    iget-object v0, p0, Liwz;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5734
    const/4 v0, 0x3

    iget-object v1, p0, Liwz;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5736
    :cond_2
    iget-object v0, p0, Liwz;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5737
    const/4 v0, 0x4

    iget-object v1, p0, Liwz;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5739
    :cond_3
    iget-object v0, p0, Liwz;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5740
    const/4 v0, 0x5

    iget-object v1, p0, Liwz;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5742
    :cond_4
    iget-object v0, p0, Liwz;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 5743
    const/4 v0, 0x6

    iget-object v1, p0, Liwz;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5745
    :cond_5
    iget-object v0, p0, Liwz;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 5746
    const/4 v0, 0x7

    iget-object v1, p0, Liwz;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5748
    :cond_6
    iget-object v0, p0, Liwz;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 5749
    const/16 v0, 0x8

    iget-object v1, p0, Liwz;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5751
    :cond_7
    iget-object v0, p0, Liwz;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 5752
    const/16 v0, 0x9

    iget-object v1, p0, Liwz;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5754
    :cond_8
    iget-object v0, p0, Liwz;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 5755
    const/16 v0, 0xa

    iget-object v1, p0, Liwz;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5757
    :cond_9
    iget-object v0, p0, Liwz;->m:Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 5758
    const/16 v0, 0xb

    iget-object v1, p0, Liwz;->m:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 5760
    :cond_a
    iget-object v0, p0, Liwz;->n:Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 5761
    const/16 v0, 0xc

    iget-object v1, p0, Liwz;->n:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 5763
    :cond_b
    iget-object v0, p0, Liwz;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 5764
    const/16 v0, 0xd

    iget-object v1, p0, Liwz;->o:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 5766
    :cond_c
    iget-object v0, p0, Liwz;->p:Ljava/lang/Long;

    if-eqz v0, :cond_d

    .line 5767
    const/16 v0, 0xe

    iget-object v1, p0, Liwz;->p:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 5769
    :cond_d
    iget-object v0, p0, Liwz;->q:Ljava/lang/Long;

    if-eqz v0, :cond_e

    .line 5770
    const/16 v0, 0xf

    iget-object v1, p0, Liwz;->q:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 5772
    :cond_e
    iget-object v0, p0, Liwz;->k:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 5773
    const/16 v0, 0x10

    iget-object v1, p0, Liwz;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5775
    :cond_f
    iget-object v0, p0, Liwz;->l:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 5776
    const/16 v0, 0x11

    iget-object v1, p0, Liwz;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5778
    :cond_10
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5779
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 5783
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5784
    iget-object v1, p0, Liwz;->a:Lixc;

    if-eqz v1, :cond_0

    .line 5785
    const/4 v1, 0x1

    iget-object v2, p0, Liwz;->a:Lixc;

    .line 5786
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5788
    :cond_0
    iget-object v1, p0, Liwz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5789
    const/4 v1, 0x2

    iget-object v2, p0, Liwz;->b:Ljava/lang/String;

    .line 5790
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5792
    :cond_1
    iget-object v1, p0, Liwz;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5793
    const/4 v1, 0x3

    iget-object v2, p0, Liwz;->c:Ljava/lang/String;

    .line 5794
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5796
    :cond_2
    iget-object v1, p0, Liwz;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5797
    const/4 v1, 0x4

    iget-object v2, p0, Liwz;->d:Ljava/lang/String;

    .line 5798
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5800
    :cond_3
    iget-object v1, p0, Liwz;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 5801
    const/4 v1, 0x5

    iget-object v2, p0, Liwz;->e:Ljava/lang/String;

    .line 5802
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5804
    :cond_4
    iget-object v1, p0, Liwz;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 5805
    const/4 v1, 0x6

    iget-object v2, p0, Liwz;->f:Ljava/lang/String;

    .line 5806
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5808
    :cond_5
    iget-object v1, p0, Liwz;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 5809
    const/4 v1, 0x7

    iget-object v2, p0, Liwz;->g:Ljava/lang/String;

    .line 5810
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5812
    :cond_6
    iget-object v1, p0, Liwz;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 5813
    const/16 v1, 0x8

    iget-object v2, p0, Liwz;->h:Ljava/lang/String;

    .line 5814
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5816
    :cond_7
    iget-object v1, p0, Liwz;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 5817
    const/16 v1, 0x9

    iget-object v2, p0, Liwz;->i:Ljava/lang/String;

    .line 5818
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5820
    :cond_8
    iget-object v1, p0, Liwz;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 5821
    const/16 v1, 0xa

    iget-object v2, p0, Liwz;->j:Ljava/lang/Integer;

    .line 5822
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5824
    :cond_9
    iget-object v1, p0, Liwz;->m:Ljava/lang/Long;

    if-eqz v1, :cond_a

    .line 5825
    const/16 v1, 0xb

    iget-object v2, p0, Liwz;->m:Ljava/lang/Long;

    .line 5826
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5828
    :cond_a
    iget-object v1, p0, Liwz;->n:Ljava/lang/Long;

    if-eqz v1, :cond_b

    .line 5829
    const/16 v1, 0xc

    iget-object v2, p0, Liwz;->n:Ljava/lang/Long;

    .line 5830
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5832
    :cond_b
    iget-object v1, p0, Liwz;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 5833
    const/16 v1, 0xd

    iget-object v2, p0, Liwz;->o:Ljava/lang/Boolean;

    .line 5834
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 5834
    add-int/2addr v0, v1

    .line 5836
    :cond_c
    iget-object v1, p0, Liwz;->p:Ljava/lang/Long;

    if-eqz v1, :cond_d

    .line 5837
    const/16 v1, 0xe

    iget-object v2, p0, Liwz;->p:Ljava/lang/Long;

    .line 5838
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5840
    :cond_d
    iget-object v1, p0, Liwz;->q:Ljava/lang/Long;

    if-eqz v1, :cond_e

    .line 5841
    const/16 v1, 0xf

    iget-object v2, p0, Liwz;->q:Ljava/lang/Long;

    .line 5842
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5844
    :cond_e
    iget-object v1, p0, Liwz;->k:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5845
    const/16 v1, 0x10

    iget-object v2, p0, Liwz;->k:Ljava/lang/String;

    .line 5846
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5848
    :cond_f
    iget-object v1, p0, Liwz;->l:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 5849
    const/16 v1, 0x11

    iget-object v2, p0, Liwz;->l:Ljava/lang/String;

    .line 5850
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5852
    :cond_10
    return v0
.end method
