.class public final Ljzx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljzz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3846
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4851
    invoke-static {}, Ljzz;->d()[Ljzz;

    move-result-object v0

    iput-object v0, p0, Ljzx;->a:[Ljzz;

    .line 4852
    const/4 v0, 0x0

    iput-object v0, p0, Ljzx;->eD:Llyd;

    .line 4853
    const/4 v0, -0x1

    iput v0, p0, Ljzx;->eE:I

    .line 3848
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4891
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4892
    sparse-switch v0, :sswitch_data_0

    .line 4896
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4897
    :sswitch_0
    return-object p0

    .line 4902
    :sswitch_1
    const/16 v0, 0xa

    .line 4903
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4904
    iget-object v0, p0, Ljzx;->a:[Ljzz;

    if-nez v0, :cond_2

    move v0, v1

    .line 4905
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzz;

    .line 4907
    if-eqz v0, :cond_1

    .line 4908
    iget-object v3, p0, Ljzx;->a:[Ljzz;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4910
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4911
    new-instance v3, Ljzz;

    invoke-direct {v3}, Ljzz;-><init>()V

    aput-object v3, v2, v0

    .line 4912
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4913
    invoke-virtual {p1}, Llxy;->a()I

    .line 4910
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4904
    :cond_2
    iget-object v0, p0, Ljzx;->a:[Ljzz;

    array-length v0, v0

    goto :goto_1

    .line 4916
    :cond_3
    new-instance v3, Ljzz;

    invoke-direct {v3}, Ljzz;-><init>()V

    aput-object v3, v2, v0

    .line 4917
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4918
    iput-object v2, p0, Ljzx;->a:[Ljzz;

    goto :goto_0

    .line 4892
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 3860
    iget-object v0, p0, Ljzx;->a:[Ljzz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljzx;->a:[Ljzz;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 3861
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljzx;->a:[Ljzz;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3862
    iget-object v1, p0, Ljzx;->a:[Ljzz;

    aget-object v1, v1, v0

    .line 3863
    if-eqz v1, :cond_0

    .line 3864
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 3861
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3868
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3869
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 3873
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 3874
    iget-object v0, p0, Ljzx;->a:[Ljzz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljzx;->a:[Ljzz;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 3875
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljzx;->a:[Ljzz;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 3876
    iget-object v2, p0, Ljzx;->a:[Ljzz;

    aget-object v2, v2, v0

    .line 3877
    if-eqz v2, :cond_0

    .line 3878
    const/4 v3, 0x1

    .line 3879
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3875
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3883
    :cond_1
    return v1
.end method
