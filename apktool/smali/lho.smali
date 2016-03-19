.class public final Llho;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llho;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llki;

.field public b:Llhn;

.field public c:Llhn;

.field public d:Llhn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1349
    iput-object v0, p0, Llho;->a:Llki;

    .line 1350
    iput-object v0, p0, Llho;->b:Llhn;

    .line 1351
    iput-object v0, p0, Llho;->c:Llhn;

    .line 1352
    iput-object v0, p0, Llho;->d:Llhn;

    .line 1353
    iput-object v0, p0, Llho;->eD:Llyd;

    .line 1354
    const/4 v0, -0x1

    iput v0, p0, Llho;->eE:I

    .line 346
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
    iget-object v0, p0, Llho;->a:Llki;

    if-nez v0, :cond_1

    .line 1415
    new-instance v0, Llki;

    invoke-direct {v0}, Llki;-><init>()V

    iput-object v0, p0, Llho;->a:Llki;

    .line 1417
    :cond_1
    iget-object v0, p0, Llho;->a:Llki;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1421
    :sswitch_2
    iget-object v0, p0, Llho;->b:Llhn;

    if-nez v0, :cond_2

    .line 1422
    new-instance v0, Llhn;

    invoke-direct {v0}, Llhn;-><init>()V

    iput-object v0, p0, Llho;->b:Llhn;

    .line 1424
    :cond_2
    iget-object v0, p0, Llho;->b:Llhn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1428
    :sswitch_3
    iget-object v0, p0, Llho;->c:Llhn;

    if-nez v0, :cond_3

    .line 1429
    new-instance v0, Llhn;

    invoke-direct {v0}, Llhn;-><init>()V

    iput-object v0, p0, Llho;->c:Llhn;

    .line 1431
    :cond_3
    iget-object v0, p0, Llho;->c:Llhn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1435
    :sswitch_4
    iget-object v0, p0, Llho;->d:Llhn;

    if-nez v0, :cond_4

    .line 1436
    new-instance v0, Llhn;

    invoke-direct {v0}, Llhn;-><init>()V

    iput-object v0, p0, Llho;->d:Llhn;

    .line 1438
    :cond_4
    iget-object v0, p0, Llho;->d:Llhn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1404
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Llho;->a:Llki;

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x1

    iget-object v1, p0, Llho;->a:Llki;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 364
    :cond_0
    iget-object v0, p0, Llho;->b:Llhn;

    if-eqz v0, :cond_1

    .line 365
    const/4 v0, 0x2

    iget-object v1, p0, Llho;->b:Llhn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 367
    :cond_1
    iget-object v0, p0, Llho;->c:Llhn;

    if-eqz v0, :cond_2

    .line 368
    const/4 v0, 0x3

    iget-object v1, p0, Llho;->c:Llhn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 370
    :cond_2
    iget-object v0, p0, Llho;->d:Llhn;

    if-eqz v0, :cond_3

    .line 371
    const/4 v0, 0x4

    iget-object v1, p0, Llho;->d:Llhn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 373
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 374
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 378
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 379
    iget-object v1, p0, Llho;->a:Llki;

    if-eqz v1, :cond_0

    .line 380
    const/4 v1, 0x1

    iget-object v2, p0, Llho;->a:Llki;

    .line 381
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    :cond_0
    iget-object v1, p0, Llho;->b:Llhn;

    if-eqz v1, :cond_1

    .line 384
    const/4 v1, 0x2

    iget-object v2, p0, Llho;->b:Llhn;

    .line 385
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_1
    iget-object v1, p0, Llho;->c:Llhn;

    if-eqz v1, :cond_2

    .line 388
    const/4 v1, 0x3

    iget-object v2, p0, Llho;->c:Llhn;

    .line 389
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_2
    iget-object v1, p0, Llho;->d:Llhn;

    if-eqz v1, :cond_3

    .line 392
    const/4 v1, 0x4

    iget-object v2, p0, Llho;->d:Llhn;

    .line 393
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_3
    return v0
.end method
