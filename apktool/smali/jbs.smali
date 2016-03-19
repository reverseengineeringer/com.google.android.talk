.class public final Ljbs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:[Ljbr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5398
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6403
    iput-object v1, p0, Ljbs;->a:Ljbn;

    .line 6404
    invoke-static {}, Ljbr;->d()[Ljbr;

    move-result-object v0

    iput-object v0, p0, Ljbs;->b:[Ljbr;

    .line 6405
    iput-object v1, p0, Ljbs;->eD:Llyd;

    .line 6406
    const/4 v0, -0x1

    iput v0, p0, Ljbs;->eE:I

    .line 5400
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6451
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6452
    sparse-switch v0, :sswitch_data_0

    .line 6456
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6457
    :sswitch_0
    return-object p0

    .line 6462
    :sswitch_1
    iget-object v0, p0, Ljbs;->a:Ljbn;

    if-nez v0, :cond_1

    .line 6463
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbs;->a:Ljbn;

    .line 6465
    :cond_1
    iget-object v0, p0, Ljbs;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6469
    :sswitch_2
    const/16 v0, 0x12

    .line 6470
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6471
    iget-object v0, p0, Ljbs;->b:[Ljbr;

    if-nez v0, :cond_3

    move v0, v1

    .line 6472
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljbr;

    .line 6474
    if-eqz v0, :cond_2

    .line 6475
    iget-object v3, p0, Ljbs;->b:[Ljbr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6477
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 6478
    new-instance v3, Ljbr;

    invoke-direct {v3}, Ljbr;-><init>()V

    aput-object v3, v2, v0

    .line 6479
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6480
    invoke-virtual {p1}, Llxy;->a()I

    .line 6477
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6471
    :cond_3
    iget-object v0, p0, Ljbs;->b:[Ljbr;

    array-length v0, v0

    goto :goto_1

    .line 6483
    :cond_4
    new-instance v3, Ljbr;

    invoke-direct {v3}, Ljbr;-><init>()V

    aput-object v3, v2, v0

    .line 6484
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6485
    iput-object v2, p0, Ljbs;->b:[Ljbr;

    goto :goto_0

    .line 6452
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
    .line 5413
    iget-object v0, p0, Ljbs;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 5414
    const/4 v0, 0x1

    iget-object v1, p0, Ljbs;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5416
    :cond_0
    iget-object v0, p0, Ljbs;->b:[Ljbr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljbs;->b:[Ljbr;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 5417
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljbs;->b:[Ljbr;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 5418
    iget-object v1, p0, Ljbs;->b:[Ljbr;

    aget-object v1, v1, v0

    .line 5419
    if-eqz v1, :cond_1

    .line 5420
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 5417
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5424
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5425
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 5429
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5430
    iget-object v1, p0, Ljbs;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 5431
    const/4 v1, 0x1

    iget-object v2, p0, Ljbs;->a:Ljbn;

    .line 5432
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5434
    :cond_0
    iget-object v1, p0, Ljbs;->b:[Ljbr;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljbs;->b:[Ljbr;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 5435
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljbs;->b:[Ljbr;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 5436
    iget-object v2, p0, Ljbs;->b:[Ljbr;

    aget-object v2, v2, v0

    .line 5437
    if-eqz v2, :cond_1

    .line 5438
    const/4 v3, 0x2

    .line 5439
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 5435
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 5443
    :cond_3
    return v0
.end method
