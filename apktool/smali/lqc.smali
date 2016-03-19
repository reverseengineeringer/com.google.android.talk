.class public final Llqc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llpy;

.field public b:Llpy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 410
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1415
    iput-object v0, p0, Llqc;->a:Llpy;

    .line 1416
    iput-object v0, p0, Llqc;->b:Llpy;

    .line 1417
    iput-object v0, p0, Llqc;->eD:Llyd;

    .line 1418
    const/4 v0, -0x1

    iput v0, p0, Llqc;->eE:I

    .line 412
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1453
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1454
    sparse-switch v0, :sswitch_data_0

    .line 1458
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    :sswitch_0
    return-object p0

    .line 1464
    :sswitch_1
    iget-object v0, p0, Llqc;->a:Llpy;

    if-nez v0, :cond_1

    .line 1465
    new-instance v0, Llpy;

    invoke-direct {v0}, Llpy;-><init>()V

    iput-object v0, p0, Llqc;->a:Llpy;

    .line 1467
    :cond_1
    iget-object v0, p0, Llqc;->a:Llpy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1471
    :sswitch_2
    iget-object v0, p0, Llqc;->b:Llpy;

    if-nez v0, :cond_2

    .line 1472
    new-instance v0, Llpy;

    invoke-direct {v0}, Llpy;-><init>()V

    iput-object v0, p0, Llqc;->b:Llpy;

    .line 1474
    :cond_2
    iget-object v0, p0, Llqc;->b:Llpy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1454
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Llqc;->a:Llpy;

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x4

    iget-object v1, p0, Llqc;->a:Llpy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 428
    :cond_0
    iget-object v0, p0, Llqc;->b:Llpy;

    if-eqz v0, :cond_1

    .line 429
    const/4 v0, 0x5

    iget-object v1, p0, Llqc;->b:Llpy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 431
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 432
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 436
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 437
    iget-object v1, p0, Llqc;->a:Llpy;

    if-eqz v1, :cond_0

    .line 438
    const/4 v1, 0x4

    iget-object v2, p0, Llqc;->a:Llpy;

    .line 439
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_0
    iget-object v1, p0, Llqc;->b:Llpy;

    if-eqz v1, :cond_1

    .line 442
    const/4 v1, 0x5

    iget-object v2, p0, Llqc;->b:Llpy;

    .line 443
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_1
    return v0
.end method
