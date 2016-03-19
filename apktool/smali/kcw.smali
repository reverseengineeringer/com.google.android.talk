.class public final Lkcw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17701
    invoke-direct {p0}, Llyb;-><init>()V

    .line 18706
    iput-object v1, p0, Lkcw;->a:Ljava/lang/Integer;

    .line 18707
    iput-object v1, p0, Lkcw;->b:Ljava/lang/String;

    .line 18708
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkcw;->c:[I

    .line 18709
    iput-object v1, p0, Lkcw;->eD:Llyd;

    .line 18710
    const/4 v0, -0x1

    iput v0, p0, Lkcw;->eE:I

    .line 17703
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 18760
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 18761
    sparse-switch v0, :sswitch_data_0

    .line 18765
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18766
    :sswitch_0
    return-object p0

    .line 18771
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 18772
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 18777
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcw;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 18783
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkcw;->b:Ljava/lang/String;

    goto :goto_0

    .line 18787
    :sswitch_3
    const/16 v0, 0x18

    .line 18788
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 18789
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 18791
    :goto_1
    if-ge v3, v4, :cond_2

    .line 18792
    if-eqz v3, :cond_1

    .line 18793
    invoke-virtual {p1}, Llxy;->a()I

    .line 18795
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 18796
    packed-switch v6, :pswitch_data_1

    move v0, v1

    .line 18791
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 18807
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 18811
    :cond_2
    if-eqz v1, :cond_0

    .line 18812
    iget-object v0, p0, Lkcw;->c:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 18813
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 18814
    iput-object v5, p0, Lkcw;->c:[I

    goto :goto_0

    .line 18812
    :cond_3
    iget-object v0, p0, Lkcw;->c:[I

    array-length v0, v0

    goto :goto_3

    .line 18816
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 18817
    if-eqz v0, :cond_5

    .line 18818
    iget-object v4, p0, Lkcw;->c:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18820
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18821
    iput-object v3, p0, Lkcw;->c:[I

    goto :goto_0

    .line 18827
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 18828
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 18831
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 18832
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 18833
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_4

    .line 18844
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 18848
    :cond_6
    if-eqz v0, :cond_a

    .line 18849
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 18850
    iget-object v1, p0, Lkcw;->c:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 18851
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 18852
    if-eqz v1, :cond_7

    .line 18853
    iget-object v0, p0, Lkcw;->c:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18855
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 18856
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 18857
    packed-switch v5, :pswitch_data_3

    goto :goto_6

    .line 18868
    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 18850
    :cond_8
    iget-object v1, p0, Lkcw;->c:[I

    array-length v1, v1

    goto :goto_5

    .line 18872
    :cond_9
    iput-object v4, p0, Lkcw;->c:[I

    .line 18874
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 18761
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch

    .line 18772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 18796
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
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

    .line 18833
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
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

    .line 18857
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 17717
    iget-object v0, p0, Lkcw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 17718
    const/4 v0, 0x1

    iget-object v1, p0, Lkcw;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 17720
    :cond_0
    iget-object v0, p0, Lkcw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 17721
    const/4 v0, 0x2

    iget-object v1, p0, Lkcw;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 17723
    :cond_1
    iget-object v0, p0, Lkcw;->c:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkcw;->c:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 17724
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkcw;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 17725
    const/4 v1, 0x3

    iget-object v2, p0, Lkcw;->c:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 17724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17728
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 17729
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 17733
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 17734
    iget-object v2, p0, Lkcw;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 17735
    const/4 v2, 0x1

    iget-object v3, p0, Lkcw;->a:Ljava/lang/Integer;

    .line 17736
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 17738
    :cond_0
    iget-object v2, p0, Lkcw;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 17739
    const/4 v2, 0x2

    iget-object v3, p0, Lkcw;->b:Ljava/lang/String;

    .line 17740
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17742
    :cond_1
    iget-object v2, p0, Lkcw;->c:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkcw;->c:[I

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    .line 17744
    :goto_0
    iget-object v3, p0, Lkcw;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 17745
    iget-object v3, p0, Lkcw;->c:[I

    aget v3, v3, v1

    .line 17747
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 17744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17749
    :cond_2
    add-int/2addr v0, v2

    .line 17750
    iget-object v1, p0, Lkcw;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 17752
    :cond_3
    return v0
.end method
