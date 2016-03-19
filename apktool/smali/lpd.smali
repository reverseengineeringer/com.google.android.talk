.class public final Llpd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llpd;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Llpd;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1357
    iput-object v0, p0, Llpd;->a:Ljava/lang/Integer;

    .line 1358
    iput-object v0, p0, Llpd;->b:Ljava/lang/Integer;

    .line 1359
    iput-object v0, p0, Llpd;->c:Ljava/lang/Integer;

    .line 1360
    iput-object v0, p0, Llpd;->d:Ljava/lang/String;

    .line 1361
    iput-object v0, p0, Llpd;->eD:Llyd;

    .line 1362
    const/4 v0, -0x1

    iput v0, p0, Llpd;->eE:I

    .line 354
    return-void
.end method

.method public static d()[Llpd;
    .locals 2

    .prologue
    .line 327
    sget-object v0, Llpd;->e:[Llpd;

    if-nez v0, :cond_1

    .line 328
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    sget-object v0, Llpd;->e:[Llpd;

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    new-array v0, v0, [Llpd;

    sput-object v0, Llpd;->e:[Llpd;

    .line 333
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_1
    sget-object v0, Llpd;->e:[Llpd;

    return-object v0

    .line 333
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
    .line 1411
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1412
    sparse-switch v0, :sswitch_data_0

    .line 1416
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    :sswitch_0
    return-object p0

    .line 1422
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llpd;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1426
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llpd;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1430
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llpd;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1434
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llpd;->d:Ljava/lang/String;

    goto :goto_0

    .line 1412
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Llpd;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x1

    iget-object v1, p0, Llpd;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 372
    :cond_0
    iget-object v0, p0, Llpd;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 373
    const/4 v0, 0x2

    iget-object v1, p0, Llpd;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 375
    :cond_1
    iget-object v0, p0, Llpd;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 376
    const/4 v0, 0x3

    iget-object v1, p0, Llpd;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 378
    :cond_2
    iget-object v0, p0, Llpd;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 379
    const/4 v0, 0x4

    iget-object v1, p0, Llpd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 381
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 382
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 386
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 387
    iget-object v1, p0, Llpd;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 388
    const/4 v1, 0x1

    iget-object v2, p0, Llpd;->a:Ljava/lang/Integer;

    .line 389
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_0
    iget-object v1, p0, Llpd;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 392
    const/4 v1, 0x2

    iget-object v2, p0, Llpd;->b:Ljava/lang/Integer;

    .line 393
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_1
    iget-object v1, p0, Llpd;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 396
    const/4 v1, 0x3

    iget-object v2, p0, Llpd;->c:Ljava/lang/Integer;

    .line 397
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    :cond_2
    iget-object v1, p0, Llpd;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 400
    const/4 v1, 0x4

    iget-object v2, p0, Llpd;->d:Ljava/lang/String;

    .line 401
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 403
    :cond_3
    return v0
.end method
