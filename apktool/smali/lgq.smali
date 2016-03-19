.class public final Llgq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llpi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-direct {p0}, Llyb;-><init>()V

    .line 332
    iput-object v0, p0, Llgq;->a:Llpi;

    .line 333
    iput-object v0, p0, Llgq;->eD:Llyd;

    .line 334
    const/4 v0, -0x1

    iput v0, p0, Llgq;->eE:I

    .line 335
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1361
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1362
    sparse-switch v0, :sswitch_data_0

    .line 1366
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    :sswitch_0
    return-object p0

    .line 1372
    :sswitch_1
    iget-object v0, p0, Llgq;->a:Llpi;

    if-nez v0, :cond_1

    .line 1373
    new-instance v0, Llpi;

    invoke-direct {v0}, Llpi;-><init>()V

    iput-object v0, p0, Llgq;->a:Llpi;

    .line 1375
    :cond_1
    iget-object v0, p0, Llgq;->a:Llpi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1362
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
    .line 340
    iget-object v0, p0, Llgq;->a:Llpi;

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    iget-object v1, p0, Llgq;->a:Llpi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 343
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 344
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 348
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 349
    iget-object v1, p0, Llgq;->a:Llpi;

    if-eqz v1, :cond_0

    .line 350
    const/4 v1, 0x1

    iget-object v2, p0, Llgq;->a:Llpi;

    .line 351
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_0
    return v0
.end method
