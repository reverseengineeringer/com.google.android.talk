.class public final Ljgw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljgw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljgu;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Double;

.field public h:Ljgx;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:[Ljgt;

.field public m:Ljava/lang/Boolean;

.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/Integer;

.field public s:Ljava/lang/Integer;

.field public t:[Ljgv;

.field public u:Ljava/lang/Boolean;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 624
    invoke-direct {p0}, Llyb;-><init>()V

    .line 625
    iput-object v1, p0, Ljgw;->a:Ljava/lang/String;

    .line 626
    const/high16 v0, -0x80000000

    iput v0, p0, Ljgw;->b:I

    .line 627
    iput-object v1, p0, Ljgw;->c:Ljava/lang/String;

    .line 628
    iput-object v1, p0, Ljgw;->d:Ljgu;

    .line 629
    iput-object v1, p0, Ljgw;->e:Ljava/lang/String;

    .line 630
    iput-object v1, p0, Ljgw;->f:Ljava/lang/String;

    .line 631
    iput-object v1, p0, Ljgw;->g:Ljava/lang/Double;

    .line 632
    iput-object v1, p0, Ljgw;->h:Ljgx;

    .line 633
    iput-object v1, p0, Ljgw;->i:Ljava/lang/String;

    .line 634
    iput-object v1, p0, Ljgw;->j:Ljava/lang/String;

    .line 635
    iput-object v1, p0, Ljgw;->k:Ljava/lang/String;

    .line 636
    invoke-static {}, Ljgt;->d()[Ljgt;

    move-result-object v0

    iput-object v0, p0, Ljgw;->l:[Ljgt;

    .line 637
    iput-object v1, p0, Ljgw;->m:Ljava/lang/Boolean;

    .line 638
    iput-object v1, p0, Ljgw;->n:Ljava/lang/Boolean;

    .line 639
    iput-object v1, p0, Ljgw;->o:Ljava/lang/String;

    .line 640
    iput-object v1, p0, Ljgw;->p:Ljava/lang/String;

    .line 641
    iput-object v1, p0, Ljgw;->q:Ljava/lang/String;

    .line 642
    iput-object v1, p0, Ljgw;->r:Ljava/lang/Integer;

    .line 643
    iput-object v1, p0, Ljgw;->s:Ljava/lang/Integer;

    .line 644
    invoke-static {}, Ljgv;->d()[Ljgv;

    move-result-object v0

    iput-object v0, p0, Ljgw;->t:[Ljgv;

    .line 645
    iput-object v1, p0, Ljgw;->u:Ljava/lang/Boolean;

    .line 646
    iput-object v1, p0, Ljgw;->v:Ljava/lang/String;

    .line 647
    iput-object v1, p0, Ljgw;->w:Ljava/lang/Boolean;

    .line 648
    iput-object v1, p0, Ljgw;->eD:Llyd;

    .line 649
    const/4 v0, -0x1

    iput v0, p0, Ljgw;->eE:I

    .line 650
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4850
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4851
    sparse-switch v0, :sswitch_data_0

    .line 4855
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4856
    :sswitch_0
    return-object p0

    .line 4861
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->a:Ljava/lang/String;

    goto :goto_0

    .line 4865
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4866
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4876
    :pswitch_0
    iput v0, p0, Ljgw;->b:I

    goto :goto_0

    .line 4882
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->c:Ljava/lang/String;

    goto :goto_0

    .line 4886
    :sswitch_4
    iget-object v0, p0, Ljgw;->d:Ljgu;

    if-nez v0, :cond_1

    .line 4887
    new-instance v0, Ljgu;

    invoke-direct {v0}, Ljgu;-><init>()V

    iput-object v0, p0, Ljgw;->d:Ljgu;

    .line 4889
    :cond_1
    iget-object v0, p0, Ljgw;->d:Ljgu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4893
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->e:Ljava/lang/String;

    goto :goto_0

    .line 4897
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->f:Ljava/lang/String;

    goto :goto_0

    .line 4901
    :sswitch_7
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljgw;->g:Ljava/lang/Double;

    goto :goto_0

    .line 4905
    :sswitch_8
    iget-object v0, p0, Ljgw;->h:Ljgx;

    if-nez v0, :cond_2

    .line 4906
    new-instance v0, Ljgx;

    invoke-direct {v0}, Ljgx;-><init>()V

    iput-object v0, p0, Ljgw;->h:Ljgx;

    .line 4908
    :cond_2
    iget-object v0, p0, Ljgw;->h:Ljgx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4912
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->i:Ljava/lang/String;

    goto :goto_0

    .line 4916
    :sswitch_a
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->j:Ljava/lang/String;

    goto :goto_0

    .line 4920
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->k:Ljava/lang/String;

    goto :goto_0

    .line 4924
    :sswitch_c
    const/16 v0, 0x6a

    .line 4925
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4926
    iget-object v0, p0, Ljgw;->l:[Ljgt;

    if-nez v0, :cond_4

    move v0, v1

    .line 4927
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljgt;

    .line 4929
    if-eqz v0, :cond_3

    .line 4930
    iget-object v3, p0, Ljgw;->l:[Ljgt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4932
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 4933
    new-instance v3, Ljgt;

    invoke-direct {v3}, Ljgt;-><init>()V

    aput-object v3, v2, v0

    .line 4934
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4935
    invoke-virtual {p1}, Llxy;->a()I

    .line 4932
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4926
    :cond_4
    iget-object v0, p0, Ljgw;->l:[Ljgt;

    array-length v0, v0

    goto :goto_1

    .line 4938
    :cond_5
    new-instance v3, Ljgt;

    invoke-direct {v3}, Ljgt;-><init>()V

    aput-object v3, v2, v0

    .line 4939
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4940
    iput-object v2, p0, Ljgw;->l:[Ljgt;

    goto/16 :goto_0

    .line 4944
    :sswitch_d
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljgw;->m:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4948
    :sswitch_e
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->o:Ljava/lang/String;

    goto/16 :goto_0

    .line 4952
    :sswitch_f
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->p:Ljava/lang/String;

    goto/16 :goto_0

    .line 4956
    :sswitch_10
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljgw;->r:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4960
    :sswitch_11
    const/16 v0, 0x92

    .line 4961
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4962
    iget-object v0, p0, Ljgw;->t:[Ljgv;

    if-nez v0, :cond_7

    move v0, v1

    .line 4963
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljgv;

    .line 4965
    if-eqz v0, :cond_6

    .line 4966
    iget-object v3, p0, Ljgw;->t:[Ljgv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4968
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 4969
    new-instance v3, Ljgv;

    invoke-direct {v3}, Ljgv;-><init>()V

    aput-object v3, v2, v0

    .line 4970
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4971
    invoke-virtual {p1}, Llxy;->a()I

    .line 4968
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4962
    :cond_7
    iget-object v0, p0, Ljgw;->t:[Ljgv;

    array-length v0, v0

    goto :goto_3

    .line 4974
    :cond_8
    new-instance v3, Ljgv;

    invoke-direct {v3}, Ljgv;-><init>()V

    aput-object v3, v2, v0

    .line 4975
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4976
    iput-object v2, p0, Ljgw;->t:[Ljgv;

    goto/16 :goto_0

    .line 4980
    :sswitch_12
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljgw;->u:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4984
    :sswitch_13
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljgw;->s:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4988
    :sswitch_14
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljgw;->n:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4992
    :sswitch_15
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->q:Ljava/lang/String;

    goto/16 :goto_0

    .line 4996
    :sswitch_16
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgw;->v:Ljava/lang/String;

    goto/16 :goto_0

    .line 5000
    :sswitch_17
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljgw;->w:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4851
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x39 -> :sswitch_7
        0x42 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x70 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x92 -> :sswitch_11
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xa8 -> :sswitch_14
        0xb2 -> :sswitch_15
        0xba -> :sswitch_16
        0xc0 -> :sswitch_17
    .end sparse-switch

    .line 4866
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Ljgw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 656
    const/4 v0, 0x1

    iget-object v2, p0, Ljgw;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 658
    :cond_0
    iget v0, p0, Ljgw;->b:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    .line 659
    const/4 v0, 0x2

    iget v2, p0, Ljgw;->b:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 661
    :cond_1
    iget-object v0, p0, Ljgw;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 662
    const/4 v0, 0x3

    iget-object v2, p0, Ljgw;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 664
    :cond_2
    iget-object v0, p0, Ljgw;->d:Ljgu;

    if-eqz v0, :cond_3

    .line 665
    const/4 v0, 0x4

    iget-object v2, p0, Ljgw;->d:Ljgu;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 667
    :cond_3
    iget-object v0, p0, Ljgw;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 668
    const/4 v0, 0x5

    iget-object v2, p0, Ljgw;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 670
    :cond_4
    iget-object v0, p0, Ljgw;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 671
    const/4 v0, 0x6

    iget-object v2, p0, Ljgw;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 673
    :cond_5
    iget-object v0, p0, Ljgw;->g:Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 674
    const/4 v0, 0x7

    iget-object v2, p0, Ljgw;->g:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 676
    :cond_6
    iget-object v0, p0, Ljgw;->h:Ljgx;

    if-eqz v0, :cond_7

    .line 677
    const/16 v0, 0x8

    iget-object v2, p0, Ljgw;->h:Ljgx;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 679
    :cond_7
    iget-object v0, p0, Ljgw;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 680
    const/16 v0, 0xa

    iget-object v2, p0, Ljgw;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 682
    :cond_8
    iget-object v0, p0, Ljgw;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 683
    const/16 v0, 0xb

    iget-object v2, p0, Ljgw;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 685
    :cond_9
    iget-object v0, p0, Ljgw;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 686
    const/16 v0, 0xc

    iget-object v2, p0, Ljgw;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 688
    :cond_a
    iget-object v0, p0, Ljgw;->l:[Ljgt;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljgw;->l:[Ljgt;

    array-length v0, v0

    if-lez v0, :cond_c

    move v0, v1

    .line 689
    :goto_0
    iget-object v2, p0, Ljgw;->l:[Ljgt;

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 690
    iget-object v2, p0, Ljgw;->l:[Ljgt;

    aget-object v2, v2, v0

    .line 691
    if-eqz v2, :cond_b

    .line 692
    const/16 v3, 0xd

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 689
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_c
    iget-object v0, p0, Ljgw;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 697
    const/16 v0, 0xe

    iget-object v2, p0, Ljgw;->m:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 699
    :cond_d
    iget-object v0, p0, Ljgw;->o:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 700
    const/16 v0, 0xf

    iget-object v2, p0, Ljgw;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 702
    :cond_e
    iget-object v0, p0, Ljgw;->p:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 703
    const/16 v0, 0x10

    iget-object v2, p0, Ljgw;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 705
    :cond_f
    iget-object v0, p0, Ljgw;->r:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 706
    const/16 v0, 0x11

    iget-object v2, p0, Ljgw;->r:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 708
    :cond_10
    iget-object v0, p0, Ljgw;->t:[Ljgv;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljgw;->t:[Ljgv;

    array-length v0, v0

    if-lez v0, :cond_12

    .line 709
    :goto_1
    iget-object v0, p0, Ljgw;->t:[Ljgv;

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 710
    iget-object v0, p0, Ljgw;->t:[Ljgv;

    aget-object v0, v0, v1

    .line 711
    if-eqz v0, :cond_11

    .line 712
    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 709
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 716
    :cond_12
    iget-object v0, p0, Ljgw;->u:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 717
    const/16 v0, 0x13

    iget-object v1, p0, Ljgw;->u:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 719
    :cond_13
    iget-object v0, p0, Ljgw;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 720
    const/16 v0, 0x14

    iget-object v1, p0, Ljgw;->s:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 722
    :cond_14
    iget-object v0, p0, Ljgw;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 723
    const/16 v0, 0x15

    iget-object v1, p0, Ljgw;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 725
    :cond_15
    iget-object v0, p0, Ljgw;->q:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 726
    const/16 v0, 0x16

    iget-object v1, p0, Ljgw;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 728
    :cond_16
    iget-object v0, p0, Ljgw;->v:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 729
    const/16 v0, 0x17

    iget-object v1, p0, Ljgw;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 731
    :cond_17
    iget-object v0, p0, Ljgw;->w:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 732
    const/16 v0, 0x18

    iget-object v1, p0, Ljgw;->w:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 734
    :cond_18
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 735
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 739
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 740
    iget-object v2, p0, Ljgw;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 741
    const/4 v2, 0x1

    iget-object v3, p0, Ljgw;->a:Ljava/lang/String;

    .line 742
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 744
    :cond_0
    iget v2, p0, Ljgw;->b:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    .line 745
    const/4 v2, 0x2

    iget v3, p0, Ljgw;->b:I

    .line 746
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 748
    :cond_1
    iget-object v2, p0, Ljgw;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 749
    const/4 v2, 0x3

    iget-object v3, p0, Ljgw;->c:Ljava/lang/String;

    .line 750
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 752
    :cond_2
    iget-object v2, p0, Ljgw;->d:Ljgu;

    if-eqz v2, :cond_3

    .line 753
    const/4 v2, 0x4

    iget-object v3, p0, Ljgw;->d:Ljgu;

    .line 754
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 756
    :cond_3
    iget-object v2, p0, Ljgw;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 757
    const/4 v2, 0x5

    iget-object v3, p0, Ljgw;->e:Ljava/lang/String;

    .line 758
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 760
    :cond_4
    iget-object v2, p0, Ljgw;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 761
    const/4 v2, 0x6

    iget-object v3, p0, Ljgw;->f:Ljava/lang/String;

    .line 762
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 764
    :cond_5
    iget-object v2, p0, Ljgw;->g:Ljava/lang/Double;

    if-eqz v2, :cond_6

    .line 765
    const/4 v2, 0x7

    iget-object v3, p0, Ljgw;->g:Ljava/lang/Double;

    .line 766
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 1561
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    .line 766
    add-int/2addr v0, v2

    .line 768
    :cond_6
    iget-object v2, p0, Ljgw;->h:Ljgx;

    if-eqz v2, :cond_7

    .line 769
    const/16 v2, 0x8

    iget-object v3, p0, Ljgw;->h:Ljgx;

    .line 770
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 772
    :cond_7
    iget-object v2, p0, Ljgw;->i:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 773
    const/16 v2, 0xa

    iget-object v3, p0, Ljgw;->i:Ljava/lang/String;

    .line 774
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 776
    :cond_8
    iget-object v2, p0, Ljgw;->j:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 777
    const/16 v2, 0xb

    iget-object v3, p0, Ljgw;->j:Ljava/lang/String;

    .line 778
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 780
    :cond_9
    iget-object v2, p0, Ljgw;->k:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 781
    const/16 v2, 0xc

    iget-object v3, p0, Ljgw;->k:Ljava/lang/String;

    .line 782
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 784
    :cond_a
    iget-object v2, p0, Ljgw;->l:[Ljgt;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ljgw;->l:[Ljgt;

    array-length v2, v2

    if-lez v2, :cond_d

    move v2, v0

    move v0, v1

    .line 785
    :goto_0
    iget-object v3, p0, Ljgw;->l:[Ljgt;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    .line 786
    iget-object v3, p0, Ljgw;->l:[Ljgt;

    aget-object v3, v3, v0

    .line 787
    if-eqz v3, :cond_b

    .line 788
    const/16 v4, 0xd

    .line 789
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 785
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_c
    move v0, v2

    .line 793
    :cond_d
    iget-object v2, p0, Ljgw;->m:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    .line 794
    const/16 v2, 0xe

    iget-object v3, p0, Ljgw;->m:Ljava/lang/Boolean;

    .line 795
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 795
    add-int/2addr v0, v2

    .line 797
    :cond_e
    iget-object v2, p0, Ljgw;->o:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 798
    const/16 v2, 0xf

    iget-object v3, p0, Ljgw;->o:Ljava/lang/String;

    .line 799
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 801
    :cond_f
    iget-object v2, p0, Ljgw;->p:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 802
    const/16 v2, 0x10

    iget-object v3, p0, Ljgw;->p:Ljava/lang/String;

    .line 803
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 805
    :cond_10
    iget-object v2, p0, Ljgw;->r:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    .line 806
    const/16 v2, 0x11

    iget-object v3, p0, Ljgw;->r:Ljava/lang/Integer;

    .line 807
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 809
    :cond_11
    iget-object v2, p0, Ljgw;->t:[Ljgv;

    if-eqz v2, :cond_13

    iget-object v2, p0, Ljgw;->t:[Ljgv;

    array-length v2, v2

    if-lez v2, :cond_13

    .line 810
    :goto_1
    iget-object v2, p0, Ljgw;->t:[Ljgv;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 811
    iget-object v2, p0, Ljgw;->t:[Ljgv;

    aget-object v2, v2, v1

    .line 812
    if-eqz v2, :cond_12

    .line 813
    const/16 v3, 0x12

    .line 814
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 810
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 818
    :cond_13
    iget-object v1, p0, Ljgw;->u:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    .line 819
    const/16 v1, 0x13

    iget-object v2, p0, Ljgw;->u:Ljava/lang/Boolean;

    .line 820
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 820
    add-int/2addr v0, v1

    .line 822
    :cond_14
    iget-object v1, p0, Ljgw;->s:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 823
    const/16 v1, 0x14

    iget-object v2, p0, Ljgw;->s:Ljava/lang/Integer;

    .line 824
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 826
    :cond_15
    iget-object v1, p0, Ljgw;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_16

    .line 827
    const/16 v1, 0x15

    iget-object v2, p0, Ljgw;->n:Ljava/lang/Boolean;

    .line 828
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 828
    add-int/2addr v0, v1

    .line 830
    :cond_16
    iget-object v1, p0, Ljgw;->q:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 831
    const/16 v1, 0x16

    iget-object v2, p0, Ljgw;->q:Ljava/lang/String;

    .line 832
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 834
    :cond_17
    iget-object v1, p0, Ljgw;->v:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 835
    const/16 v1, 0x17

    iget-object v2, p0, Ljgw;->v:Ljava/lang/String;

    .line 836
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 838
    :cond_18
    iget-object v1, p0, Ljgw;->w:Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    .line 839
    const/16 v1, 0x18

    iget-object v2, p0, Ljgw;->w:Ljava/lang/Boolean;

    .line 840
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 840
    add-int/2addr v0, v1

    .line 842
    :cond_19
    return v0
.end method
