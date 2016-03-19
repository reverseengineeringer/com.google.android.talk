.class public final Ljpv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljpw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3543
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4548
    iput-object v1, p0, Ljpv;->a:Ljava/lang/String;

    .line 4549
    invoke-static {}, Ljpw;->d()[Ljpw;

    move-result-object v0

    iput-object v0, p0, Ljpv;->b:[Ljpw;

    .line 4550
    iput-object v1, p0, Ljpv;->eD:Llyd;

    .line 4551
    const/4 v0, -0x1

    iput v0, p0, Ljpv;->eE:I

    .line 3545
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4596
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4597
    sparse-switch v0, :sswitch_data_0

    .line 4601
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4602
    :sswitch_0
    return-object p0

    .line 4607
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljpv;->a:Ljava/lang/String;

    goto :goto_0

    .line 4611
    :sswitch_2
    const/16 v0, 0x12

    .line 4612
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4613
    iget-object v0, p0, Ljpv;->b:[Ljpw;

    if-nez v0, :cond_2

    move v0, v1

    .line 4614
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljpw;

    .line 4616
    if-eqz v0, :cond_1

    .line 4617
    iget-object v3, p0, Ljpv;->b:[Ljpw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4619
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4620
    new-instance v3, Ljpw;

    invoke-direct {v3}, Ljpw;-><init>()V

    aput-object v3, v2, v0

    .line 4621
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4622
    invoke-virtual {p1}, Llxy;->a()I

    .line 4619
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4613
    :cond_2
    iget-object v0, p0, Ljpv;->b:[Ljpw;

    array-length v0, v0

    goto :goto_1

    .line 4625
    :cond_3
    new-instance v3, Ljpw;

    invoke-direct {v3}, Ljpw;-><init>()V

    aput-object v3, v2, v0

    .line 4626
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4627
    iput-object v2, p0, Ljpv;->b:[Ljpw;

    goto :goto_0

    .line 4597
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 3558
    iget-object v0, p0, Ljpv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3559
    const/4 v0, 0x1

    iget-object v1, p0, Ljpv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3561
    :cond_0
    iget-object v0, p0, Ljpv;->b:[Ljpw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljpv;->b:[Ljpw;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 3562
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljpv;->b:[Ljpw;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3563
    iget-object v1, p0, Ljpv;->b:[Ljpw;

    aget-object v1, v1, v0

    .line 3564
    if-eqz v1, :cond_1

    .line 3565
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 3562
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3569
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3570
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 3574
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3575
    iget-object v1, p0, Ljpv;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3576
    const/4 v1, 0x1

    iget-object v2, p0, Ljpv;->a:Ljava/lang/String;

    .line 3577
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3579
    :cond_0
    iget-object v1, p0, Ljpv;->b:[Ljpw;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljpv;->b:[Ljpw;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 3580
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljpv;->b:[Ljpw;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3581
    iget-object v2, p0, Ljpv;->b:[Ljpw;

    aget-object v2, v2, v0

    .line 3582
    if-eqz v2, :cond_1

    .line 3583
    const/4 v3, 0x2

    .line 3584
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3580
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3588
    :cond_3
    return v0
.end method
