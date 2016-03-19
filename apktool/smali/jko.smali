.class public final Ljko;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljko;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8533
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9538
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljko;->a:[I

    .line 9539
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljko;->b:[I

    .line 9540
    iput-object v1, p0, Ljko;->c:Ljava/lang/Boolean;

    .line 9541
    iput-object v1, p0, Ljko;->d:Ljava/lang/Boolean;

    .line 9542
    iput-object v1, p0, Ljko;->eD:Llyd;

    .line 9543
    const/4 v0, -0x1

    iput v0, p0, Ljko;->eE:I

    .line 8535
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 11608
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11609
    sparse-switch v0, :sswitch_data_0

    .line 11613
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11614
    :sswitch_0
    return-object p0

    .line 11619
    :sswitch_1
    const/16 v0, 0x8

    .line 11620
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 11621
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 11623
    :goto_1
    if-ge v3, v4, :cond_2

    .line 11624
    if-eqz v3, :cond_1

    .line 11625
    invoke-virtual {p1}, Llxy;->a()I

    .line 11627
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 11628
    sparse-switch v6, :sswitch_data_1

    move v0, v1

    .line 11623
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 11642
    :sswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 11646
    :cond_2
    if-eqz v1, :cond_0

    .line 11647
    iget-object v0, p0, Ljko;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 11648
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 11649
    iput-object v5, p0, Ljko;->a:[I

    goto :goto_0

    .line 11647
    :cond_3
    iget-object v0, p0, Ljko;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 11651
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 11652
    if-eqz v0, :cond_5

    .line 11653
    iget-object v4, p0, Ljko;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11655
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11656
    iput-object v3, p0, Ljko;->a:[I

    goto :goto_0

    .line 11662
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 11663
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 11666
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 11667
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 11668
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_4

    .line 11682
    :sswitch_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 11686
    :cond_6
    if-eqz v0, :cond_a

    .line 11687
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 11688
    iget-object v1, p0, Ljko;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 11689
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 11690
    if-eqz v1, :cond_7

    .line 11691
    iget-object v0, p0, Ljko;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11693
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 11694
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 11695
    sparse-switch v5, :sswitch_data_3

    goto :goto_6

    .line 11709
    :sswitch_5
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 11688
    :cond_8
    iget-object v1, p0, Ljko;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 11713
    :cond_9
    iput-object v4, p0, Ljko;->a:[I

    .line 11715
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 11719
    :sswitch_6
    const/16 v0, 0x10

    .line 11720
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 11721
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 11723
    :goto_7
    if-ge v3, v4, :cond_c

    .line 11724
    if-eqz v3, :cond_b

    .line 11725
    invoke-virtual {p1}, Llxy;->a()I

    .line 11727
    :cond_b
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 11728
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 11723
    :goto_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_7

    .line 11803
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_8

    .line 11807
    :cond_c
    if-eqz v1, :cond_0

    .line 11808
    iget-object v0, p0, Ljko;->b:[I

    if-nez v0, :cond_d

    move v0, v2

    .line 11809
    :goto_9
    if-nez v0, :cond_e

    array-length v3, v5

    if-ne v1, v3, :cond_e

    .line 11810
    iput-object v5, p0, Ljko;->b:[I

    goto/16 :goto_0

    .line 11808
    :cond_d
    iget-object v0, p0, Ljko;->b:[I

    array-length v0, v0

    goto :goto_9

    .line 11812
    :cond_e
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 11813
    if-eqz v0, :cond_f

    .line 11814
    iget-object v4, p0, Ljko;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11816
    :cond_f
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11817
    iput-object v3, p0, Ljko;->b:[I

    goto/16 :goto_0

    .line 11823
    :sswitch_7
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 11824
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 11827
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 11828
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_10

    .line 11829
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_2
    goto :goto_a

    .line 11904
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 11908
    :cond_10
    if-eqz v0, :cond_14

    .line 11909
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 11910
    iget-object v1, p0, Ljko;->b:[I

    if-nez v1, :cond_12

    move v1, v2

    .line 11911
    :goto_b
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 11912
    if-eqz v1, :cond_11

    .line 11913
    iget-object v0, p0, Ljko;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11915
    :cond_11
    :goto_c
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_13

    .line 11916
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 11917
    packed-switch v5, :pswitch_data_2

    :pswitch_4
    goto :goto_c

    .line 11992
    :pswitch_5
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_c

    .line 11910
    :cond_12
    iget-object v1, p0, Ljko;->b:[I

    array-length v1, v1

    goto :goto_b

    .line 11996
    :cond_13
    iput-object v4, p0, Ljko;->b:[I

    .line 11998
    :cond_14
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 12002
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljko;->c:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 12006
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljko;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 11609
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_3
        0x10 -> :sswitch_6
        0x12 -> :sswitch_7
        0x18 -> :sswitch_8
        0x20 -> :sswitch_9
    .end sparse-switch

    .line 11628
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
    .end sparse-switch

    .line 11668
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_4
    .end sparse-switch

    .line 11695
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_5
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_5
    .end sparse-switch

    .line 11728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    .line 11829
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
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
        :pswitch_3
        :pswitch_3
        :pswitch_3
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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

    .line 11917
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8550
    iget-object v0, p0, Ljko;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljko;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 8551
    :goto_0
    iget-object v2, p0, Ljko;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 8552
    const/4 v2, 0x1

    iget-object v3, p0, Ljko;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 8551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8555
    :cond_0
    iget-object v0, p0, Ljko;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljko;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 8556
    :goto_1
    iget-object v0, p0, Ljko;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 8557
    const/4 v0, 0x2

    iget-object v2, p0, Ljko;->b:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 8556
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8560
    :cond_1
    iget-object v0, p0, Ljko;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 8561
    const/4 v0, 0x3

    iget-object v1, p0, Ljko;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 8563
    :cond_2
    iget-object v0, p0, Ljko;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 8564
    const/4 v0, 0x4

    iget-object v1, p0, Ljko;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 8566
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8567
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8571
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 8572
    iget-object v0, p0, Ljko;->a:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljko;->a:[I

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    move v2, v1

    .line 8574
    :goto_0
    iget-object v4, p0, Ljko;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 8575
    iget-object v4, p0, Ljko;->a:[I

    aget v4, v4, v0

    .line 8577
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 8574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8579
    :cond_0
    add-int v0, v3, v2

    .line 8580
    iget-object v2, p0, Ljko;->a:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 8582
    :goto_1
    iget-object v2, p0, Ljko;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljko;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 8584
    :goto_2
    iget-object v3, p0, Ljko;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 8585
    iget-object v3, p0, Ljko;->b:[I

    aget v3, v3, v1

    .line 8587
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 8584
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8589
    :cond_1
    add-int/2addr v0, v2

    .line 8590
    iget-object v1, p0, Ljko;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 8592
    :cond_2
    iget-object v1, p0, Ljko;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 8593
    const/4 v1, 0x3

    iget-object v2, p0, Ljko;->c:Ljava/lang/Boolean;

    .line 8594
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 8594
    add-int/2addr v0, v1

    .line 8596
    :cond_3
    iget-object v1, p0, Ljko;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 8597
    const/4 v1, 0x4

    iget-object v2, p0, Ljko;->d:Ljava/lang/Boolean;

    .line 8598
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 8598
    add-int/2addr v0, v1

    .line 8600
    :cond_4
    return v0

    :cond_5
    move v0, v3

    goto :goto_1
.end method
