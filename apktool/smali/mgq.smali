.class public final Lmgq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmgl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1277
    iput-object v0, p0, Lmgq;->a:Lmgl;

    .line 1278
    iput-object v0, p0, Lmgq;->eD:Llyd;

    .line 1279
    const/4 v0, -0x1

    iput v0, p0, Lmgq;->eE:I

    .line 274
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1307
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1308
    sparse-switch v0, :sswitch_data_0

    .line 1312
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    :sswitch_0
    return-object p0

    .line 1318
    :sswitch_1
    iget-object v0, p0, Lmgq;->a:Lmgl;

    if-nez v0, :cond_1

    .line 1319
    new-instance v0, Lmgl;

    invoke-direct {v0}, Lmgl;-><init>()V

    iput-object v0, p0, Lmgq;->a:Lmgl;

    .line 1321
    :cond_1
    iget-object v0, p0, Lmgq;->a:Lmgl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1308
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
    .line 286
    iget-object v0, p0, Lmgq;->a:Lmgl;

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x1

    iget-object v1, p0, Lmgq;->a:Lmgl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 289
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 290
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 294
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 295
    iget-object v1, p0, Lmgq;->a:Lmgl;

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x1

    iget-object v2, p0, Lmgq;->a:Lmgl;

    .line 297
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :cond_0
    return v0
.end method
