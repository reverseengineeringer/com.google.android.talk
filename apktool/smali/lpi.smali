.class public final Llpi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llpi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Llpj;

.field public c:Llpk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-direct {p0}, Llyb;-><init>()V

    .line 273
    iput-object v0, p0, Llpi;->a:Ljava/lang/String;

    .line 274
    iput-object v0, p0, Llpi;->b:Llpj;

    .line 275
    iput-object v0, p0, Llpi;->c:Llpk;

    .line 276
    iput-object v0, p0, Llpi;->eD:Llyd;

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Llpi;->eE:I

    .line 278
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1318
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1319
    sparse-switch v0, :sswitch_data_0

    .line 1323
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1324
    :sswitch_0
    return-object p0

    .line 1329
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llpi;->a:Ljava/lang/String;

    goto :goto_0

    .line 1333
    :sswitch_2
    iget-object v0, p0, Llpi;->b:Llpj;

    if-nez v0, :cond_1

    .line 1334
    new-instance v0, Llpj;

    invoke-direct {v0}, Llpj;-><init>()V

    iput-object v0, p0, Llpi;->b:Llpj;

    .line 1336
    :cond_1
    iget-object v0, p0, Llpi;->b:Llpj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1340
    :sswitch_3
    iget-object v0, p0, Llpi;->c:Llpk;

    if-nez v0, :cond_2

    .line 1341
    new-instance v0, Llpk;

    invoke-direct {v0}, Llpk;-><init>()V

    iput-object v0, p0, Llpi;->c:Llpk;

    .line 1343
    :cond_2
    iget-object v0, p0, Llpi;->c:Llpk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1319
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
    .line 283
    iget-object v0, p0, Llpi;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    iget-object v1, p0, Llpi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Llpi;->b:Llpj;

    if-eqz v0, :cond_1

    .line 287
    const/4 v0, 0x2

    iget-object v1, p0, Llpi;->b:Llpj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 289
    :cond_1
    iget-object v0, p0, Llpi;->c:Llpk;

    if-eqz v0, :cond_2

    .line 290
    const/4 v0, 0x3

    iget-object v1, p0, Llpi;->c:Llpk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 292
    :cond_2
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
    iget-object v1, p0, Llpi;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x1

    iget-object v2, p0, Llpi;->a:Ljava/lang/String;

    .line 300
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    :cond_0
    iget-object v1, p0, Llpi;->b:Llpj;

    if-eqz v1, :cond_1

    .line 303
    const/4 v1, 0x2

    iget-object v2, p0, Llpi;->b:Llpj;

    .line 304
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_1
    iget-object v1, p0, Llpi;->c:Llpk;

    if-eqz v1, :cond_2

    .line 307
    const/4 v1, 0x3

    iget-object v2, p0, Llpi;->c:Llpk;

    .line 308
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_2
    return v0
.end method
