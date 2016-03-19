.class public final Liuz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liuz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 653
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1658
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Liuz;->a:[I

    .line 1659
    sget-object v0, Llyo;->b:[J

    iput-object v0, p0, Liuz;->b:[J

    .line 1660
    const/4 v0, 0x0

    iput-object v0, p0, Liuz;->eD:Llyd;

    .line 1661
    const/4 v0, -0x1

    iput v0, p0, Liuz;->eE:I

    .line 655
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2713
    sparse-switch v0, :sswitch_data_0

    .line 2717
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2718
    :sswitch_0
    return-object p0

    .line 2723
    :sswitch_1
    const/16 v0, 0x8

    .line 2724
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 2725
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 2727
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2728
    if-eqz v3, :cond_1

    .line 2729
    invoke-virtual {p1}, Llxy;->a()I

    .line 2731
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2732
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 2727
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 2735
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 2739
    :cond_2
    if-eqz v1, :cond_0

    .line 2740
    iget-object v0, p0, Liuz;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 2741
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 2742
    iput-object v5, p0, Liuz;->a:[I

    goto :goto_0

    .line 2740
    :cond_3
    iget-object v0, p0, Liuz;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 2744
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 2745
    if-eqz v0, :cond_5

    .line 2746
    iget-object v4, p0, Liuz;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2748
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2749
    iput-object v3, p0, Liuz;->a:[I

    goto :goto_0

    .line 2755
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2756
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2759
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 2760
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 2761
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 2764
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2768
    :cond_6
    if-eqz v0, :cond_a

    .line 2769
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 2770
    iget-object v1, p0, Liuz;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 2771
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 2772
    if-eqz v1, :cond_7

    .line 2773
    iget-object v0, p0, Liuz;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2775
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 2776
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 2777
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 2780
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 2770
    :cond_8
    iget-object v1, p0, Liuz;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 2784
    :cond_9
    iput-object v4, p0, Liuz;->a:[I

    .line 2786
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2790
    :sswitch_3
    const/16 v0, 0x10

    .line 2791
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v1

    .line 2792
    iget-object v0, p0, Liuz;->b:[J

    if-nez v0, :cond_c

    move v0, v2

    .line 2793
    :goto_7
    add-int/2addr v1, v0

    new-array v1, v1, [J

    .line 2794
    if-eqz v0, :cond_b

    .line 2795
    iget-object v3, p0, Liuz;->b:[J

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2797
    :cond_b
    :goto_8
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 2798
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 2799
    invoke-virtual {p1}, Llxy;->a()I

    .line 2797
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2792
    :cond_c
    iget-object v0, p0, Liuz;->b:[J

    array-length v0, v0

    goto :goto_7

    .line 2802
    :cond_d
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 2803
    iput-object v1, p0, Liuz;->b:[J

    goto/16 :goto_0

    .line 2807
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2808
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2811
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 2812
    :goto_9
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_e

    .line 2813
    invoke-virtual {p1}, Llxy;->e()J

    .line 2814
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2816
    :cond_e
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 2817
    iget-object v1, p0, Liuz;->b:[J

    if-nez v1, :cond_10

    move v1, v2

    .line 2818
    :goto_a
    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 2819
    if-eqz v1, :cond_f

    .line 2820
    iget-object v4, p0, Liuz;->b:[J

    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2822
    :cond_f
    :goto_b
    array-length v4, v0

    if-ge v1, v4, :cond_11

    .line 2823
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 2822
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2817
    :cond_10
    iget-object v1, p0, Liuz;->b:[J

    array-length v1, v1

    goto :goto_a

    .line 2825
    :cond_11
    iput-object v0, p0, Liuz;->b:[J

    .line 2826
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2713
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch

    .line 2732
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2761
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2777
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 668
    iget-object v0, p0, Liuz;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Liuz;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 669
    :goto_0
    iget-object v2, p0, Liuz;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 670
    const/4 v2, 0x1

    iget-object v3, p0, Liuz;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_0
    iget-object v0, p0, Liuz;->b:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Liuz;->b:[J

    array-length v0, v0

    if-lez v0, :cond_1

    .line 674
    :goto_1
    iget-object v0, p0, Liuz;->b:[J

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 675
    const/4 v0, 0x2

    iget-object v2, p0, Liuz;->b:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 678
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 679
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 683
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 684
    iget-object v0, p0, Liuz;->a:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Liuz;->a:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    move v2, v1

    .line 686
    :goto_0
    iget-object v4, p0, Liuz;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 687
    iget-object v4, p0, Liuz;->a:[I

    aget v4, v4, v0

    .line 689
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_0
    add-int v0, v3, v2

    .line 692
    iget-object v2, p0, Liuz;->a:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 694
    :goto_1
    iget-object v2, p0, Liuz;->b:[J

    if-eqz v2, :cond_2

    iget-object v2, p0, Liuz;->b:[J

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 696
    :goto_2
    iget-object v3, p0, Liuz;->b:[J

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 697
    iget-object v3, p0, Liuz;->b:[J

    aget-wide v4, v3, v1

    .line 1765
    invoke-static {v4, v5}, Llxz;->b(J)I

    move-result v3

    .line 699
    add-int/2addr v2, v3

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 701
    :cond_1
    add-int/2addr v0, v2

    .line 702
    iget-object v1, p0, Liuz;->b:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 704
    :cond_2
    return v0

    :cond_3
    move v0, v3

    goto :goto_1
.end method
