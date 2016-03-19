.class public final Lkan;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkan;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llcf;

.field public b:Llcf;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34177
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35182
    iput-object v0, p0, Lkan;->requestHeader:Lkdo;

    .line 35183
    iput-object v0, p0, Lkan;->a:Llcf;

    .line 35184
    iput-object v0, p0, Lkan;->b:Llcf;

    .line 35185
    iput-object v0, p0, Lkan;->eD:Llyd;

    .line 35186
    const/4 v0, -0x1

    iput v0, p0, Lkan;->eE:I

    .line 34179
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 35228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 35229
    sparse-switch v0, :sswitch_data_0

    .line 35233
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35234
    :sswitch_0
    return-object p0

    .line 35239
    :sswitch_1
    iget-object v0, p0, Lkan;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 35240
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkan;->requestHeader:Lkdo;

    .line 35242
    :cond_1
    iget-object v0, p0, Lkan;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 35246
    :sswitch_2
    iget-object v0, p0, Lkan;->a:Llcf;

    if-nez v0, :cond_2

    .line 35247
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkan;->a:Llcf;

    .line 35249
    :cond_2
    iget-object v0, p0, Lkan;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 35253
    :sswitch_3
    iget-object v0, p0, Lkan;->b:Llcf;

    if-nez v0, :cond_3

    .line 35254
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkan;->b:Llcf;

    .line 35256
    :cond_3
    iget-object v0, p0, Lkan;->b:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 35229
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
    .line 34193
    iget-object v0, p0, Lkan;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 34194
    const/4 v0, 0x1

    iget-object v1, p0, Lkan;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 34196
    :cond_0
    iget-object v0, p0, Lkan;->a:Llcf;

    if-eqz v0, :cond_1

    .line 34197
    const/4 v0, 0x2

    iget-object v1, p0, Lkan;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 34199
    :cond_1
    iget-object v0, p0, Lkan;->b:Llcf;

    if-eqz v0, :cond_2

    .line 34200
    const/4 v0, 0x3

    iget-object v1, p0, Lkan;->b:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 34202
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 34203
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 34207
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 34208
    iget-object v1, p0, Lkan;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 34209
    const/4 v1, 0x1

    iget-object v2, p0, Lkan;->requestHeader:Lkdo;

    .line 34210
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34212
    :cond_0
    iget-object v1, p0, Lkan;->a:Llcf;

    if-eqz v1, :cond_1

    .line 34213
    const/4 v1, 0x2

    iget-object v2, p0, Lkan;->a:Llcf;

    .line 34214
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34216
    :cond_1
    iget-object v1, p0, Lkan;->b:Llcf;

    if-eqz v1, :cond_2

    .line 34217
    const/4 v1, 0x3

    iget-object v2, p0, Lkan;->b:Llcf;

    .line 34218
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34220
    :cond_2
    return v0
.end method
