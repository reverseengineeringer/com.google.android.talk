.class public final Lkfr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcr;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29061
    invoke-direct {p0}, Llyb;-><init>()V

    .line 30066
    iput-object v1, p0, Lkfr;->responseHeader:Lkdp;

    .line 30067
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Lkfr;->a:[Lkcr;

    .line 30068
    iput-object v1, p0, Lkfr;->eD:Llyd;

    .line 30069
    const/4 v0, -0x1

    iput v0, p0, Lkfr;->eE:I

    .line 29063
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 30115
    sparse-switch v0, :sswitch_data_0

    .line 30119
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30120
    :sswitch_0
    return-object p0

    .line 30125
    :sswitch_1
    iget-object v0, p0, Lkfr;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 30126
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkfr;->responseHeader:Lkdp;

    .line 30128
    :cond_1
    iget-object v0, p0, Lkfr;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 30132
    :sswitch_2
    const/16 v0, 0x12

    .line 30133
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 30134
    iget-object v0, p0, Lkfr;->a:[Lkcr;

    if-nez v0, :cond_3

    move v0, v1

    .line 30135
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 30137
    if-eqz v0, :cond_2

    .line 30138
    iget-object v3, p0, Lkfr;->a:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30140
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 30141
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 30142
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 30143
    invoke-virtual {p1}, Llxy;->a()I

    .line 30140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 30134
    :cond_3
    iget-object v0, p0, Lkfr;->a:[Lkcr;

    array-length v0, v0

    goto :goto_1

    .line 30146
    :cond_4
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 30147
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 30148
    iput-object v2, p0, Lkfr;->a:[Lkcr;

    goto :goto_0

    .line 30115
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
    .line 29076
    iget-object v0, p0, Lkfr;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 29077
    const/4 v0, 0x1

    iget-object v1, p0, Lkfr;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 29079
    :cond_0
    iget-object v0, p0, Lkfr;->a:[Lkcr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkfr;->a:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 29080
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkfr;->a:[Lkcr;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 29081
    iget-object v1, p0, Lkfr;->a:[Lkcr;

    aget-object v1, v1, v0

    .line 29082
    if-eqz v1, :cond_1

    .line 29083
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 29080
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29087
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 29088
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 29092
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 29093
    iget-object v1, p0, Lkfr;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 29094
    const/4 v1, 0x1

    iget-object v2, p0, Lkfr;->responseHeader:Lkdp;

    .line 29095
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29097
    :cond_0
    iget-object v1, p0, Lkfr;->a:[Lkcr;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkfr;->a:[Lkcr;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 29098
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkfr;->a:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 29099
    iget-object v2, p0, Lkfr;->a:[Lkcr;

    aget-object v2, v2, v0

    .line 29100
    if-eqz v2, :cond_1

    .line 29101
    const/4 v3, 0x2

    .line 29102
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 29098
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 29106
    :cond_3
    return v0
.end method
