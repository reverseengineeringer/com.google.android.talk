.class public final Lmcj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmcj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmcm;

.field public b:Lmcm;

.field public c:Lmcn;

.field public d:Lmcn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-direct {p0}, Llyb;-><init>()V

    .line 250
    iput-object v0, p0, Lmcj;->a:Lmcm;

    .line 251
    iput-object v0, p0, Lmcj;->b:Lmcm;

    .line 252
    iput-object v0, p0, Lmcj;->c:Lmcn;

    .line 253
    iput-object v0, p0, Lmcj;->d:Lmcn;

    .line 254
    iput-object v0, p0, Lmcj;->eD:Llyd;

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lmcj;->eE:I

    .line 256
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1303
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1304
    sparse-switch v0, :sswitch_data_0

    .line 1308
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1309
    :sswitch_0
    return-object p0

    .line 1314
    :sswitch_1
    iget-object v0, p0, Lmcj;->a:Lmcm;

    if-nez v0, :cond_1

    .line 1315
    new-instance v0, Lmcm;

    invoke-direct {v0}, Lmcm;-><init>()V

    iput-object v0, p0, Lmcj;->a:Lmcm;

    .line 1317
    :cond_1
    iget-object v0, p0, Lmcj;->a:Lmcm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1321
    :sswitch_2
    iget-object v0, p0, Lmcj;->b:Lmcm;

    if-nez v0, :cond_2

    .line 1322
    new-instance v0, Lmcm;

    invoke-direct {v0}, Lmcm;-><init>()V

    iput-object v0, p0, Lmcj;->b:Lmcm;

    .line 1324
    :cond_2
    iget-object v0, p0, Lmcj;->b:Lmcm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1328
    :sswitch_3
    iget-object v0, p0, Lmcj;->c:Lmcn;

    if-nez v0, :cond_3

    .line 1329
    new-instance v0, Lmcn;

    invoke-direct {v0}, Lmcn;-><init>()V

    iput-object v0, p0, Lmcj;->c:Lmcn;

    .line 1331
    :cond_3
    iget-object v0, p0, Lmcj;->c:Lmcn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1335
    :sswitch_4
    iget-object v0, p0, Lmcj;->d:Lmcn;

    if-nez v0, :cond_4

    .line 1336
    new-instance v0, Lmcn;

    invoke-direct {v0}, Lmcn;-><init>()V

    iput-object v0, p0, Lmcj;->d:Lmcn;

    .line 1338
    :cond_4
    iget-object v0, p0, Lmcj;->d:Lmcn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1304
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
    .line 261
    iget-object v0, p0, Lmcj;->a:Lmcm;

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x1

    iget-object v1, p0, Lmcj;->a:Lmcm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lmcj;->b:Lmcm;

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x2

    iget-object v1, p0, Lmcj;->b:Lmcm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 267
    :cond_1
    iget-object v0, p0, Lmcj;->c:Lmcn;

    if-eqz v0, :cond_2

    .line 268
    const/4 v0, 0x3

    iget-object v1, p0, Lmcj;->c:Lmcn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 270
    :cond_2
    iget-object v0, p0, Lmcj;->d:Lmcn;

    if-eqz v0, :cond_3

    .line 271
    const/4 v0, 0x4

    iget-object v1, p0, Lmcj;->d:Lmcn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 273
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 274
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 278
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 279
    iget-object v1, p0, Lmcj;->a:Lmcm;

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x1

    iget-object v2, p0, Lmcj;->a:Lmcm;

    .line 281
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    :cond_0
    iget-object v1, p0, Lmcj;->b:Lmcm;

    if-eqz v1, :cond_1

    .line 284
    const/4 v1, 0x2

    iget-object v2, p0, Lmcj;->b:Lmcm;

    .line 285
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    :cond_1
    iget-object v1, p0, Lmcj;->c:Lmcn;

    if-eqz v1, :cond_2

    .line 288
    const/4 v1, 0x3

    iget-object v2, p0, Lmcj;->c:Lmcn;

    .line 289
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    :cond_2
    iget-object v1, p0, Lmcj;->d:Lmcn;

    if-eqz v1, :cond_3

    .line 292
    const/4 v1, 0x4

    iget-object v2, p0, Lmcj;->d:Lmcn;

    .line 293
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    :cond_3
    return v0
.end method
