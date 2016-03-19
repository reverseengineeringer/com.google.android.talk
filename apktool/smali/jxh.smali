.class public final Ljxh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkcd;

.field public b:[Ljzo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7707
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8712
    iput-object v1, p0, Ljxh;->a:Lkcd;

    .line 8713
    invoke-static {}, Ljzo;->d()[Ljzo;

    move-result-object v0

    iput-object v0, p0, Ljxh;->b:[Ljzo;

    .line 8714
    iput-object v1, p0, Ljxh;->eD:Llyd;

    .line 8715
    const/4 v0, -0x1

    iput v0, p0, Ljxh;->eE:I

    .line 7709
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8760
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8761
    sparse-switch v0, :sswitch_data_0

    .line 8765
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8766
    :sswitch_0
    return-object p0

    .line 8771
    :sswitch_1
    const/16 v0, 0x12

    .line 8772
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8773
    iget-object v0, p0, Ljxh;->b:[Ljzo;

    if-nez v0, :cond_2

    move v0, v1

    .line 8774
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzo;

    .line 8776
    if-eqz v0, :cond_1

    .line 8777
    iget-object v3, p0, Ljxh;->b:[Ljzo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8779
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 8780
    new-instance v3, Ljzo;

    invoke-direct {v3}, Ljzo;-><init>()V

    aput-object v3, v2, v0

    .line 8781
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8782
    invoke-virtual {p1}, Llxy;->a()I

    .line 8779
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8773
    :cond_2
    iget-object v0, p0, Ljxh;->b:[Ljzo;

    array-length v0, v0

    goto :goto_1

    .line 8785
    :cond_3
    new-instance v3, Ljzo;

    invoke-direct {v3}, Ljzo;-><init>()V

    aput-object v3, v2, v0

    .line 8786
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8787
    iput-object v2, p0, Ljxh;->b:[Ljzo;

    goto :goto_0

    .line 8791
    :sswitch_2
    iget-object v0, p0, Ljxh;->a:Lkcd;

    if-nez v0, :cond_4

    .line 8792
    new-instance v0, Lkcd;

    invoke-direct {v0}, Lkcd;-><init>()V

    iput-object v0, p0, Ljxh;->a:Lkcd;

    .line 8794
    :cond_4
    iget-object v0, p0, Ljxh;->a:Lkcd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8761
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 7722
    iget-object v0, p0, Ljxh;->b:[Ljzo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxh;->b:[Ljzo;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 7723
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljxh;->b:[Ljzo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 7724
    iget-object v1, p0, Ljxh;->b:[Ljzo;

    aget-object v1, v1, v0

    .line 7725
    if-eqz v1, :cond_0

    .line 7726
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 7723
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7730
    :cond_1
    iget-object v0, p0, Ljxh;->a:Lkcd;

    if-eqz v0, :cond_2

    .line 7731
    const/4 v0, 0x3

    iget-object v1, p0, Ljxh;->a:Lkcd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7733
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7734
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 7738
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 7739
    iget-object v0, p0, Ljxh;->b:[Ljzo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxh;->b:[Ljzo;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 7740
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljxh;->b:[Ljzo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 7741
    iget-object v2, p0, Ljxh;->b:[Ljzo;

    aget-object v2, v2, v0

    .line 7742
    if-eqz v2, :cond_0

    .line 7743
    const/4 v3, 0x2

    .line 7744
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7740
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7748
    :cond_1
    iget-object v0, p0, Ljxh;->a:Lkcd;

    if-eqz v0, :cond_2

    .line 7749
    const/4 v0, 0x3

    iget-object v2, p0, Ljxh;->a:Lkcd;

    .line 7750
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 7752
    :cond_2
    return v1
.end method
