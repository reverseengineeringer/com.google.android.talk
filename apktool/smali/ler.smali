.class public final Ller;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ller;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ller;


# instance fields
.field public a:Lleo;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1394
    iput-object v0, p0, Ller;->a:Lleo;

    .line 1395
    iput-object v0, p0, Ller;->b:Ljava/lang/Long;

    .line 1396
    iput-object v0, p0, Ller;->c:Ljava/lang/Float;

    .line 1397
    iput-object v0, p0, Ller;->d:Ljava/lang/Float;

    .line 1398
    iput-object v0, p0, Ller;->eD:Llyd;

    .line 1399
    const/4 v0, -0x1

    iput v0, p0, Ller;->eE:I

    .line 391
    return-void
.end method

.method public static d()[Ller;
    .locals 2

    .prologue
    .line 364
    sget-object v0, Ller;->e:[Ller;

    if-nez v0, :cond_1

    .line 365
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_0
    sget-object v0, Ller;->e:[Ller;

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x0

    new-array v0, v0, [Ller;

    sput-object v0, Ller;->e:[Ller;

    .line 370
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_1
    sget-object v0, Ller;->e:[Ller;

    return-object v0

    .line 370
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
    .locals 2

    .prologue
    .line 3448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3449
    sparse-switch v0, :sswitch_data_0

    .line 3453
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3454
    :sswitch_0
    return-object p0

    .line 3459
    :sswitch_1
    iget-object v0, p0, Ller;->a:Lleo;

    if-nez v0, :cond_1

    .line 3460
    new-instance v0, Lleo;

    invoke-direct {v0}, Lleo;-><init>()V

    iput-object v0, p0, Ller;->a:Lleo;

    .line 3462
    :cond_1
    iget-object v0, p0, Ller;->a:Lleo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3466
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ller;->b:Ljava/lang/Long;

    goto :goto_0

    .line 3470
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ller;->d:Ljava/lang/Float;

    goto :goto_0

    .line 3474
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ller;->c:Ljava/lang/Float;

    goto :goto_0

    .line 3449
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 406
    iget-object v0, p0, Ller;->a:Lleo;

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, 0x1

    iget-object v1, p0, Ller;->a:Lleo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 409
    :cond_0
    iget-object v0, p0, Ller;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x2

    iget-object v1, p0, Ller;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 412
    :cond_1
    iget-object v0, p0, Ller;->d:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 413
    const/4 v0, 0x3

    iget-object v1, p0, Ller;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 415
    :cond_2
    iget-object v0, p0, Ller;->c:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 416
    const/4 v0, 0x4

    iget-object v1, p0, Ller;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 418
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 419
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 423
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 424
    iget-object v1, p0, Ller;->a:Lleo;

    if-eqz v1, :cond_0

    .line 425
    const/4 v1, 0x1

    iget-object v2, p0, Ller;->a:Lleo;

    .line 426
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_0
    iget-object v1, p0, Ller;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 429
    const/4 v1, 0x2

    iget-object v2, p0, Ller;->b:Ljava/lang/Long;

    .line 430
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_1
    iget-object v1, p0, Ller;->d:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 433
    const/4 v1, 0x3

    iget-object v2, p0, Ller;->d:Ljava/lang/Float;

    .line 434
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 434
    add-int/2addr v0, v1

    .line 436
    :cond_2
    iget-object v1, p0, Ller;->c:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 437
    const/4 v1, 0x4

    iget-object v2, p0, Ller;->c:Ljava/lang/Float;

    .line 438
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 438
    add-int/2addr v0, v1

    .line 440
    :cond_3
    return v0
.end method
