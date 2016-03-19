.class public final Ljmv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljmv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljpc;

.field public c:Ljmw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1357
    iput-object v0, p0, Ljmv;->a:Ljava/lang/String;

    .line 1358
    iput-object v0, p0, Ljmv;->b:Ljpc;

    .line 1359
    iput-object v0, p0, Ljmv;->c:Ljmw;

    .line 1360
    iput-object v0, p0, Ljmv;->eD:Llyd;

    .line 1361
    const/4 v0, -0x1

    iput v0, p0, Ljmv;->eE:I

    .line 354
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1403
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1404
    sparse-switch v0, :sswitch_data_0

    .line 1408
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    :sswitch_0
    return-object p0

    .line 1414
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljmv;->a:Ljava/lang/String;

    goto :goto_0

    .line 1418
    :sswitch_2
    iget-object v0, p0, Ljmv;->b:Ljpc;

    if-nez v0, :cond_1

    .line 1419
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljmv;->b:Ljpc;

    .line 1421
    :cond_1
    iget-object v0, p0, Ljmv;->b:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1425
    :sswitch_3
    iget-object v0, p0, Ljmv;->c:Ljmw;

    if-nez v0, :cond_2

    .line 1426
    new-instance v0, Ljmw;

    invoke-direct {v0}, Ljmw;-><init>()V

    iput-object v0, p0, Ljmv;->c:Ljmw;

    .line 1428
    :cond_2
    iget-object v0, p0, Ljmv;->c:Ljmw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1404
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Ljmv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x2

    iget-object v1, p0, Ljmv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 371
    :cond_0
    iget-object v0, p0, Ljmv;->b:Ljpc;

    if-eqz v0, :cond_1

    .line 372
    const/4 v0, 0x3

    iget-object v1, p0, Ljmv;->b:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 374
    :cond_1
    iget-object v0, p0, Ljmv;->c:Ljmw;

    if-eqz v0, :cond_2

    .line 375
    const/4 v0, 0x4

    iget-object v1, p0, Ljmv;->c:Ljmw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 377
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 378
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 382
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 383
    iget-object v1, p0, Ljmv;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 384
    const/4 v1, 0x2

    iget-object v2, p0, Ljmv;->a:Ljava/lang/String;

    .line 385
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_0
    iget-object v1, p0, Ljmv;->b:Ljpc;

    if-eqz v1, :cond_1

    .line 388
    const/4 v1, 0x3

    iget-object v2, p0, Ljmv;->b:Ljpc;

    .line 389
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_1
    iget-object v1, p0, Ljmv;->c:Ljmw;

    if-eqz v1, :cond_2

    .line 392
    const/4 v1, 0x4

    iget-object v2, p0, Ljmv;->c:Ljmw;

    .line 393
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_2
    return v0
.end method
