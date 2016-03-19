.class public final Lkfi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkfg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34790
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35795
    invoke-static {}, Lkfg;->d()[Lkfg;

    move-result-object v0

    iput-object v0, p0, Lkfi;->a:[Lkfg;

    .line 35796
    const/4 v0, 0x0

    iput-object v0, p0, Lkfi;->eD:Llyd;

    .line 35797
    const/4 v0, -0x1

    iput v0, p0, Lkfi;->eE:I

    .line 34792
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 35835
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 35836
    sparse-switch v0, :sswitch_data_0

    .line 35840
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35841
    :sswitch_0
    return-object p0

    .line 35846
    :sswitch_1
    const/16 v0, 0x12

    .line 35847
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 35848
    iget-object v0, p0, Lkfi;->a:[Lkfg;

    if-nez v0, :cond_2

    move v0, v1

    .line 35849
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkfg;

    .line 35851
    if-eqz v0, :cond_1

    .line 35852
    iget-object v3, p0, Lkfi;->a:[Lkfg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35854
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 35855
    new-instance v3, Lkfg;

    invoke-direct {v3}, Lkfg;-><init>()V

    aput-object v3, v2, v0

    .line 35856
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 35857
    invoke-virtual {p1}, Llxy;->a()I

    .line 35854
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 35848
    :cond_2
    iget-object v0, p0, Lkfi;->a:[Lkfg;

    array-length v0, v0

    goto :goto_1

    .line 35860
    :cond_3
    new-instance v3, Lkfg;

    invoke-direct {v3}, Lkfg;-><init>()V

    aput-object v3, v2, v0

    .line 35861
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 35862
    iput-object v2, p0, Lkfi;->a:[Lkfg;

    goto :goto_0

    .line 35836
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 34804
    iget-object v0, p0, Lkfi;->a:[Lkfg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkfi;->a:[Lkfg;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 34805
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkfi;->a:[Lkfg;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 34806
    iget-object v1, p0, Lkfi;->a:[Lkfg;

    aget-object v1, v1, v0

    .line 34807
    if-eqz v1, :cond_0

    .line 34808
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 34805
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34812
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 34813
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 34817
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 34818
    iget-object v0, p0, Lkfi;->a:[Lkfg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkfi;->a:[Lkfg;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 34819
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lkfi;->a:[Lkfg;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 34820
    iget-object v2, p0, Lkfi;->a:[Lkfg;

    aget-object v2, v2, v0

    .line 34821
    if-eqz v2, :cond_0

    .line 34822
    const/4 v3, 0x2

    .line 34823
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 34819
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34827
    :cond_1
    return v1
.end method
