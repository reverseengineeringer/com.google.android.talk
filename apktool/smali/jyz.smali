.class public final Ljyz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21337
    invoke-direct {p0}, Llyb;-><init>()V

    .line 22342
    iput-object v0, p0, Ljyz;->a:Ljava/lang/Boolean;

    .line 22343
    iput-object v0, p0, Ljyz;->b:Ljava/lang/Long;

    .line 22344
    iput-object v0, p0, Ljyz;->c:Ljava/lang/Long;

    .line 22345
    iput-object v0, p0, Ljyz;->eD:Llyd;

    .line 22346
    const/4 v0, -0x1

    iput v0, p0, Ljyz;->eE:I

    .line 21339
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 23388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 23389
    sparse-switch v0, :sswitch_data_0

    .line 23393
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23394
    :sswitch_0
    return-object p0

    .line 23399
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyz;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 23403
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljyz;->b:Ljava/lang/Long;

    goto :goto_0

    .line 23407
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljyz;->c:Ljava/lang/Long;

    goto :goto_0

    .line 23389
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 21353
    iget-object v0, p0, Ljyz;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 21354
    const/4 v0, 0x1

    iget-object v1, p0, Ljyz;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 21356
    :cond_0
    iget-object v0, p0, Ljyz;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 21357
    const/4 v0, 0x2

    iget-object v1, p0, Ljyz;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 21359
    :cond_1
    iget-object v0, p0, Ljyz;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 21360
    const/4 v0, 0x3

    iget-object v1, p0, Ljyz;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 21362
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 21363
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 21367
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 21368
    iget-object v1, p0, Ljyz;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 21369
    const/4 v1, 0x1

    iget-object v2, p0, Ljyz;->a:Ljava/lang/Boolean;

    .line 21370
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 21370
    add-int/2addr v0, v1

    .line 21372
    :cond_0
    iget-object v1, p0, Ljyz;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 21373
    const/4 v1, 0x2

    iget-object v2, p0, Ljyz;->b:Ljava/lang/Long;

    .line 21374
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21376
    :cond_1
    iget-object v1, p0, Ljyz;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 21377
    const/4 v1, 0x3

    iget-object v2, p0, Ljyz;->c:Ljava/lang/Long;

    .line 21378
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21380
    :cond_2
    return v0
.end method
