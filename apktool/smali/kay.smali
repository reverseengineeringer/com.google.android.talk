.class public final Lkay;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkay;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/String;

.field public c:Lkfh;

.field public d:Lkev;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11196
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12201
    iput-object v0, p0, Lkay;->a:Ljxw;

    .line 12202
    iput-object v0, p0, Lkay;->b:Ljava/lang/String;

    .line 12203
    iput-object v0, p0, Lkay;->c:Lkfh;

    .line 12204
    iput-object v0, p0, Lkay;->d:Lkev;

    .line 12205
    iput-object v0, p0, Lkay;->eD:Llyd;

    .line 12206
    const/4 v0, -0x1

    iput v0, p0, Lkay;->eE:I

    .line 11198
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 12255
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12256
    sparse-switch v0, :sswitch_data_0

    .line 12260
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12261
    :sswitch_0
    return-object p0

    .line 12266
    :sswitch_1
    iget-object v0, p0, Lkay;->a:Ljxw;

    if-nez v0, :cond_1

    .line 12267
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkay;->a:Ljxw;

    .line 12269
    :cond_1
    iget-object v0, p0, Lkay;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12273
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkay;->b:Ljava/lang/String;

    goto :goto_0

    .line 12277
    :sswitch_3
    iget-object v0, p0, Lkay;->c:Lkfh;

    if-nez v0, :cond_2

    .line 12278
    new-instance v0, Lkfh;

    invoke-direct {v0}, Lkfh;-><init>()V

    iput-object v0, p0, Lkay;->c:Lkfh;

    .line 12280
    :cond_2
    iget-object v0, p0, Lkay;->c:Lkfh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12284
    :sswitch_4
    iget-object v0, p0, Lkay;->d:Lkev;

    if-nez v0, :cond_3

    .line 12285
    new-instance v0, Lkev;

    invoke-direct {v0}, Lkev;-><init>()V

    iput-object v0, p0, Lkay;->d:Lkev;

    .line 12287
    :cond_3
    iget-object v0, p0, Lkay;->d:Lkev;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12256
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
    .line 11213
    iget-object v0, p0, Lkay;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 11214
    const/4 v0, 0x1

    iget-object v1, p0, Lkay;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11216
    :cond_0
    iget-object v0, p0, Lkay;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11217
    const/4 v0, 0x2

    iget-object v1, p0, Lkay;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 11219
    :cond_1
    iget-object v0, p0, Lkay;->c:Lkfh;

    if-eqz v0, :cond_2

    .line 11220
    const/4 v0, 0x3

    iget-object v1, p0, Lkay;->c:Lkfh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11222
    :cond_2
    iget-object v0, p0, Lkay;->d:Lkev;

    if-eqz v0, :cond_3

    .line 11223
    const/4 v0, 0x4

    iget-object v1, p0, Lkay;->d:Lkev;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11225
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11226
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 11230
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11231
    iget-object v1, p0, Lkay;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 11232
    const/4 v1, 0x1

    iget-object v2, p0, Lkay;->a:Ljxw;

    .line 11233
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11235
    :cond_0
    iget-object v1, p0, Lkay;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 11236
    const/4 v1, 0x2

    iget-object v2, p0, Lkay;->b:Ljava/lang/String;

    .line 11237
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11239
    :cond_1
    iget-object v1, p0, Lkay;->c:Lkfh;

    if-eqz v1, :cond_2

    .line 11240
    const/4 v1, 0x3

    iget-object v2, p0, Lkay;->c:Lkfh;

    .line 11241
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11243
    :cond_2
    iget-object v1, p0, Lkay;->d:Lkev;

    if-eqz v1, :cond_3

    .line 11244
    const/4 v1, 0x4

    iget-object v2, p0, Lkay;->d:Lkev;

    .line 11245
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11247
    :cond_3
    return v0
.end method
