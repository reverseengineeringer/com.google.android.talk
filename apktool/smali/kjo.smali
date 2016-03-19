.class public final Lkjo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkjo;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3291
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4296
    iput-object v1, p0, Lkjo;->a:Ljava/lang/String;

    .line 4297
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkjo;->b:[I

    .line 4298
    iput-object v1, p0, Lkjo;->eD:Llyd;

    .line 4299
    const/4 v0, -0x1

    iput v0, p0, Lkjo;->eE:I

    .line 3293
    return-void
.end method

.method public static d()[Lkjo;
    .locals 2

    .prologue
    .line 3272
    sget-object v0, Lkjo;->c:[Lkjo;

    if-nez v0, :cond_1

    .line 3273
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3275
    :try_start_0
    sget-object v0, Lkjo;->c:[Lkjo;

    if-nez v0, :cond_0

    .line 3276
    const/4 v0, 0x0

    new-array v0, v0, [Lkjo;

    sput-object v0, Lkjo;->c:[Lkjo;

    .line 3278
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3280
    :cond_1
    sget-object v0, Lkjo;->c:[Lkjo;

    return-object v0

    .line 3278
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
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5342
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5343
    sparse-switch v0, :sswitch_data_0

    .line 5347
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5348
    :sswitch_0
    return-object p0

    .line 5353
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjo;->a:Ljava/lang/String;

    goto :goto_0

    .line 5357
    :sswitch_2
    const/16 v0, 0x10

    .line 5358
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5359
    iget-object v0, p0, Lkjo;->b:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 5360
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 5361
    if-eqz v0, :cond_1

    .line 5362
    iget-object v3, p0, Lkjo;->b:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5364
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5365
    invoke-virtual {p1}, Llxy;->l()I

    move-result v3

    aput v3, v2, v0

    .line 5366
    invoke-virtual {p1}, Llxy;->a()I

    .line 5364
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5359
    :cond_2
    iget-object v0, p0, Lkjo;->b:[I

    array-length v0, v0

    goto :goto_1

    .line 5369
    :cond_3
    invoke-virtual {p1}, Llxy;->l()I

    move-result v3

    aput v3, v2, v0

    .line 5370
    iput-object v2, p0, Lkjo;->b:[I

    goto :goto_0

    .line 5374
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 5375
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 5378
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 5379
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 5380
    invoke-virtual {p1}, Llxy;->l()I

    .line 5381
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5383
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 5384
    iget-object v2, p0, Lkjo;->b:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 5385
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 5386
    if-eqz v2, :cond_5

    .line 5387
    iget-object v4, p0, Lkjo;->b:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5389
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 5390
    invoke-virtual {p1}, Llxy;->l()I

    move-result v4

    aput v4, v0, v2

    .line 5389
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5384
    :cond_6
    iget-object v2, p0, Lkjo;->b:[I

    array-length v2, v2

    goto :goto_4

    .line 5392
    :cond_7
    iput-object v0, p0, Lkjo;->b:[I

    .line 5393
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 5343
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 3306
    iget-object v0, p0, Lkjo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3307
    const/4 v0, 0x1

    iget-object v1, p0, Lkjo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3309
    :cond_0
    iget-object v0, p0, Lkjo;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkjo;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 3310
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkjo;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3311
    const/4 v1, 0x2

    iget-object v2, p0, Lkjo;->b:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->c(II)V

    .line 3310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3314
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3315
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3319
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3320
    iget-object v2, p0, Lkjo;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3321
    const/4 v2, 0x1

    iget-object v3, p0, Lkjo;->a:Ljava/lang/String;

    .line 3322
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3324
    :cond_0
    iget-object v2, p0, Lkjo;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkjo;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 3326
    :goto_0
    iget-object v3, p0, Lkjo;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3327
    iget-object v3, p0, Lkjo;->b:[I

    aget v3, v3, v1

    .line 4844
    invoke-static {v3}, Llxz;->h(I)I

    move-result v3

    .line 3329
    add-int/2addr v2, v3

    .line 3326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3331
    :cond_1
    add-int/2addr v0, v2

    .line 3332
    iget-object v1, p0, Lkjo;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3334
    :cond_2
    return v0
.end method
