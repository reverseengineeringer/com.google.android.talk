.class public final Liyr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llom;

.field public apiHeader:Liyd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1427
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2432
    iput-object v0, p0, Liyr;->apiHeader:Liyd;

    .line 2433
    iput-object v0, p0, Liyr;->a:Llom;

    .line 2434
    iput-object v0, p0, Liyr;->eD:Llyd;

    .line 2435
    const/4 v0, -0x1

    iput v0, p0, Liyr;->eE:I

    .line 1429
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2470
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2471
    sparse-switch v0, :sswitch_data_0

    .line 2475
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2476
    :sswitch_0
    return-object p0

    .line 2481
    :sswitch_1
    iget-object v0, p0, Liyr;->apiHeader:Liyd;

    if-nez v0, :cond_1

    .line 2482
    new-instance v0, Liyd;

    invoke-direct {v0}, Liyd;-><init>()V

    iput-object v0, p0, Liyr;->apiHeader:Liyd;

    .line 2484
    :cond_1
    iget-object v0, p0, Liyr;->apiHeader:Liyd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2488
    :sswitch_2
    iget-object v0, p0, Liyr;->a:Llom;

    if-nez v0, :cond_2

    .line 2489
    new-instance v0, Llom;

    invoke-direct {v0}, Llom;-><init>()V

    iput-object v0, p0, Liyr;->a:Llom;

    .line 2491
    :cond_2
    iget-object v0, p0, Liyr;->a:Llom;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2471
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
    .line 1442
    iget-object v0, p0, Liyr;->apiHeader:Liyd;

    if-eqz v0, :cond_0

    .line 1443
    const/4 v0, 0x1

    iget-object v1, p0, Liyr;->apiHeader:Liyd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1445
    :cond_0
    iget-object v0, p0, Liyr;->a:Llom;

    if-eqz v0, :cond_1

    .line 1446
    const/4 v0, 0x2

    iget-object v1, p0, Liyr;->a:Llom;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1448
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1449
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1453
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1454
    iget-object v1, p0, Liyr;->apiHeader:Liyd;

    if-eqz v1, :cond_0

    .line 1455
    const/4 v1, 0x1

    iget-object v2, p0, Liyr;->apiHeader:Liyd;

    .line 1456
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1458
    :cond_0
    iget-object v1, p0, Liyr;->a:Llom;

    if-eqz v1, :cond_1

    .line 1459
    const/4 v1, 0x2

    iget-object v2, p0, Liyr;->a:Llom;

    .line 1460
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1462
    :cond_1
    return v0
.end method
