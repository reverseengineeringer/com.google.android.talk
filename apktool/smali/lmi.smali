.class public final Llmi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llmi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Llmj;

.field public c:Llmk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1393
    iput-object v0, p0, Llmi;->a:Ljava/lang/String;

    .line 1394
    iput-object v0, p0, Llmi;->b:Llmj;

    .line 1395
    iput-object v0, p0, Llmi;->c:Llmk;

    .line 1396
    iput-object v0, p0, Llmi;->eD:Llyd;

    .line 1397
    const/4 v0, -0x1

    iput v0, p0, Llmi;->eE:I

    .line 390
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1439
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1440
    sparse-switch v0, :sswitch_data_0

    .line 1444
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1445
    :sswitch_0
    return-object p0

    .line 1450
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmi;->a:Ljava/lang/String;

    goto :goto_0

    .line 1454
    :sswitch_2
    iget-object v0, p0, Llmi;->b:Llmj;

    if-nez v0, :cond_1

    .line 1455
    new-instance v0, Llmj;

    invoke-direct {v0}, Llmj;-><init>()V

    iput-object v0, p0, Llmi;->b:Llmj;

    .line 1457
    :cond_1
    iget-object v0, p0, Llmi;->b:Llmj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1461
    :sswitch_3
    iget-object v0, p0, Llmi;->c:Llmk;

    if-nez v0, :cond_2

    .line 1462
    new-instance v0, Llmk;

    invoke-direct {v0}, Llmk;-><init>()V

    iput-object v0, p0, Llmi;->c:Llmk;

    .line 1464
    :cond_2
    iget-object v0, p0, Llmi;->c:Llmk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1440
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
    .line 404
    iget-object v0, p0, Llmi;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x1

    iget-object v1, p0, Llmi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 407
    :cond_0
    iget-object v0, p0, Llmi;->b:Llmj;

    if-eqz v0, :cond_1

    .line 408
    const/4 v0, 0x2

    iget-object v1, p0, Llmi;->b:Llmj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 410
    :cond_1
    iget-object v0, p0, Llmi;->c:Llmk;

    if-eqz v0, :cond_2

    .line 411
    const/4 v0, 0x3

    iget-object v1, p0, Llmi;->c:Llmk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 413
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 414
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 418
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 419
    iget-object v1, p0, Llmi;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 420
    const/4 v1, 0x1

    iget-object v2, p0, Llmi;->a:Ljava/lang/String;

    .line 421
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_0
    iget-object v1, p0, Llmi;->b:Llmj;

    if-eqz v1, :cond_1

    .line 424
    const/4 v1, 0x2

    iget-object v2, p0, Llmi;->b:Llmj;

    .line 425
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_1
    iget-object v1, p0, Llmi;->c:Llmk;

    if-eqz v1, :cond_2

    .line 428
    const/4 v1, 0x3

    iget-object v2, p0, Llmi;->c:Llmk;

    .line 429
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_2
    return v0
.end method
