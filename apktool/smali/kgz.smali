.class public final Lkgz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkgy;

.field public b:Lkii;

.field public c:[Lkgy;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1353
    iput-object v1, p0, Lkgz;->requestHeader:Lkdo;

    .line 1354
    iput-object v1, p0, Lkgz;->a:Lkgy;

    .line 1355
    iput-object v1, p0, Lkgz;->b:Lkii;

    .line 1356
    invoke-static {}, Lkgy;->d()[Lkgy;

    move-result-object v0

    iput-object v0, p0, Lkgz;->c:[Lkgy;

    .line 1357
    iput-object v1, p0, Lkgz;->eD:Llyd;

    .line 1358
    const/4 v0, -0x1

    iput v0, p0, Lkgz;->eE:I

    .line 350
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1417
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1418
    sparse-switch v0, :sswitch_data_0

    .line 1422
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    :sswitch_0
    return-object p0

    .line 1428
    :sswitch_1
    iget-object v0, p0, Lkgz;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 1429
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkgz;->requestHeader:Lkdo;

    .line 1431
    :cond_1
    iget-object v0, p0, Lkgz;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1435
    :sswitch_2
    iget-object v0, p0, Lkgz;->a:Lkgy;

    if-nez v0, :cond_2

    .line 1436
    new-instance v0, Lkgy;

    invoke-direct {v0}, Lkgy;-><init>()V

    iput-object v0, p0, Lkgz;->a:Lkgy;

    .line 1438
    :cond_2
    iget-object v0, p0, Lkgz;->a:Lkgy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1442
    :sswitch_3
    iget-object v0, p0, Lkgz;->b:Lkii;

    if-nez v0, :cond_3

    .line 1443
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkgz;->b:Lkii;

    .line 1445
    :cond_3
    iget-object v0, p0, Lkgz;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1449
    :sswitch_4
    const/16 v0, 0x22

    .line 1450
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1451
    iget-object v0, p0, Lkgz;->c:[Lkgy;

    if-nez v0, :cond_5

    move v0, v1

    .line 1452
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkgy;

    .line 1454
    if-eqz v0, :cond_4

    .line 1455
    iget-object v3, p0, Lkgz;->c:[Lkgy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1457
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1458
    new-instance v3, Lkgy;

    invoke-direct {v3}, Lkgy;-><init>()V

    aput-object v3, v2, v0

    .line 1459
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1460
    invoke-virtual {p1}, Llxy;->a()I

    .line 1457
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1451
    :cond_5
    iget-object v0, p0, Lkgz;->c:[Lkgy;

    array-length v0, v0

    goto :goto_1

    .line 1463
    :cond_6
    new-instance v3, Lkgy;

    invoke-direct {v3}, Lkgy;-><init>()V

    aput-object v3, v2, v0

    .line 1464
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1465
    iput-object v2, p0, Lkgz;->c:[Lkgy;

    goto :goto_0

    .line 1418
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lkgz;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x1

    iget-object v1, p0, Lkgz;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lkgz;->a:Lkgy;

    if-eqz v0, :cond_1

    .line 369
    const/4 v0, 0x2

    iget-object v1, p0, Lkgz;->a:Lkgy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 371
    :cond_1
    iget-object v0, p0, Lkgz;->b:Lkii;

    if-eqz v0, :cond_2

    .line 372
    const/4 v0, 0x3

    iget-object v1, p0, Lkgz;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 374
    :cond_2
    iget-object v0, p0, Lkgz;->c:[Lkgy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkgz;->c:[Lkgy;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 375
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkgz;->c:[Lkgy;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 376
    iget-object v1, p0, Lkgz;->c:[Lkgy;

    aget-object v1, v1, v0

    .line 377
    if-eqz v1, :cond_3

    .line 378
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 375
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 383
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 387
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 388
    iget-object v1, p0, Lkgz;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 389
    const/4 v1, 0x1

    iget-object v2, p0, Lkgz;->requestHeader:Lkdo;

    .line 390
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_0
    iget-object v1, p0, Lkgz;->a:Lkgy;

    if-eqz v1, :cond_1

    .line 393
    const/4 v1, 0x2

    iget-object v2, p0, Lkgz;->a:Lkgy;

    .line 394
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    :cond_1
    iget-object v1, p0, Lkgz;->b:Lkii;

    if-eqz v1, :cond_2

    .line 397
    const/4 v1, 0x3

    iget-object v2, p0, Lkgz;->b:Lkii;

    .line 398
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 400
    :cond_2
    iget-object v1, p0, Lkgz;->c:[Lkgy;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkgz;->c:[Lkgy;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 401
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkgz;->c:[Lkgy;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 402
    iget-object v2, p0, Lkgz;->c:[Lkgy;

    aget-object v2, v2, v0

    .line 403
    if-eqz v2, :cond_3

    .line 404
    const/4 v3, 0x4

    .line 405
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 401
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 409
    :cond_5
    return v0
.end method
