.class public final Lmrm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmrm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmrp;

.field public b:Lmrp;

.field public c:Lmrq;

.field public d:Lmrq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1268
    iput-object v0, p0, Lmrm;->a:Lmrp;

    .line 1269
    iput-object v0, p0, Lmrm;->b:Lmrp;

    .line 1270
    iput-object v0, p0, Lmrm;->c:Lmrq;

    .line 1271
    iput-object v0, p0, Lmrm;->d:Lmrq;

    .line 1272
    iput-object v0, p0, Lmrm;->eD:Llyd;

    .line 1273
    const/4 v0, -0x1

    iput v0, p0, Lmrm;->eE:I

    .line 265
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1322
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1323
    sparse-switch v0, :sswitch_data_0

    .line 1327
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    :sswitch_0
    return-object p0

    .line 1333
    :sswitch_1
    iget-object v0, p0, Lmrm;->a:Lmrp;

    if-nez v0, :cond_1

    .line 1334
    new-instance v0, Lmrp;

    invoke-direct {v0}, Lmrp;-><init>()V

    iput-object v0, p0, Lmrm;->a:Lmrp;

    .line 1336
    :cond_1
    iget-object v0, p0, Lmrm;->a:Lmrp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1340
    :sswitch_2
    iget-object v0, p0, Lmrm;->b:Lmrp;

    if-nez v0, :cond_2

    .line 1341
    new-instance v0, Lmrp;

    invoke-direct {v0}, Lmrp;-><init>()V

    iput-object v0, p0, Lmrm;->b:Lmrp;

    .line 1343
    :cond_2
    iget-object v0, p0, Lmrm;->b:Lmrp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1347
    :sswitch_3
    iget-object v0, p0, Lmrm;->c:Lmrq;

    if-nez v0, :cond_3

    .line 1348
    new-instance v0, Lmrq;

    invoke-direct {v0}, Lmrq;-><init>()V

    iput-object v0, p0, Lmrm;->c:Lmrq;

    .line 1350
    :cond_3
    iget-object v0, p0, Lmrm;->c:Lmrq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1354
    :sswitch_4
    iget-object v0, p0, Lmrm;->d:Lmrq;

    if-nez v0, :cond_4

    .line 1355
    new-instance v0, Lmrq;

    invoke-direct {v0}, Lmrq;-><init>()V

    iput-object v0, p0, Lmrm;->d:Lmrq;

    .line 1357
    :cond_4
    iget-object v0, p0, Lmrm;->d:Lmrq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1323
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
    .line 280
    iget-object v0, p0, Lmrm;->a:Lmrp;

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    iget-object v1, p0, Lmrm;->a:Lmrp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lmrm;->b:Lmrp;

    if-eqz v0, :cond_1

    .line 284
    const/4 v0, 0x2

    iget-object v1, p0, Lmrm;->b:Lmrp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 286
    :cond_1
    iget-object v0, p0, Lmrm;->c:Lmrq;

    if-eqz v0, :cond_2

    .line 287
    const/4 v0, 0x3

    iget-object v1, p0, Lmrm;->c:Lmrq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 289
    :cond_2
    iget-object v0, p0, Lmrm;->d:Lmrq;

    if-eqz v0, :cond_3

    .line 290
    const/4 v0, 0x4

    iget-object v1, p0, Lmrm;->d:Lmrq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 292
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 293
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 297
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 298
    iget-object v1, p0, Lmrm;->a:Lmrp;

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x1

    iget-object v2, p0, Lmrm;->a:Lmrp;

    .line 300
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    :cond_0
    iget-object v1, p0, Lmrm;->b:Lmrp;

    if-eqz v1, :cond_1

    .line 303
    const/4 v1, 0x2

    iget-object v2, p0, Lmrm;->b:Lmrp;

    .line 304
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_1
    iget-object v1, p0, Lmrm;->c:Lmrq;

    if-eqz v1, :cond_2

    .line 307
    const/4 v1, 0x3

    iget-object v2, p0, Lmrm;->c:Lmrq;

    .line 308
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_2
    iget-object v1, p0, Lmrm;->d:Lmrq;

    if-eqz v1, :cond_3

    .line 311
    const/4 v1, 0x4

    iget-object v2, p0, Lmrm;->d:Lmrq;

    .line 312
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    :cond_3
    return v0
.end method
