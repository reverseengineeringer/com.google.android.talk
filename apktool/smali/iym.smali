.class public final Liym;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liym;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljdb;

.field public apiHeader:Liye;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1460
    iput-object v0, p0, Liym;->apiHeader:Liye;

    .line 1461
    iput-object v0, p0, Liym;->a:Ljdb;

    .line 1462
    iput-object v0, p0, Liym;->eD:Llyd;

    .line 1463
    const/4 v0, -0x1

    iput v0, p0, Liym;->eE:I

    .line 457
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1498
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1499
    sparse-switch v0, :sswitch_data_0

    .line 1503
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    :sswitch_0
    return-object p0

    .line 1509
    :sswitch_1
    iget-object v0, p0, Liym;->apiHeader:Liye;

    if-nez v0, :cond_1

    .line 1510
    new-instance v0, Liye;

    invoke-direct {v0}, Liye;-><init>()V

    iput-object v0, p0, Liym;->apiHeader:Liye;

    .line 1512
    :cond_1
    iget-object v0, p0, Liym;->apiHeader:Liye;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1516
    :sswitch_2
    iget-object v0, p0, Liym;->a:Ljdb;

    if-nez v0, :cond_2

    .line 1517
    new-instance v0, Ljdb;

    invoke-direct {v0}, Ljdb;-><init>()V

    iput-object v0, p0, Liym;->a:Ljdb;

    .line 1519
    :cond_2
    iget-object v0, p0, Liym;->a:Ljdb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1499
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Liym;->apiHeader:Liye;

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x1

    iget-object v1, p0, Liym;->apiHeader:Liye;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 473
    :cond_0
    iget-object v0, p0, Liym;->a:Ljdb;

    if-eqz v0, :cond_1

    .line 474
    const/4 v0, 0x2

    iget-object v1, p0, Liym;->a:Ljdb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 476
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 477
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 481
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 482
    iget-object v1, p0, Liym;->apiHeader:Liye;

    if-eqz v1, :cond_0

    .line 483
    const/4 v1, 0x1

    iget-object v2, p0, Liym;->apiHeader:Liye;

    .line 484
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_0
    iget-object v1, p0, Liym;->a:Ljdb;

    if-eqz v1, :cond_1

    .line 487
    const/4 v1, 0x2

    iget-object v2, p0, Liym;->a:Ljdb;

    .line 488
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_1
    return v0
.end method
