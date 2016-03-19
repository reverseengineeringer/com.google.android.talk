.class public final Ljfv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljfu;

.field public b:Ljfu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4309
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4310
    iput-object v0, p0, Ljfv;->a:Ljfu;

    .line 4311
    iput-object v0, p0, Ljfv;->b:Ljfu;

    .line 4312
    iput-object v0, p0, Ljfv;->eD:Llyd;

    .line 4313
    const/4 v0, -0x1

    iput v0, p0, Ljfv;->eE:I

    .line 4314
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5347
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5348
    sparse-switch v0, :sswitch_data_0

    .line 5352
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5353
    :sswitch_0
    return-object p0

    .line 5358
    :sswitch_1
    iget-object v0, p0, Ljfv;->a:Ljfu;

    if-nez v0, :cond_1

    .line 5359
    new-instance v0, Ljfu;

    invoke-direct {v0}, Ljfu;-><init>()V

    iput-object v0, p0, Ljfv;->a:Ljfu;

    .line 5361
    :cond_1
    iget-object v0, p0, Ljfv;->a:Ljfu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5365
    :sswitch_2
    iget-object v0, p0, Ljfv;->b:Ljfu;

    if-nez v0, :cond_2

    .line 5366
    new-instance v0, Ljfu;

    invoke-direct {v0}, Ljfu;-><init>()V

    iput-object v0, p0, Ljfv;->b:Ljfu;

    .line 5368
    :cond_2
    iget-object v0, p0, Ljfv;->b:Ljfu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5348
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
    .line 4319
    iget-object v0, p0, Ljfv;->a:Ljfu;

    if-eqz v0, :cond_0

    .line 4320
    const/4 v0, 0x1

    iget-object v1, p0, Ljfv;->a:Ljfu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4322
    :cond_0
    iget-object v0, p0, Ljfv;->b:Ljfu;

    if-eqz v0, :cond_1

    .line 4323
    const/4 v0, 0x2

    iget-object v1, p0, Ljfv;->b:Ljfu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4325
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4326
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4330
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4331
    iget-object v1, p0, Ljfv;->a:Ljfu;

    if-eqz v1, :cond_0

    .line 4332
    const/4 v1, 0x1

    iget-object v2, p0, Ljfv;->a:Ljfu;

    .line 4333
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4335
    :cond_0
    iget-object v1, p0, Ljfv;->b:Ljfu;

    if-eqz v1, :cond_1

    .line 4336
    const/4 v1, 0x2

    iget-object v2, p0, Ljfv;->b:Ljfu;

    .line 4337
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4339
    :cond_1
    return v0
.end method
