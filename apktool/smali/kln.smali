.class public final Lkln;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkln;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2169
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3174
    iput-object v0, p0, Lkln;->a:Ljava/lang/String;

    .line 3175
    iput-object v0, p0, Lkln;->b:Ljava/lang/Boolean;

    .line 3176
    iput-object v0, p0, Lkln;->c:Ljava/lang/Boolean;

    .line 3177
    iput-object v0, p0, Lkln;->d:Ljava/lang/Boolean;

    .line 3178
    iput-object v0, p0, Lkln;->eD:Llyd;

    .line 3179
    const/4 v0, -0x1

    iput v0, p0, Lkln;->eE:I

    .line 2171
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6229
    sparse-switch v0, :sswitch_data_0

    .line 6233
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6234
    :sswitch_0
    return-object p0

    .line 6239
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkln;->a:Ljava/lang/String;

    goto :goto_0

    .line 6243
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkln;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 6247
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkln;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 6251
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkln;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 6229
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2186
    iget-object v0, p0, Lkln;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2187
    const/4 v0, 0x1

    iget-object v1, p0, Lkln;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2189
    :cond_0
    iget-object v0, p0, Lkln;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 2190
    const/4 v0, 0x2

    iget-object v1, p0, Lkln;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2192
    :cond_1
    iget-object v0, p0, Lkln;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 2193
    const/4 v0, 0x3

    iget-object v1, p0, Lkln;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2195
    :cond_2
    iget-object v0, p0, Lkln;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2196
    const/4 v0, 0x4

    iget-object v1, p0, Lkln;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2198
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2199
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2203
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2204
    iget-object v1, p0, Lkln;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2205
    const/4 v1, 0x1

    iget-object v2, p0, Lkln;->a:Ljava/lang/String;

    .line 2206
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2208
    :cond_0
    iget-object v1, p0, Lkln;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 2209
    const/4 v1, 0x2

    iget-object v2, p0, Lkln;->b:Ljava/lang/Boolean;

    .line 2210
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2210
    add-int/2addr v0, v1

    .line 2212
    :cond_1
    iget-object v1, p0, Lkln;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 2213
    const/4 v1, 0x3

    iget-object v2, p0, Lkln;->c:Ljava/lang/Boolean;

    .line 2214
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2214
    add-int/2addr v0, v1

    .line 2216
    :cond_2
    iget-object v1, p0, Lkln;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 2217
    const/4 v1, 0x4

    iget-object v2, p0, Lkln;->d:Ljava/lang/Boolean;

    .line 2218
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2218
    add-int/2addr v0, v1

    .line 2220
    :cond_3
    return v0
.end method
