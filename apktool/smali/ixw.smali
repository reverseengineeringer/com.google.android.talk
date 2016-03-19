.class public final Lixw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lixx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1347
    iput-object v0, p0, Lixw;->a:Lixx;

    .line 1348
    iput-object v0, p0, Lixw;->eD:Llyd;

    .line 1349
    const/4 v0, -0x1

    iput v0, p0, Lixw;->eE:I

    .line 344
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1377
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1378
    sparse-switch v0, :sswitch_data_0

    .line 1382
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1383
    :sswitch_0
    return-object p0

    .line 1388
    :sswitch_1
    iget-object v0, p0, Lixw;->a:Lixx;

    if-nez v0, :cond_1

    .line 1389
    new-instance v0, Lixx;

    invoke-direct {v0}, Lixx;-><init>()V

    iput-object v0, p0, Lixw;->a:Lixx;

    .line 1391
    :cond_1
    iget-object v0, p0, Lixw;->a:Lixx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1378
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lixw;->a:Lixx;

    if-eqz v0, :cond_0

    .line 357
    const/4 v0, 0x1

    iget-object v1, p0, Lixw;->a:Lixx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 359
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 360
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 364
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 365
    iget-object v1, p0, Lixw;->a:Lixx;

    if-eqz v1, :cond_0

    .line 366
    const/4 v1, 0x1

    iget-object v2, p0, Lixw;->a:Lixx;

    .line 367
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_0
    return v0
.end method
