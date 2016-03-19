.class public final Lljs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lljs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lljt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1208
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2213
    iput-object v0, p0, Lljs;->a:Lljt;

    .line 2214
    iput-object v0, p0, Lljs;->eD:Llyd;

    .line 2215
    const/4 v0, -0x1

    iput v0, p0, Lljs;->eE:I

    .line 1210
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2243
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2244
    sparse-switch v0, :sswitch_data_0

    .line 2248
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2249
    :sswitch_0
    return-object p0

    .line 2254
    :sswitch_1
    iget-object v0, p0, Lljs;->a:Lljt;

    if-nez v0, :cond_1

    .line 2255
    new-instance v0, Lljt;

    invoke-direct {v0}, Lljt;-><init>()V

    iput-object v0, p0, Lljs;->a:Lljt;

    .line 2257
    :cond_1
    iget-object v0, p0, Lljs;->a:Lljt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2244
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
    .line 1222
    iget-object v0, p0, Lljs;->a:Lljt;

    if-eqz v0, :cond_0

    .line 1223
    const/4 v0, 0x2

    iget-object v1, p0, Lljs;->a:Lljt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1225
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1226
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1230
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1231
    iget-object v1, p0, Lljs;->a:Lljt;

    if-eqz v1, :cond_0

    .line 1232
    const/4 v1, 0x2

    iget-object v2, p0, Lljs;->a:Lljt;

    .line 1233
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1235
    :cond_0
    return v0
.end method
