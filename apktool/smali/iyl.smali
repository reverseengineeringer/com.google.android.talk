.class public final Liyl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljcz;

.field public apiHeader:Liyd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1352
    iput-object v0, p0, Liyl;->apiHeader:Liyd;

    .line 1353
    iput-object v0, p0, Liyl;->a:Ljcz;

    .line 1354
    iput-object v0, p0, Liyl;->eD:Llyd;

    .line 1355
    const/4 v0, -0x1

    iput v0, p0, Liyl;->eE:I

    .line 349
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1390
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1391
    sparse-switch v0, :sswitch_data_0

    .line 1395
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    :sswitch_0
    return-object p0

    .line 1401
    :sswitch_1
    iget-object v0, p0, Liyl;->apiHeader:Liyd;

    if-nez v0, :cond_1

    .line 1402
    new-instance v0, Liyd;

    invoke-direct {v0}, Liyd;-><init>()V

    iput-object v0, p0, Liyl;->apiHeader:Liyd;

    .line 1404
    :cond_1
    iget-object v0, p0, Liyl;->apiHeader:Liyd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1408
    :sswitch_2
    iget-object v0, p0, Liyl;->a:Ljcz;

    if-nez v0, :cond_2

    .line 1409
    new-instance v0, Ljcz;

    invoke-direct {v0}, Ljcz;-><init>()V

    iput-object v0, p0, Liyl;->a:Ljcz;

    .line 1411
    :cond_2
    iget-object v0, p0, Liyl;->a:Ljcz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1391
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
    .line 362
    iget-object v0, p0, Liyl;->apiHeader:Liyd;

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    iget-object v1, p0, Liyl;->apiHeader:Liyd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 365
    :cond_0
    iget-object v0, p0, Liyl;->a:Ljcz;

    if-eqz v0, :cond_1

    .line 366
    const/4 v0, 0x2

    iget-object v1, p0, Liyl;->a:Ljcz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 368
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 369
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 373
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 374
    iget-object v1, p0, Liyl;->apiHeader:Liyd;

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x1

    iget-object v2, p0, Liyl;->apiHeader:Liyd;

    .line 376
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_0
    iget-object v1, p0, Liyl;->a:Ljcz;

    if-eqz v1, :cond_1

    .line 379
    const/4 v1, 0x2

    iget-object v2, p0, Liyl;->a:Ljcz;

    .line 380
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_1
    return v0
.end method
