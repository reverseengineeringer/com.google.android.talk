.class public final Lluz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lluz;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lluz;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Float;

.field public e:Ljava/lang/Float;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1347
    iput-object v0, p0, Lluz;->a:Ljava/lang/Integer;

    .line 1348
    iput-object v0, p0, Lluz;->b:Ljava/lang/Float;

    .line 1349
    iput-object v0, p0, Lluz;->c:Ljava/lang/Integer;

    .line 1350
    iput-object v0, p0, Lluz;->d:Ljava/lang/Float;

    .line 1351
    iput-object v0, p0, Lluz;->e:Ljava/lang/Float;

    .line 1352
    iput-object v0, p0, Lluz;->f:Ljava/lang/Integer;

    .line 1353
    iput-object v0, p0, Lluz;->eD:Llyd;

    .line 1354
    const/4 v0, -0x1

    iput v0, p0, Lluz;->eE:I

    .line 344
    return-void
.end method

.method public static d()[Lluz;
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lluz;->g:[Lluz;

    if-nez v0, :cond_1

    .line 312
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    sget-object v0, Lluz;->g:[Lluz;

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    new-array v0, v0, [Lluz;

    sput-object v0, Lluz;->g:[Lluz;

    .line 317
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_1
    sget-object v0, Lluz;->g:[Lluz;

    return-object v0

    .line 317
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
    .line 4405
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4406
    sparse-switch v0, :sswitch_data_0

    .line 4410
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4411
    :sswitch_0
    return-object p0

    .line 4416
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lluz;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4420
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lluz;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4424
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4425
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 4459
    :sswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lluz;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 4465
    :sswitch_5
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluz;->e:Ljava/lang/Float;

    goto :goto_0

    .line 4469
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluz;->b:Ljava/lang/Float;

    goto :goto_0

    .line 4473
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluz;->d:Ljava/lang/Float;

    goto :goto_0

    .line 4406
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_5
        0x2d -> :sswitch_6
        0x35 -> :sswitch_7
    .end sparse-switch

    .line 4425
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0x2b -> :sswitch_4
        0x2c -> :sswitch_4
        0x2d -> :sswitch_4
        0xc8 -> :sswitch_4
        0xdc -> :sswitch_4
        0xdd -> :sswitch_4
        0xde -> :sswitch_4
        0xdf -> :sswitch_4
        0xe0 -> :sswitch_4
        0xe1 -> :sswitch_4
        0xe2 -> :sswitch_4
        0xe3 -> :sswitch_4
        0xf0 -> :sswitch_4
        0xf1 -> :sswitch_4
        0x12c -> :sswitch_4
        0x12e -> :sswitch_4
        0x138 -> :sswitch_4
        0x13a -> :sswitch_4
        0x13b -> :sswitch_4
        0x13c -> :sswitch_4
        0x3a98 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x1

    iget-object v1, p0, Lluz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 362
    const/4 v0, 0x2

    iget-object v1, p0, Lluz;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 363
    const/4 v0, 0x3

    iget-object v1, p0, Lluz;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 364
    iget-object v0, p0, Lluz;->e:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x4

    iget-object v1, p0, Lluz;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 367
    :cond_0
    iget-object v0, p0, Lluz;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 368
    const/4 v0, 0x5

    iget-object v1, p0, Lluz;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 370
    :cond_1
    iget-object v0, p0, Lluz;->d:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 371
    const/4 v0, 0x6

    iget-object v1, p0, Lluz;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 373
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 374
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 378
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 379
    const/4 v1, 0x1

    iget-object v2, p0, Lluz;->a:Ljava/lang/Integer;

    .line 380
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    const/4 v1, 0x2

    iget-object v2, p0, Lluz;->c:Ljava/lang/Integer;

    .line 382
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    const/4 v1, 0x3

    iget-object v2, p0, Lluz;->f:Ljava/lang/Integer;

    .line 384
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    iget-object v1, p0, Lluz;->e:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 386
    const/4 v1, 0x4

    iget-object v2, p0, Lluz;->e:Ljava/lang/Float;

    .line 387
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 387
    add-int/2addr v0, v1

    .line 389
    :cond_0
    iget-object v1, p0, Lluz;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 390
    const/4 v1, 0x5

    iget-object v2, p0, Lluz;->b:Ljava/lang/Float;

    .line 391
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 391
    add-int/2addr v0, v1

    .line 393
    :cond_1
    iget-object v1, p0, Lluz;->d:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 394
    const/4 v1, 0x6

    iget-object v2, p0, Lluz;->d:Ljava/lang/Float;

    .line 395
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 395
    add-int/2addr v0, v1

    .line 397
    :cond_2
    return v0
.end method
