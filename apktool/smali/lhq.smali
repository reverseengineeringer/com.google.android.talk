.class public final Llhq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Llhr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1232
    iput-object v0, p0, Llhq;->a:Ljava/lang/Boolean;

    .line 1233
    iput-object v0, p0, Llhq;->b:Llhr;

    .line 1234
    iput-object v0, p0, Llhq;->eD:Llyd;

    .line 1235
    const/4 v0, -0x1

    iput v0, p0, Llhq;->eE:I

    .line 229
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2271
    sparse-switch v0, :sswitch_data_0

    .line 2275
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2276
    :sswitch_0
    return-object p0

    .line 2281
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llhq;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2285
    :sswitch_2
    iget-object v0, p0, Llhq;->b:Llhr;

    if-nez v0, :cond_1

    .line 2286
    new-instance v0, Llhr;

    invoke-direct {v0}, Llhr;-><init>()V

    iput-object v0, p0, Llhq;->b:Llhr;

    .line 2288
    :cond_1
    iget-object v0, p0, Llhq;->b:Llhr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2271
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
    .line 242
    iget-object v0, p0, Llhq;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    iget-object v1, p0, Llhq;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 245
    :cond_0
    iget-object v0, p0, Llhq;->b:Llhr;

    if-eqz v0, :cond_1

    .line 246
    const/4 v0, 0x2

    iget-object v1, p0, Llhq;->b:Llhr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 248
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 249
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 254
    iget-object v1, p0, Llhq;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x1

    iget-object v2, p0, Llhq;->a:Ljava/lang/Boolean;

    .line 256
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 256
    add-int/2addr v0, v1

    .line 258
    :cond_0
    iget-object v1, p0, Llhq;->b:Llhr;

    if-eqz v1, :cond_1

    .line 259
    const/4 v1, 0x2

    iget-object v2, p0, Llhq;->b:Llhr;

    .line 260
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_1
    return v0
.end method
