.class public final Llhj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llhk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1250
    iput-object v0, p0, Llhj;->a:Llhk;

    .line 1251
    iput-object v0, p0, Llhj;->eD:Llyd;

    .line 1252
    const/4 v0, -0x1

    iput v0, p0, Llhj;->eE:I

    .line 247
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1280
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1281
    sparse-switch v0, :sswitch_data_0

    .line 1285
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    :sswitch_0
    return-object p0

    .line 1291
    :sswitch_1
    iget-object v0, p0, Llhj;->a:Llhk;

    if-nez v0, :cond_1

    .line 1292
    new-instance v0, Llhk;

    invoke-direct {v0}, Llhk;-><init>()V

    iput-object v0, p0, Llhj;->a:Llhk;

    .line 1294
    :cond_1
    iget-object v0, p0, Llhj;->a:Llhk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1281
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
    .line 259
    iget-object v0, p0, Llhj;->a:Llhk;

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x1

    iget-object v1, p0, Llhj;->a:Llhk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 262
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 263
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 267
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 268
    iget-object v1, p0, Llhj;->a:Llhk;

    if-eqz v1, :cond_0

    .line 269
    const/4 v1, 0x1

    iget-object v2, p0, Llhj;->a:Llhk;

    .line 270
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_0
    return v0
.end method
