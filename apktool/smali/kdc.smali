.class public final Lkdc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcy;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18714
    invoke-direct {p0}, Llyb;-><init>()V

    .line 19719
    iput-object v1, p0, Lkdc;->responseHeader:Lkdp;

    .line 19720
    invoke-static {}, Lkcy;->d()[Lkcy;

    move-result-object v0

    iput-object v0, p0, Lkdc;->a:[Lkcy;

    .line 19721
    iput-object v1, p0, Lkdc;->eD:Llyd;

    .line 19722
    const/4 v0, -0x1

    iput v0, p0, Lkdc;->eE:I

    .line 18716
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 19767
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 19768
    sparse-switch v0, :sswitch_data_0

    .line 19772
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19773
    :sswitch_0
    return-object p0

    .line 19778
    :sswitch_1
    iget-object v0, p0, Lkdc;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 19779
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkdc;->responseHeader:Lkdp;

    .line 19781
    :cond_1
    iget-object v0, p0, Lkdc;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 19785
    :sswitch_2
    const/16 v0, 0x12

    .line 19786
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 19787
    iget-object v0, p0, Lkdc;->a:[Lkcy;

    if-nez v0, :cond_3

    move v0, v1

    .line 19788
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcy;

    .line 19790
    if-eqz v0, :cond_2

    .line 19791
    iget-object v3, p0, Lkdc;->a:[Lkcy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19793
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 19794
    new-instance v3, Lkcy;

    invoke-direct {v3}, Lkcy;-><init>()V

    aput-object v3, v2, v0

    .line 19795
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 19796
    invoke-virtual {p1}, Llxy;->a()I

    .line 19793
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19787
    :cond_3
    iget-object v0, p0, Lkdc;->a:[Lkcy;

    array-length v0, v0

    goto :goto_1

    .line 19799
    :cond_4
    new-instance v3, Lkcy;

    invoke-direct {v3}, Lkcy;-><init>()V

    aput-object v3, v2, v0

    .line 19800
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 19801
    iput-object v2, p0, Lkdc;->a:[Lkcy;

    goto :goto_0

    .line 19768
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
    .line 18729
    iget-object v0, p0, Lkdc;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 18730
    const/4 v0, 0x1

    iget-object v1, p0, Lkdc;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 18732
    :cond_0
    iget-object v0, p0, Lkdc;->a:[Lkcy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkdc;->a:[Lkcy;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 18733
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkdc;->a:[Lkcy;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 18734
    iget-object v1, p0, Lkdc;->a:[Lkcy;

    aget-object v1, v1, v0

    .line 18735
    if-eqz v1, :cond_1

    .line 18736
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 18733
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18740
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 18741
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 18745
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 18746
    iget-object v1, p0, Lkdc;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 18747
    const/4 v1, 0x1

    iget-object v2, p0, Lkdc;->responseHeader:Lkdp;

    .line 18748
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18750
    :cond_0
    iget-object v1, p0, Lkdc;->a:[Lkcy;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkdc;->a:[Lkcy;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 18751
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkdc;->a:[Lkcy;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 18752
    iget-object v2, p0, Lkdc;->a:[Lkcy;

    aget-object v2, v2, v0

    .line 18753
    if-eqz v2, :cond_1

    .line 18754
    const/4 v3, 0x2

    .line 18755
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 18751
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 18759
    :cond_3
    return v0
.end method
