.class public final Ljbl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1711
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2716
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljbl;->a:[I

    .line 2717
    const/4 v0, 0x0

    iput-object v0, p0, Ljbl;->eD:Llyd;

    .line 2718
    const/4 v0, -0x1

    iput v0, p0, Ljbl;->eE:I

    .line 1713
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2754
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2755
    sparse-switch v0, :sswitch_data_0

    .line 2759
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2760
    :sswitch_0
    return-object p0

    .line 2765
    :sswitch_1
    const/16 v0, 0x8

    .line 2766
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 2767
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 2769
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2770
    if-eqz v3, :cond_1

    .line 2771
    invoke-virtual {p1}, Llxy;->a()I

    .line 2773
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2774
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 2769
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 2785
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 2789
    :cond_2
    if-eqz v1, :cond_0

    .line 2790
    iget-object v0, p0, Ljbl;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 2791
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 2792
    iput-object v5, p0, Ljbl;->a:[I

    goto :goto_0

    .line 2790
    :cond_3
    iget-object v0, p0, Ljbl;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 2794
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 2795
    if-eqz v0, :cond_5

    .line 2796
    iget-object v4, p0, Ljbl;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2798
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2799
    iput-object v3, p0, Ljbl;->a:[I

    goto :goto_0

    .line 2805
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2806
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2809
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 2810
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 2811
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 2822
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2826
    :cond_6
    if-eqz v0, :cond_a

    .line 2827
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 2828
    iget-object v1, p0, Ljbl;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 2829
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 2830
    if-eqz v1, :cond_7

    .line 2831
    iget-object v0, p0, Ljbl;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2833
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 2834
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 2835
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 2846
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 2828
    :cond_8
    iget-object v1, p0, Ljbl;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 2850
    :cond_9
    iput-object v4, p0, Ljbl;->a:[I

    .line 2852
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2755
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch

    .line 2774
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
        :pswitch_0
    .end packed-switch

    .line 2811
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

    .line 2835
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
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1725
    iget-object v0, p0, Ljbl;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljbl;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1726
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljbl;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1727
    const/4 v1, 0x1

    iget-object v2, p0, Ljbl;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 1726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1730
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1731
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1735
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 1736
    iget-object v1, p0, Ljbl;->a:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljbl;->a:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v0

    .line 1738
    :goto_0
    iget-object v3, p0, Ljbl;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1739
    iget-object v3, p0, Ljbl;->a:[I

    aget v3, v3, v0

    .line 1741
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1743
    :cond_0
    add-int v0, v2, v1

    .line 1744
    iget-object v1, p0, Ljbl;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1746
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
