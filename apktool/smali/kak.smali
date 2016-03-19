.class public final Lkak;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkak;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkak;


# instance fields
.field public a:Ljzi;

.field public b:[Ljzh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30372
    invoke-direct {p0}, Llyb;-><init>()V

    .line 31377
    iput-object v1, p0, Lkak;->a:Ljzi;

    .line 31378
    invoke-static {}, Ljzh;->d()[Ljzh;

    move-result-object v0

    iput-object v0, p0, Lkak;->b:[Ljzh;

    .line 31379
    iput-object v1, p0, Lkak;->eD:Llyd;

    .line 31380
    const/4 v0, -0x1

    iput v0, p0, Lkak;->eE:I

    .line 30374
    return-void
.end method

.method public static d()[Lkak;
    .locals 2

    .prologue
    .line 30353
    sget-object v0, Lkak;->c:[Lkak;

    if-nez v0, :cond_1

    .line 30354
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 30356
    :try_start_0
    sget-object v0, Lkak;->c:[Lkak;

    if-nez v0, :cond_0

    .line 30357
    const/4 v0, 0x0

    new-array v0, v0, [Lkak;

    sput-object v0, Lkak;->c:[Lkak;

    .line 30359
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30361
    :cond_1
    sget-object v0, Lkak;->c:[Lkak;

    return-object v0

    .line 30359
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

    .line 31425
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 31426
    sparse-switch v0, :sswitch_data_0

    .line 31430
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31431
    :sswitch_0
    return-object p0

    .line 31436
    :sswitch_1
    iget-object v0, p0, Lkak;->a:Ljzi;

    if-nez v0, :cond_1

    .line 31437
    new-instance v0, Ljzi;

    invoke-direct {v0}, Ljzi;-><init>()V

    iput-object v0, p0, Lkak;->a:Ljzi;

    .line 31439
    :cond_1
    iget-object v0, p0, Lkak;->a:Ljzi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 31443
    :sswitch_2
    const/16 v0, 0x12

    .line 31444
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 31445
    iget-object v0, p0, Lkak;->b:[Ljzh;

    if-nez v0, :cond_3

    move v0, v1

    .line 31446
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzh;

    .line 31448
    if-eqz v0, :cond_2

    .line 31449
    iget-object v3, p0, Lkak;->b:[Ljzh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31451
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 31452
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 31453
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 31454
    invoke-virtual {p1}, Llxy;->a()I

    .line 31451
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 31445
    :cond_3
    iget-object v0, p0, Lkak;->b:[Ljzh;

    array-length v0, v0

    goto :goto_1

    .line 31457
    :cond_4
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 31458
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 31459
    iput-object v2, p0, Lkak;->b:[Ljzh;

    goto :goto_0

    .line 31426
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
    .line 30387
    iget-object v0, p0, Lkak;->a:Ljzi;

    if-eqz v0, :cond_0

    .line 30388
    const/4 v0, 0x1

    iget-object v1, p0, Lkak;->a:Ljzi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 30390
    :cond_0
    iget-object v0, p0, Lkak;->b:[Ljzh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkak;->b:[Ljzh;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 30391
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkak;->b:[Ljzh;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 30392
    iget-object v1, p0, Lkak;->b:[Ljzh;

    aget-object v1, v1, v0

    .line 30393
    if-eqz v1, :cond_1

    .line 30394
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 30391
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30398
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 30399
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 30403
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 30404
    iget-object v1, p0, Lkak;->a:Ljzi;

    if-eqz v1, :cond_0

    .line 30405
    const/4 v1, 0x1

    iget-object v2, p0, Lkak;->a:Ljzi;

    .line 30406
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30408
    :cond_0
    iget-object v1, p0, Lkak;->b:[Ljzh;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkak;->b:[Ljzh;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 30409
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkak;->b:[Ljzh;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 30410
    iget-object v2, p0, Lkak;->b:[Ljzh;

    aget-object v2, v2, v0

    .line 30411
    if-eqz v2, :cond_1

    .line 30412
    const/4 v3, 0x2

    .line 30413
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 30409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 30417
    :cond_3
    return v0
.end method
