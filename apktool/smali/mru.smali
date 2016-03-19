.class public final Lmru;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmru;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmrv;

.field public b:Lmrr;

.field public c:Lmsb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1238
    iput-object v0, p0, Lmru;->a:Lmrv;

    .line 1239
    iput-object v0, p0, Lmru;->b:Lmrr;

    .line 1240
    iput-object v0, p0, Lmru;->c:Lmsb;

    .line 1241
    iput-object v0, p0, Lmru;->eD:Llyd;

    .line 1242
    const/4 v0, -0x1

    iput v0, p0, Lmru;->eE:I

    .line 235
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1284
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1285
    sparse-switch v0, :sswitch_data_0

    .line 1289
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    :sswitch_0
    return-object p0

    .line 1295
    :sswitch_1
    iget-object v0, p0, Lmru;->a:Lmrv;

    if-nez v0, :cond_1

    .line 1296
    new-instance v0, Lmrv;

    invoke-direct {v0}, Lmrv;-><init>()V

    iput-object v0, p0, Lmru;->a:Lmrv;

    .line 1298
    :cond_1
    iget-object v0, p0, Lmru;->a:Lmrv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1302
    :sswitch_2
    iget-object v0, p0, Lmru;->b:Lmrr;

    if-nez v0, :cond_2

    .line 1303
    new-instance v0, Lmrr;

    invoke-direct {v0}, Lmrr;-><init>()V

    iput-object v0, p0, Lmru;->b:Lmrr;

    .line 1305
    :cond_2
    iget-object v0, p0, Lmru;->b:Lmrr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1309
    :sswitch_3
    iget-object v0, p0, Lmru;->c:Lmsb;

    if-nez v0, :cond_3

    .line 1310
    new-instance v0, Lmsb;

    invoke-direct {v0}, Lmsb;-><init>()V

    iput-object v0, p0, Lmru;->c:Lmsb;

    .line 1312
    :cond_3
    iget-object v0, p0, Lmru;->c:Lmsb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1285
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
    .line 249
    iget-object v0, p0, Lmru;->a:Lmrv;

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    iget-object v1, p0, Lmru;->a:Lmrv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lmru;->b:Lmrr;

    if-eqz v0, :cond_1

    .line 253
    const/4 v0, 0x2

    iget-object v1, p0, Lmru;->b:Lmrr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lmru;->c:Lmsb;

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, 0x3

    iget-object v1, p0, Lmru;->c:Lmsb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 258
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 259
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 263
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 264
    iget-object v1, p0, Lmru;->a:Lmrv;

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x1

    iget-object v2, p0, Lmru;->a:Lmrv;

    .line 266
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    :cond_0
    iget-object v1, p0, Lmru;->b:Lmrr;

    if-eqz v1, :cond_1

    .line 269
    const/4 v1, 0x2

    iget-object v2, p0, Lmru;->b:Lmrr;

    .line 270
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_1
    iget-object v1, p0, Lmru;->c:Lmsb;

    if-eqz v1, :cond_2

    .line 273
    const/4 v1, 0x3

    iget-object v2, p0, Lmru;->c:Lmsb;

    .line 274
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_2
    return v0
.end method
