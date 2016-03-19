.class public final Lmgs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lmgg;

.field public c:Ljava/lang/Integer;

.field public d:Lmgr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1376
    iput-object v0, p0, Lmgs;->a:Ljava/lang/String;

    .line 1377
    iput-object v0, p0, Lmgs;->b:Lmgg;

    .line 1378
    iput-object v0, p0, Lmgs;->c:Ljava/lang/Integer;

    .line 1379
    iput-object v0, p0, Lmgs;->d:Lmgr;

    .line 1380
    iput-object v0, p0, Lmgs;->eD:Llyd;

    .line 1381
    const/4 v0, -0x1

    iput v0, p0, Lmgs;->eE:I

    .line 373
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1431
    sparse-switch v0, :sswitch_data_0

    .line 1435
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1436
    :sswitch_0
    return-object p0

    .line 1441
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmgs;->a:Ljava/lang/String;

    goto :goto_0

    .line 1445
    :sswitch_2
    iget-object v0, p0, Lmgs;->b:Lmgg;

    if-nez v0, :cond_1

    .line 1446
    new-instance v0, Lmgg;

    invoke-direct {v0}, Lmgg;-><init>()V

    iput-object v0, p0, Lmgs;->b:Lmgg;

    .line 1448
    :cond_1
    iget-object v0, p0, Lmgs;->b:Lmgg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1452
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmgs;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1456
    :sswitch_4
    iget-object v0, p0, Lmgs;->d:Lmgr;

    if-nez v0, :cond_2

    .line 1457
    new-instance v0, Lmgr;

    invoke-direct {v0}, Lmgr;-><init>()V

    iput-object v0, p0, Lmgs;->d:Lmgr;

    .line 1459
    :cond_2
    iget-object v0, p0, Lmgs;->d:Lmgr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1431
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lmgs;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x1

    iget-object v1, p0, Lmgs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lmgs;->b:Lmgg;

    if-eqz v0, :cond_1

    .line 392
    const/4 v0, 0x2

    iget-object v1, p0, Lmgs;->b:Lmgg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 394
    :cond_1
    iget-object v0, p0, Lmgs;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 395
    const/4 v0, 0x3

    iget-object v1, p0, Lmgs;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 397
    :cond_2
    iget-object v0, p0, Lmgs;->d:Lmgr;

    if-eqz v0, :cond_3

    .line 398
    const/4 v0, 0x4

    iget-object v1, p0, Lmgs;->d:Lmgr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 400
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 401
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 405
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 406
    iget-object v1, p0, Lmgs;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 407
    const/4 v1, 0x1

    iget-object v2, p0, Lmgs;->a:Ljava/lang/String;

    .line 408
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    :cond_0
    iget-object v1, p0, Lmgs;->b:Lmgg;

    if-eqz v1, :cond_1

    .line 411
    const/4 v1, 0x2

    iget-object v2, p0, Lmgs;->b:Lmgg;

    .line 412
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 414
    :cond_1
    iget-object v1, p0, Lmgs;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 415
    const/4 v1, 0x3

    iget-object v2, p0, Lmgs;->c:Ljava/lang/Integer;

    .line 416
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    :cond_2
    iget-object v1, p0, Lmgs;->d:Lmgr;

    if-eqz v1, :cond_3

    .line 419
    const/4 v1, 0x4

    iget-object v2, p0, Lmgs;->d:Lmgr;

    .line 420
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_3
    return v0
.end method
