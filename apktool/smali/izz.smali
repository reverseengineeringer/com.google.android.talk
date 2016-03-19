.class public final Lizz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lizz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:[I

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3632
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4637
    iput-object v1, p0, Lizz;->a:Ljava/lang/String;

    .line 4638
    iput-object v1, p0, Lizz;->b:Ljava/lang/Boolean;

    .line 4639
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lizz;->c:[I

    .line 4640
    iput-object v1, p0, Lizz;->d:Ljava/lang/Integer;

    .line 4641
    iput-object v1, p0, Lizz;->e:Ljava/lang/Integer;

    .line 4642
    iput-object v1, p0, Lizz;->f:Ljava/lang/Integer;

    .line 4643
    iput-object v1, p0, Lizz;->g:Ljava/lang/Integer;

    .line 4644
    iput-object v1, p0, Lizz;->h:Ljava/lang/String;

    .line 4645
    iput-object v1, p0, Lizz;->i:Ljava/lang/Boolean;

    .line 4646
    iput-object v1, p0, Lizz;->j:Ljava/lang/Boolean;

    .line 4647
    iput-object v1, p0, Lizz;->k:Ljava/lang/Boolean;

    .line 4648
    iput-object v1, p0, Lizz;->eD:Llyd;

    .line 4649
    const/4 v0, -0x1

    iput v0, p0, Lizz;->eE:I

    .line 3634
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 8755
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8756
    sparse-switch v0, :sswitch_data_0

    .line 8760
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8761
    :sswitch_0
    return-object p0

    .line 8766
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizz;->a:Ljava/lang/String;

    goto :goto_0

    .line 8770
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lizz;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 8774
    :sswitch_3
    const/16 v0, 0x18

    .line 8775
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 8776
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 8778
    :goto_1
    if-ge v3, v4, :cond_2

    .line 8779
    if-eqz v3, :cond_1

    .line 8780
    invoke-virtual {p1}, Llxy;->a()I

    .line 8782
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 8783
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 8778
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 8793
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 8797
    :cond_2
    if-eqz v1, :cond_0

    .line 8798
    iget-object v0, p0, Lizz;->c:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 8799
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 8800
    iput-object v5, p0, Lizz;->c:[I

    goto :goto_0

    .line 8798
    :cond_3
    iget-object v0, p0, Lizz;->c:[I

    array-length v0, v0

    goto :goto_3

    .line 8802
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 8803
    if-eqz v0, :cond_5

    .line 8804
    iget-object v4, p0, Lizz;->c:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8806
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8807
    iput-object v3, p0, Lizz;->c:[I

    goto :goto_0

    .line 8813
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 8814
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 8817
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 8818
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 8819
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 8829
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 8833
    :cond_6
    if-eqz v0, :cond_a

    .line 8834
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 8835
    iget-object v1, p0, Lizz;->c:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 8836
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 8837
    if-eqz v1, :cond_7

    .line 8838
    iget-object v0, p0, Lizz;->c:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8840
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 8841
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 8842
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 8852
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 8835
    :cond_8
    iget-object v1, p0, Lizz;->c:[I

    array-length v1, v1

    goto :goto_5

    .line 8856
    :cond_9
    iput-object v4, p0, Lizz;->c:[I

    .line 8858
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 8862
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lizz;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8866
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lizz;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8870
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lizz;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8874
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 8875
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 8880
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lizz;->g:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 8886
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizz;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 8890
    :sswitch_a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lizz;->i:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 8894
    :sswitch_b
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lizz;->j:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 8898
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lizz;->k:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 8756
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x28 -> :sswitch_6
        0x30 -> :sswitch_7
        0x38 -> :sswitch_8
        0x42 -> :sswitch_9
        0x48 -> :sswitch_a
        0x50 -> :sswitch_b
        0x58 -> :sswitch_c
    .end sparse-switch

    .line 8783
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 8819
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 8842
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 8875
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 3656
    iget-object v0, p0, Lizz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3657
    const/4 v0, 0x1

    iget-object v1, p0, Lizz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3659
    :cond_0
    iget-object v0, p0, Lizz;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 3660
    const/4 v0, 0x2

    iget-object v1, p0, Lizz;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3662
    :cond_1
    iget-object v0, p0, Lizz;->c:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lizz;->c:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 3663
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lizz;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3664
    const/4 v1, 0x3

    iget-object v2, p0, Lizz;->c:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 3663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3667
    :cond_2
    iget-object v0, p0, Lizz;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 3668
    const/4 v0, 0x4

    iget-object v1, p0, Lizz;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3670
    :cond_3
    iget-object v0, p0, Lizz;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 3671
    const/4 v0, 0x5

    iget-object v1, p0, Lizz;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3673
    :cond_4
    iget-object v0, p0, Lizz;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 3674
    const/4 v0, 0x6

    iget-object v1, p0, Lizz;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3676
    :cond_5
    iget-object v0, p0, Lizz;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 3677
    const/4 v0, 0x7

    iget-object v1, p0, Lizz;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3679
    :cond_6
    iget-object v0, p0, Lizz;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 3680
    const/16 v0, 0x8

    iget-object v1, p0, Lizz;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3682
    :cond_7
    iget-object v0, p0, Lizz;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 3683
    const/16 v0, 0x9

    iget-object v1, p0, Lizz;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3685
    :cond_8
    iget-object v0, p0, Lizz;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 3686
    const/16 v0, 0xa

    iget-object v1, p0, Lizz;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3688
    :cond_9
    iget-object v0, p0, Lizz;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 3689
    const/16 v0, 0xb

    iget-object v1, p0, Lizz;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3691
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3692
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3696
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3697
    iget-object v2, p0, Lizz;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3698
    const/4 v2, 0x1

    iget-object v3, p0, Lizz;->a:Ljava/lang/String;

    .line 3699
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3701
    :cond_0
    iget-object v2, p0, Lizz;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 3702
    const/4 v2, 0x2

    iget-object v3, p0, Lizz;->b:Ljava/lang/Boolean;

    .line 3703
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 3703
    add-int/2addr v0, v2

    .line 3705
    :cond_1
    iget-object v2, p0, Lizz;->c:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lizz;->c:[I

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    .line 3707
    :goto_0
    iget-object v3, p0, Lizz;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 3708
    iget-object v3, p0, Lizz;->c:[I

    aget v3, v3, v1

    .line 3710
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 3707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3712
    :cond_2
    add-int/2addr v0, v2

    .line 3713
    iget-object v1, p0, Lizz;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3715
    :cond_3
    iget-object v1, p0, Lizz;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 3716
    const/4 v1, 0x4

    iget-object v2, p0, Lizz;->d:Ljava/lang/Integer;

    .line 3717
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3719
    :cond_4
    iget-object v1, p0, Lizz;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 3720
    const/4 v1, 0x5

    iget-object v2, p0, Lizz;->e:Ljava/lang/Integer;

    .line 3721
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3723
    :cond_5
    iget-object v1, p0, Lizz;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 3724
    const/4 v1, 0x6

    iget-object v2, p0, Lizz;->f:Ljava/lang/Integer;

    .line 3725
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3727
    :cond_6
    iget-object v1, p0, Lizz;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 3728
    const/4 v1, 0x7

    iget-object v2, p0, Lizz;->g:Ljava/lang/Integer;

    .line 3729
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3731
    :cond_7
    iget-object v1, p0, Lizz;->h:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 3732
    const/16 v1, 0x8

    iget-object v2, p0, Lizz;->h:Ljava/lang/String;

    .line 3733
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3735
    :cond_8
    iget-object v1, p0, Lizz;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 3736
    const/16 v1, 0x9

    iget-object v2, p0, Lizz;->i:Ljava/lang/Boolean;

    .line 3737
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3737
    add-int/2addr v0, v1

    .line 3739
    :cond_9
    iget-object v1, p0, Lizz;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 3740
    const/16 v1, 0xa

    iget-object v2, p0, Lizz;->j:Ljava/lang/Boolean;

    .line 3741
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3741
    add-int/2addr v0, v1

    .line 3743
    :cond_a
    iget-object v1, p0, Lizz;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 3744
    const/16 v1, 0xb

    iget-object v2, p0, Lizz;->k:Ljava/lang/Boolean;

    .line 3745
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3745
    add-int/2addr v0, v1

    .line 3747
    :cond_b
    return v0
.end method
