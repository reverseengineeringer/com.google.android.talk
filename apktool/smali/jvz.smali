.class public final Ljvz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljava/lang/String;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3605
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4610
    iput-object v1, p0, Ljvz;->a:Ljava/lang/Integer;

    .line 4611
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljvz;->b:[Ljava/lang/String;

    .line 4612
    iput-object v1, p0, Ljvz;->c:Ljava/lang/Integer;

    .line 4613
    iput-object v1, p0, Ljvz;->eD:Llyd;

    .line 4614
    const/4 v0, -0x1

    iput v0, p0, Ljvz;->eE:I

    .line 3607
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4671
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4672
    sparse-switch v0, :sswitch_data_0

    .line 4676
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4677
    :sswitch_0
    return-object p0

    .line 4682
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4683
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4691
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvz;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4697
    :sswitch_2
    const/16 v0, 0x12

    .line 4698
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4699
    iget-object v0, p0, Ljvz;->b:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 4700
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 4701
    if-eqz v0, :cond_1

    .line 4702
    iget-object v3, p0, Ljvz;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4704
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4705
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4706
    invoke-virtual {p1}, Llxy;->a()I

    .line 4704
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4699
    :cond_2
    iget-object v0, p0, Ljvz;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 4709
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4710
    iput-object v2, p0, Ljvz;->b:[Ljava/lang/String;

    goto :goto_0

    .line 4714
    :sswitch_3
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvz;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4672
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 4683
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 3

    .prologue
    .line 3621
    iget-object v0, p0, Ljvz;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3622
    const/4 v0, 0x1

    iget-object v1, p0, Ljvz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3624
    :cond_0
    iget-object v0, p0, Ljvz;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljvz;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 3625
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljvz;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3626
    iget-object v1, p0, Ljvz;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 3627
    if-eqz v1, :cond_1

    .line 3628
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3625
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3632
    :cond_2
    iget-object v0, p0, Ljvz;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 3633
    const/4 v0, 0x3

    iget-object v1, p0, Ljvz;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 3635
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3636
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3640
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3641
    iget-object v2, p0, Ljvz;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 3642
    const/4 v2, 0x1

    iget-object v3, p0, Ljvz;->a:Ljava/lang/Integer;

    .line 3643
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3645
    :cond_0
    iget-object v2, p0, Ljvz;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljvz;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 3648
    :goto_0
    iget-object v4, p0, Ljvz;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 3649
    iget-object v4, p0, Ljvz;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 3650
    if-eqz v4, :cond_1

    .line 3651
    add-int/lit8 v3, v3, 0x1

    .line 3653
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3648
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3656
    :cond_2
    add-int/2addr v0, v2

    .line 3657
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 3659
    :cond_3
    iget-object v1, p0, Ljvz;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 3660
    const/4 v1, 0x3

    iget-object v2, p0, Ljvz;->c:Ljava/lang/Integer;

    .line 3661
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3663
    :cond_4
    return v0
.end method
