.class public final Llox;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llox;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lloy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1268
    iput-object v0, p0, Llox;->a:Ljava/lang/Boolean;

    .line 1269
    iput-object v0, p0, Llox;->b:Lloy;

    .line 1270
    iput-object v0, p0, Llox;->eD:Llyd;

    .line 1271
    const/4 v0, -0x1

    iput v0, p0, Llox;->eE:I

    .line 265
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2307
    sparse-switch v0, :sswitch_data_0

    .line 2311
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2312
    :sswitch_0
    return-object p0

    .line 2317
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llox;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2321
    :sswitch_2
    iget-object v0, p0, Llox;->b:Lloy;

    if-nez v0, :cond_1

    .line 2322
    new-instance v0, Lloy;

    invoke-direct {v0}, Lloy;-><init>()V

    iput-object v0, p0, Llox;->b:Lloy;

    .line 2324
    :cond_1
    iget-object v0, p0, Llox;->b:Lloy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2307
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Llox;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iget-object v1, p0, Llox;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 281
    :cond_0
    iget-object v0, p0, Llox;->b:Lloy;

    if-eqz v0, :cond_1

    .line 282
    const/4 v0, 0x2

    iget-object v1, p0, Llox;->b:Lloy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 284
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 285
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 289
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 290
    iget-object v1, p0, Llox;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 291
    const/4 v1, 0x1

    iget-object v2, p0, Llox;->a:Ljava/lang/Boolean;

    .line 292
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 292
    add-int/2addr v0, v1

    .line 294
    :cond_0
    iget-object v1, p0, Llox;->b:Lloy;

    if-eqz v1, :cond_1

    .line 295
    const/4 v1, 0x2

    iget-object v2, p0, Llox;->b:Lloy;

    .line 296
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_1
    return v0
.end method
