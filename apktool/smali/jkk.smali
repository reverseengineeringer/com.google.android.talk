.class public final Ljkk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljkk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljkl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10630
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11635
    iput-object v1, p0, Ljkk;->a:Ljava/lang/String;

    .line 11636
    invoke-static {}, Ljkl;->d()[Ljkl;

    move-result-object v0

    iput-object v0, p0, Ljkk;->b:[Ljkl;

    .line 11637
    iput-object v1, p0, Ljkk;->eD:Llyd;

    .line 11638
    const/4 v0, -0x1

    iput v0, p0, Ljkk;->eE:I

    .line 10632
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 11683
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11684
    sparse-switch v0, :sswitch_data_0

    .line 11688
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11689
    :sswitch_0
    return-object p0

    .line 11694
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkk;->a:Ljava/lang/String;

    goto :goto_0

    .line 11698
    :sswitch_2
    const/16 v0, 0x12

    .line 11699
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 11700
    iget-object v0, p0, Ljkk;->b:[Ljkl;

    if-nez v0, :cond_2

    move v0, v1

    .line 11701
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljkl;

    .line 11703
    if-eqz v0, :cond_1

    .line 11704
    iget-object v3, p0, Ljkk;->b:[Ljkl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11706
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 11707
    new-instance v3, Ljkl;

    invoke-direct {v3}, Ljkl;-><init>()V

    aput-object v3, v2, v0

    .line 11708
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 11709
    invoke-virtual {p1}, Llxy;->a()I

    .line 11706
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11700
    :cond_2
    iget-object v0, p0, Ljkk;->b:[Ljkl;

    array-length v0, v0

    goto :goto_1

    .line 11712
    :cond_3
    new-instance v3, Ljkl;

    invoke-direct {v3}, Ljkl;-><init>()V

    aput-object v3, v2, v0

    .line 11713
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 11714
    iput-object v2, p0, Ljkk;->b:[Ljkl;

    goto :goto_0

    .line 11684
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
    .line 10645
    iget-object v0, p0, Ljkk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10646
    const/4 v0, 0x1

    iget-object v1, p0, Ljkk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10648
    :cond_0
    iget-object v0, p0, Ljkk;->b:[Ljkl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljkk;->b:[Ljkl;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 10649
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljkk;->b:[Ljkl;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 10650
    iget-object v1, p0, Ljkk;->b:[Ljkl;

    aget-object v1, v1, v0

    .line 10651
    if-eqz v1, :cond_1

    .line 10652
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 10649
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10656
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10657
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 10661
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10662
    iget-object v1, p0, Ljkk;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10663
    const/4 v1, 0x1

    iget-object v2, p0, Ljkk;->a:Ljava/lang/String;

    .line 10664
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10666
    :cond_0
    iget-object v1, p0, Ljkk;->b:[Ljkl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljkk;->b:[Ljkl;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 10667
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljkk;->b:[Ljkl;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 10668
    iget-object v2, p0, Ljkk;->b:[Ljkl;

    aget-object v2, v2, v0

    .line 10669
    if-eqz v2, :cond_1

    .line 10670
    const/4 v3, 0x2

    .line 10671
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 10667
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 10675
    :cond_3
    return v0
.end method
