.class public final Lkbw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcm;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39312
    invoke-direct {p0}, Llyb;-><init>()V

    .line 40317
    iput-object v1, p0, Lkbw;->responseHeader:Lkdp;

    .line 40318
    invoke-static {}, Lkcm;->d()[Lkcm;

    move-result-object v0

    iput-object v0, p0, Lkbw;->a:[Lkcm;

    .line 40319
    iput-object v1, p0, Lkbw;->eD:Llyd;

    .line 40320
    const/4 v0, -0x1

    iput v0, p0, Lkbw;->eE:I

    .line 39314
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 40365
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 40366
    sparse-switch v0, :sswitch_data_0

    .line 40370
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40371
    :sswitch_0
    return-object p0

    .line 40376
    :sswitch_1
    iget-object v0, p0, Lkbw;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 40377
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkbw;->responseHeader:Lkdp;

    .line 40379
    :cond_1
    iget-object v0, p0, Lkbw;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 40383
    :sswitch_2
    const/16 v0, 0x12

    .line 40384
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 40385
    iget-object v0, p0, Lkbw;->a:[Lkcm;

    if-nez v0, :cond_3

    move v0, v1

    .line 40386
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcm;

    .line 40388
    if-eqz v0, :cond_2

    .line 40389
    iget-object v3, p0, Lkbw;->a:[Lkcm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40391
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 40392
    new-instance v3, Lkcm;

    invoke-direct {v3}, Lkcm;-><init>()V

    aput-object v3, v2, v0

    .line 40393
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 40394
    invoke-virtual {p1}, Llxy;->a()I

    .line 40391
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40385
    :cond_3
    iget-object v0, p0, Lkbw;->a:[Lkcm;

    array-length v0, v0

    goto :goto_1

    .line 40397
    :cond_4
    new-instance v3, Lkcm;

    invoke-direct {v3}, Lkcm;-><init>()V

    aput-object v3, v2, v0

    .line 40398
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 40399
    iput-object v2, p0, Lkbw;->a:[Lkcm;

    goto :goto_0

    .line 40366
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
    .line 39327
    iget-object v0, p0, Lkbw;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 39328
    const/4 v0, 0x1

    iget-object v1, p0, Lkbw;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 39330
    :cond_0
    iget-object v0, p0, Lkbw;->a:[Lkcm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkbw;->a:[Lkcm;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 39331
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkbw;->a:[Lkcm;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 39332
    iget-object v1, p0, Lkbw;->a:[Lkcm;

    aget-object v1, v1, v0

    .line 39333
    if-eqz v1, :cond_1

    .line 39334
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 39331
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39338
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 39339
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 39343
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 39344
    iget-object v1, p0, Lkbw;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 39345
    const/4 v1, 0x1

    iget-object v2, p0, Lkbw;->responseHeader:Lkdp;

    .line 39346
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39348
    :cond_0
    iget-object v1, p0, Lkbw;->a:[Lkcm;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkbw;->a:[Lkcm;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 39349
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkbw;->a:[Lkcm;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 39350
    iget-object v2, p0, Lkbw;->a:[Lkcm;

    aget-object v2, v2, v0

    .line 39351
    if-eqz v2, :cond_1

    .line 39352
    const/4 v3, 0x2

    .line 39353
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 39349
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 39357
    :cond_3
    return v0
.end method
