.class public final Lloa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lloa;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2238
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3243
    iput-object v0, p0, Lloa;->a:Ljava/lang/String;

    .line 3244
    iput-object v0, p0, Lloa;->b:Ljava/lang/String;

    .line 3245
    iput-object v0, p0, Lloa;->eD:Llyd;

    .line 3246
    const/4 v0, -0x1

    iput v0, p0, Lloa;->eE:I

    .line 2240
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3281
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3282
    sparse-switch v0, :sswitch_data_0

    .line 3286
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3287
    :sswitch_0
    return-object p0

    .line 3292
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloa;->a:Ljava/lang/String;

    goto :goto_0

    .line 3296
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloa;->b:Ljava/lang/String;

    goto :goto_0

    .line 3282
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2253
    iget-object v0, p0, Lloa;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2254
    const/4 v0, 0x1

    iget-object v1, p0, Lloa;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2256
    :cond_0
    iget-object v0, p0, Lloa;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2257
    const/4 v0, 0x2

    iget-object v1, p0, Lloa;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2259
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2260
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2264
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2265
    iget-object v1, p0, Lloa;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2266
    const/4 v1, 0x1

    iget-object v2, p0, Lloa;->a:Ljava/lang/String;

    .line 2267
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2269
    :cond_0
    iget-object v1, p0, Lloa;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2270
    const/4 v1, 0x2

    iget-object v2, p0, Lloa;->b:Ljava/lang/String;

    .line 2271
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2273
    :cond_1
    return v0
.end method
