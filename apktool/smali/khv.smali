.class public final Lkhv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lkii;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2447
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3452
    iput-object v0, p0, Lkhv;->requestHeader:Lkdo;

    .line 3453
    iput-object v0, p0, Lkhv;->a:Ljava/lang/String;

    .line 3454
    iput-object v0, p0, Lkhv;->b:Lkii;

    .line 3455
    iput-object v0, p0, Lkhv;->eD:Llyd;

    .line 3456
    const/4 v0, -0x1

    iput v0, p0, Lkhv;->eE:I

    .line 2449
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3498
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3499
    sparse-switch v0, :sswitch_data_0

    .line 3503
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3504
    :sswitch_0
    return-object p0

    .line 3509
    :sswitch_1
    iget-object v0, p0, Lkhv;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 3510
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkhv;->requestHeader:Lkdo;

    .line 3512
    :cond_1
    iget-object v0, p0, Lkhv;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3516
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkhv;->a:Ljava/lang/String;

    goto :goto_0

    .line 3520
    :sswitch_3
    iget-object v0, p0, Lkhv;->b:Lkii;

    if-nez v0, :cond_2

    .line 3521
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhv;->b:Lkii;

    .line 3523
    :cond_2
    iget-object v0, p0, Lkhv;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3499
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2463
    iget-object v0, p0, Lkhv;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 2464
    const/4 v0, 0x1

    iget-object v1, p0, Lkhv;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2466
    :cond_0
    iget-object v0, p0, Lkhv;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2467
    const/4 v0, 0x2

    iget-object v1, p0, Lkhv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2469
    :cond_1
    iget-object v0, p0, Lkhv;->b:Lkii;

    if-eqz v0, :cond_2

    .line 2470
    const/4 v0, 0x3

    iget-object v1, p0, Lkhv;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2472
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2473
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2477
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2478
    iget-object v1, p0, Lkhv;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 2479
    const/4 v1, 0x1

    iget-object v2, p0, Lkhv;->requestHeader:Lkdo;

    .line 2480
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2482
    :cond_0
    iget-object v1, p0, Lkhv;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2483
    const/4 v1, 0x2

    iget-object v2, p0, Lkhv;->a:Ljava/lang/String;

    .line 2484
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2486
    :cond_1
    iget-object v1, p0, Lkhv;->b:Lkii;

    if-eqz v1, :cond_2

    .line 2487
    const/4 v1, 0x3

    iget-object v2, p0, Lkhv;->b:Lkii;

    .line 2488
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2490
    :cond_2
    return v0
.end method
