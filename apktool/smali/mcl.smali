.class public final Lmcl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmcl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmcl;


# instance fields
.field public a:Lmcm;

.field public b:Lmcn;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-direct {p0}, Llyb;-><init>()V

    .line 403
    iput-object v1, p0, Lmcl;->a:Lmcm;

    .line 404
    iput-object v1, p0, Lmcl;->b:Lmcn;

    .line 405
    const/high16 v0, -0x80000000

    iput v0, p0, Lmcl;->c:I

    .line 406
    iput-object v1, p0, Lmcl;->eD:Llyd;

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lmcl;->eE:I

    .line 408
    return-void
.end method

.method public static d()[Lmcl;
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lmcl;->d:[Lmcl;

    if-nez v0, :cond_1

    .line 381
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    sget-object v0, Lmcl;->d:[Lmcl;

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    new-array v0, v0, [Lmcl;

    sput-object v0, Lmcl;->d:[Lmcl;

    .line 386
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_1
    sget-object v0, Lmcl;->d:[Lmcl;

    return-object v0

    .line 386
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1449
    sparse-switch v0, :sswitch_data_0

    .line 1453
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    :sswitch_0
    return-object p0

    .line 1459
    :sswitch_1
    iget-object v0, p0, Lmcl;->a:Lmcm;

    if-nez v0, :cond_1

    .line 1460
    new-instance v0, Lmcm;

    invoke-direct {v0}, Lmcm;-><init>()V

    iput-object v0, p0, Lmcl;->a:Lmcm;

    .line 1462
    :cond_1
    iget-object v0, p0, Lmcl;->a:Lmcm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1466
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1467
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1481
    :sswitch_3
    iput v0, p0, Lmcl;->c:I

    goto :goto_0

    .line 1487
    :sswitch_4
    iget-object v0, p0, Lmcl;->b:Lmcn;

    if-nez v0, :cond_2

    .line 1488
    new-instance v0, Lmcn;

    invoke-direct {v0}, Lmcn;-><init>()V

    iput-object v0, p0, Lmcl;->b:Lmcn;

    .line 1490
    :cond_2
    iget-object v0, p0, Lmcl;->b:Lmcn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1449
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
    .end sparse-switch

    .line 1467
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0x2d -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lmcl;->a:Lmcm;

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x1

    iget-object v1, p0, Lmcl;->a:Lmcm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 416
    :cond_0
    iget v0, p0, Lmcl;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 417
    const/4 v0, 0x2

    iget v1, p0, Lmcl;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 419
    :cond_1
    iget-object v0, p0, Lmcl;->b:Lmcn;

    if-eqz v0, :cond_2

    .line 420
    const/4 v0, 0x3

    iget-object v1, p0, Lmcl;->b:Lmcn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 422
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 423
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 427
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 428
    iget-object v1, p0, Lmcl;->a:Lmcm;

    if-eqz v1, :cond_0

    .line 429
    const/4 v1, 0x1

    iget-object v2, p0, Lmcl;->a:Lmcm;

    .line 430
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_0
    iget v1, p0, Lmcl;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 433
    const/4 v1, 0x2

    iget v2, p0, Lmcl;->c:I

    .line 434
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_1
    iget-object v1, p0, Lmcl;->b:Lmcn;

    if-eqz v1, :cond_2

    .line 437
    const/4 v1, 0x3

    iget-object v2, p0, Lmcl;->b:Lmcn;

    .line 438
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_2
    return v0
.end method
