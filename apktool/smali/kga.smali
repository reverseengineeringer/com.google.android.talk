.class public final Lkga;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkga;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkfx;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34043
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35048
    iput-object v1, p0, Lkga;->responseHeader:Lkdp;

    .line 35049
    invoke-static {}, Lkfx;->d()[Lkfx;

    move-result-object v0

    iput-object v0, p0, Lkga;->a:[Lkfx;

    .line 35050
    iput-object v1, p0, Lkga;->eD:Llyd;

    .line 35051
    const/4 v0, -0x1

    iput v0, p0, Lkga;->eE:I

    .line 34045
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 35096
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 35097
    sparse-switch v0, :sswitch_data_0

    .line 35101
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35102
    :sswitch_0
    return-object p0

    .line 35107
    :sswitch_1
    iget-object v0, p0, Lkga;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 35108
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkga;->responseHeader:Lkdp;

    .line 35110
    :cond_1
    iget-object v0, p0, Lkga;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 35114
    :sswitch_2
    const/16 v0, 0x12

    .line 35115
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 35116
    iget-object v0, p0, Lkga;->a:[Lkfx;

    if-nez v0, :cond_3

    move v0, v1

    .line 35117
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkfx;

    .line 35119
    if-eqz v0, :cond_2

    .line 35120
    iget-object v3, p0, Lkga;->a:[Lkfx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35122
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 35123
    new-instance v3, Lkfx;

    invoke-direct {v3}, Lkfx;-><init>()V

    aput-object v3, v2, v0

    .line 35124
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 35125
    invoke-virtual {p1}, Llxy;->a()I

    .line 35122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 35116
    :cond_3
    iget-object v0, p0, Lkga;->a:[Lkfx;

    array-length v0, v0

    goto :goto_1

    .line 35128
    :cond_4
    new-instance v3, Lkfx;

    invoke-direct {v3}, Lkfx;-><init>()V

    aput-object v3, v2, v0

    .line 35129
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 35130
    iput-object v2, p0, Lkga;->a:[Lkfx;

    goto :goto_0

    .line 35097
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
    .line 34058
    iget-object v0, p0, Lkga;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 34059
    const/4 v0, 0x1

    iget-object v1, p0, Lkga;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 34061
    :cond_0
    iget-object v0, p0, Lkga;->a:[Lkfx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkga;->a:[Lkfx;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 34062
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkga;->a:[Lkfx;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 34063
    iget-object v1, p0, Lkga;->a:[Lkfx;

    aget-object v1, v1, v0

    .line 34064
    if-eqz v1, :cond_1

    .line 34065
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 34062
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34069
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 34070
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 34074
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 34075
    iget-object v1, p0, Lkga;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 34076
    const/4 v1, 0x1

    iget-object v2, p0, Lkga;->responseHeader:Lkdp;

    .line 34077
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34079
    :cond_0
    iget-object v1, p0, Lkga;->a:[Lkfx;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkga;->a:[Lkfx;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 34080
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkga;->a:[Lkfx;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 34081
    iget-object v2, p0, Lkga;->a:[Lkfx;

    aget-object v2, v2, v0

    .line 34082
    if-eqz v2, :cond_1

    .line 34083
    const/4 v3, 0x2

    .line 34084
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 34080
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 34088
    :cond_3
    return v0
.end method
