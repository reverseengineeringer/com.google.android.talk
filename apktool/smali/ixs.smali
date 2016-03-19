.class public final Lixs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lixs;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Lixt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4294
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5299
    iput-object v1, p0, Lixs;->a:Lixc;

    .line 5300
    iput-object v1, p0, Lixs;->b:Ljava/lang/String;

    .line 5301
    iput-object v1, p0, Lixs;->c:Ljava/lang/String;

    .line 5302
    iput-object v1, p0, Lixs;->d:Ljava/lang/String;

    .line 5303
    invoke-static {}, Lixt;->d()[Lixt;

    move-result-object v0

    iput-object v0, p0, Lixs;->e:[Lixt;

    .line 5304
    iput-object v1, p0, Lixs;->eD:Llyd;

    .line 5305
    const/4 v0, -0x1

    iput v0, p0, Lixs;->eE:I

    .line 4296
    return-void
.end method

.method public static d()[Lixs;
    .locals 2

    .prologue
    .line 4266
    sget-object v0, Lixs;->f:[Lixs;

    if-nez v0, :cond_1

    .line 4267
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4269
    :try_start_0
    sget-object v0, Lixs;->f:[Lixs;

    if-nez v0, :cond_0

    .line 4270
    const/4 v0, 0x0

    new-array v0, v0, [Lixs;

    sput-object v0, Lixs;->f:[Lixs;

    .line 4272
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4274
    :cond_1
    sget-object v0, Lixs;->f:[Lixs;

    return-object v0

    .line 4272
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

    .line 5371
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5372
    sparse-switch v0, :sswitch_data_0

    .line 5376
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5377
    :sswitch_0
    return-object p0

    .line 5382
    :sswitch_1
    iget-object v0, p0, Lixs;->a:Lixc;

    if-nez v0, :cond_1

    .line 5383
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixs;->a:Lixc;

    .line 5385
    :cond_1
    iget-object v0, p0, Lixs;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5389
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixs;->b:Ljava/lang/String;

    goto :goto_0

    .line 5393
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixs;->c:Ljava/lang/String;

    goto :goto_0

    .line 5397
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixs;->d:Ljava/lang/String;

    goto :goto_0

    .line 5401
    :sswitch_5
    const/16 v0, 0x2a

    .line 5402
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5403
    iget-object v0, p0, Lixs;->e:[Lixt;

    if-nez v0, :cond_3

    move v0, v1

    .line 5404
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lixt;

    .line 5406
    if-eqz v0, :cond_2

    .line 5407
    iget-object v3, p0, Lixs;->e:[Lixt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5409
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 5410
    new-instance v3, Lixt;

    invoke-direct {v3}, Lixt;-><init>()V

    aput-object v3, v2, v0

    .line 5411
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5412
    invoke-virtual {p1}, Llxy;->a()I

    .line 5409
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5403
    :cond_3
    iget-object v0, p0, Lixs;->e:[Lixt;

    array-length v0, v0

    goto :goto_1

    .line 5415
    :cond_4
    new-instance v3, Lixt;

    invoke-direct {v3}, Lixt;-><init>()V

    aput-object v3, v2, v0

    .line 5416
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5417
    iput-object v2, p0, Lixs;->e:[Lixt;

    goto :goto_0

    .line 5372
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 4312
    iget-object v0, p0, Lixs;->a:Lixc;

    if-eqz v0, :cond_0

    .line 4313
    const/4 v0, 0x1

    iget-object v1, p0, Lixs;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4315
    :cond_0
    iget-object v0, p0, Lixs;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4316
    const/4 v0, 0x2

    iget-object v1, p0, Lixs;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4318
    :cond_1
    iget-object v0, p0, Lixs;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4319
    const/4 v0, 0x3

    iget-object v1, p0, Lixs;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4321
    :cond_2
    iget-object v0, p0, Lixs;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4322
    const/4 v0, 0x4

    iget-object v1, p0, Lixs;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4324
    :cond_3
    iget-object v0, p0, Lixs;->e:[Lixt;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lixs;->e:[Lixt;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 4325
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lixs;->e:[Lixt;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 4326
    iget-object v1, p0, Lixs;->e:[Lixt;

    aget-object v1, v1, v0

    .line 4327
    if-eqz v1, :cond_4

    .line 4328
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4325
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4332
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4333
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 4337
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4338
    iget-object v1, p0, Lixs;->a:Lixc;

    if-eqz v1, :cond_0

    .line 4339
    const/4 v1, 0x1

    iget-object v2, p0, Lixs;->a:Lixc;

    .line 4340
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4342
    :cond_0
    iget-object v1, p0, Lixs;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4343
    const/4 v1, 0x2

    iget-object v2, p0, Lixs;->b:Ljava/lang/String;

    .line 4344
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4346
    :cond_1
    iget-object v1, p0, Lixs;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4347
    const/4 v1, 0x3

    iget-object v2, p0, Lixs;->c:Ljava/lang/String;

    .line 4348
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4350
    :cond_2
    iget-object v1, p0, Lixs;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4351
    const/4 v1, 0x4

    iget-object v2, p0, Lixs;->d:Ljava/lang/String;

    .line 4352
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4354
    :cond_3
    iget-object v1, p0, Lixs;->e:[Lixt;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lixs;->e:[Lixt;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 4355
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lixs;->e:[Lixt;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 4356
    iget-object v2, p0, Lixs;->e:[Lixt;

    aget-object v2, v2, v0

    .line 4357
    if-eqz v2, :cond_4

    .line 4358
    const/4 v3, 0x5

    .line 4359
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4355
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 4363
    :cond_6
    return v0
.end method
