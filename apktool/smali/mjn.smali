.class public final Lmjn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmjn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmjn;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Lmjj;

.field public c:Lmks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1344
    iput-object v1, p0, Lmjn;->a:Ljava/lang/String;

    .line 1345
    invoke-static {}, Lmjj;->d()[Lmjj;

    move-result-object v0

    iput-object v0, p0, Lmjn;->b:[Lmjj;

    .line 1346
    iput-object v1, p0, Lmjn;->c:Lmks;

    .line 1347
    iput-object v1, p0, Lmjn;->eD:Llyd;

    .line 1348
    const/4 v0, -0x1

    iput v0, p0, Lmjn;->eE:I

    .line 341
    return-void
.end method

.method public static d()[Lmjn;
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lmjn;->d:[Lmjn;

    if-nez v0, :cond_1

    .line 318
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    sget-object v0, Lmjn;->d:[Lmjn;

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    new-array v0, v0, [Lmjn;

    sput-object v0, Lmjn;->d:[Lmjn;

    .line 323
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_1
    sget-object v0, Lmjn;->d:[Lmjn;

    return-object v0

    .line 323
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1400
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1401
    sparse-switch v0, :sswitch_data_0

    .line 1405
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1406
    :sswitch_0
    return-object p0

    .line 1411
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmjn;->a:Ljava/lang/String;

    goto :goto_0

    .line 1415
    :sswitch_2
    const/16 v0, 0x12

    .line 1416
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1417
    iget-object v0, p0, Lmjn;->b:[Lmjj;

    if-nez v0, :cond_2

    move v0, v1

    .line 1418
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmjj;

    .line 1420
    if-eqz v0, :cond_1

    .line 1421
    iget-object v3, p0, Lmjn;->b:[Lmjj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1423
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1424
    new-instance v3, Lmjj;

    invoke-direct {v3}, Lmjj;-><init>()V

    aput-object v3, v2, v0

    .line 1425
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1426
    invoke-virtual {p1}, Llxy;->a()I

    .line 1423
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1417
    :cond_2
    iget-object v0, p0, Lmjn;->b:[Lmjj;

    array-length v0, v0

    goto :goto_1

    .line 1429
    :cond_3
    new-instance v3, Lmjj;

    invoke-direct {v3}, Lmjj;-><init>()V

    aput-object v3, v2, v0

    .line 1430
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1431
    iput-object v2, p0, Lmjn;->b:[Lmjj;

    goto :goto_0

    .line 1435
    :sswitch_3
    iget-object v0, p0, Lmjn;->c:Lmks;

    if-nez v0, :cond_4

    .line 1436
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmjn;->c:Lmks;

    .line 1438
    :cond_4
    iget-object v0, p0, Lmjn;->c:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1401
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lmjn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    iget-object v1, p0, Lmjn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lmjn;->b:[Lmjj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmjn;->b:[Lmjj;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 359
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmjn;->b:[Lmjj;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 360
    iget-object v1, p0, Lmjn;->b:[Lmjj;

    aget-object v1, v1, v0

    .line 361
    if-eqz v1, :cond_1

    .line 362
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 359
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lmjn;->c:Lmks;

    if-eqz v0, :cond_3

    .line 367
    const/4 v0, 0x3

    iget-object v1, p0, Lmjn;->c:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 369
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 370
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 374
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 375
    iget-object v1, p0, Lmjn;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 376
    const/4 v1, 0x1

    iget-object v2, p0, Lmjn;->a:Ljava/lang/String;

    .line 377
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_0
    iget-object v1, p0, Lmjn;->b:[Lmjj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmjn;->b:[Lmjj;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 380
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmjn;->b:[Lmjj;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 381
    iget-object v2, p0, Lmjn;->b:[Lmjj;

    aget-object v2, v2, v0

    .line 382
    if-eqz v2, :cond_1

    .line 383
    const/4 v3, 0x2

    .line 384
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 380
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 388
    :cond_3
    iget-object v1, p0, Lmjn;->c:Lmks;

    if-eqz v1, :cond_4

    .line 389
    const/4 v1, 0x3

    iget-object v2, p0, Lmjn;->c:Lmks;

    .line 390
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_4
    return v0
.end method
