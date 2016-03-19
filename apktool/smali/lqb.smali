.class public final Llqb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llpy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 317
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1322
    iput-object v0, p0, Llqb;->a:Llpy;

    .line 1323
    iput-object v0, p0, Llqb;->eD:Llyd;

    .line 1324
    const/4 v0, -0x1

    iput v0, p0, Llqb;->eE:I

    .line 319
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1352
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1353
    sparse-switch v0, :sswitch_data_0

    .line 1357
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    :sswitch_0
    return-object p0

    .line 1363
    :sswitch_1
    iget-object v0, p0, Llqb;->a:Llpy;

    if-nez v0, :cond_1

    .line 1364
    new-instance v0, Llpy;

    invoke-direct {v0}, Llpy;-><init>()V

    iput-object v0, p0, Llqb;->a:Llpy;

    .line 1366
    :cond_1
    iget-object v0, p0, Llqb;->a:Llpy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1353
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Llqb;->a:Llpy;

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x2

    iget-object v1, p0, Llqb;->a:Llpy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 334
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 335
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 339
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 340
    iget-object v1, p0, Llqb;->a:Llpy;

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, 0x2

    iget-object v2, p0, Llqb;->a:Llpy;

    .line 342
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_0
    return v0
.end method
