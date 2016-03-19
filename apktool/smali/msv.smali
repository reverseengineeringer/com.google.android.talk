.class public final Lmsv;
.super Llyi;
.source "SourceFile"


# static fields
.field private static volatile g:[Lmsv;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-direct {p0}, Llyi;-><init>()V

    .line 1321
    iput v0, p0, Lmsv;->a:I

    .line 1322
    iput v0, p0, Lmsv;->b:I

    .line 1323
    iput v0, p0, Lmsv;->c:I

    .line 1324
    iput v0, p0, Lmsv;->d:I

    .line 1325
    iput v0, p0, Lmsv;->e:I

    .line 1326
    iput v0, p0, Lmsv;->f:I

    .line 1327
    const/4 v0, -0x1

    iput v0, p0, Lmsv;->eE:I

    .line 318
    return-void
.end method

.method public static d()[Lmsv;
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lmsv;->g:[Lmsv;

    if-nez v0, :cond_1

    .line 286
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v0, Lmsv;->g:[Lmsv;

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    new-array v0, v0, [Lmsv;

    sput-object v0, Lmsv;->g:[Lmsv;

    .line 291
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_1
    sget-object v0, Lmsv;->g:[Lmsv;

    return-object v0

    .line 291
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
    .line 1390
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1391
    sparse-switch v0, :sswitch_data_0

    .line 2095
    invoke-virtual {p1, v0}, Llxy;->b(I)Z

    move-result v0

    .line 1395
    if-nez v0, :cond_0

    .line 1396
    :sswitch_0
    return-object p0

    .line 1401
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lmsv;->a:I

    goto :goto_0

    .line 1405
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lmsv;->b:I

    goto :goto_0

    .line 1409
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lmsv;->c:I

    goto :goto_0

    .line 1413
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lmsv;->d:I

    goto :goto_0

    .line 1417
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lmsv;->e:I

    goto :goto_0

    .line 1421
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    iput v0, p0, Lmsv;->f:I

    goto :goto_0

    .line 1391
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 334
    iget v0, p0, Lmsv;->a:I

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    iget v1, p0, Lmsv;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 337
    :cond_0
    iget v0, p0, Lmsv;->b:I

    if-eqz v0, :cond_1

    .line 338
    const/4 v0, 0x2

    iget v1, p0, Lmsv;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 340
    :cond_1
    iget v0, p0, Lmsv;->c:I

    if-eqz v0, :cond_2

    .line 341
    const/4 v0, 0x3

    iget v1, p0, Lmsv;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 343
    :cond_2
    iget v0, p0, Lmsv;->d:I

    if-eqz v0, :cond_3

    .line 344
    const/4 v0, 0x4

    iget v1, p0, Lmsv;->d:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 346
    :cond_3
    iget v0, p0, Lmsv;->e:I

    if-eqz v0, :cond_4

    .line 347
    const/4 v0, 0x5

    iget v1, p0, Lmsv;->e:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 349
    :cond_4
    iget v0, p0, Lmsv;->f:I

    if-eqz v0, :cond_5

    .line 350
    const/4 v0, 0x6

    iget v1, p0, Lmsv;->f:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 352
    :cond_5
    invoke-super {p0, p1}, Llyi;->a(Llxz;)V

    .line 353
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 357
    invoke-super {p0}, Llyi;->b()I

    move-result v0

    .line 358
    iget v1, p0, Lmsv;->a:I

    if-eqz v1, :cond_0

    .line 359
    const/4 v1, 0x1

    iget v2, p0, Lmsv;->a:I

    .line 360
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    :cond_0
    iget v1, p0, Lmsv;->b:I

    if-eqz v1, :cond_1

    .line 363
    const/4 v1, 0x2

    iget v2, p0, Lmsv;->b:I

    .line 364
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_1
    iget v1, p0, Lmsv;->c:I

    if-eqz v1, :cond_2

    .line 367
    const/4 v1, 0x3

    iget v2, p0, Lmsv;->c:I

    .line 368
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_2
    iget v1, p0, Lmsv;->d:I

    if-eqz v1, :cond_3

    .line 371
    const/4 v1, 0x4

    iget v2, p0, Lmsv;->d:I

    .line 372
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_3
    iget v1, p0, Lmsv;->e:I

    if-eqz v1, :cond_4

    .line 375
    const/4 v1, 0x5

    iget v2, p0, Lmsv;->e:I

    .line 376
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_4
    iget v1, p0, Lmsv;->f:I

    if-eqz v1, :cond_5

    .line 379
    const/4 v1, 0x6

    iget v2, p0, Lmsv;->f:I

    .line 380
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_5
    return v0
.end method
