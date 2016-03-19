.class public final Liwb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Liwf;

.field public c:Ljava/lang/Boolean;

.field public d:Liwc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11147
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12152
    iput-object v0, p0, Liwb;->a:Ljava/lang/Boolean;

    .line 12153
    iput-object v0, p0, Liwb;->b:Liwf;

    .line 12154
    iput-object v0, p0, Liwb;->c:Ljava/lang/Boolean;

    .line 12155
    iput-object v0, p0, Liwb;->d:Liwc;

    .line 12156
    iput-object v0, p0, Liwb;->eD:Llyd;

    .line 12157
    const/4 v0, -0x1

    iput v0, p0, Liwb;->eE:I

    .line 11149
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 14206
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 14207
    sparse-switch v0, :sswitch_data_0

    .line 14211
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14212
    :sswitch_0
    return-object p0

    .line 14217
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liwb;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 14221
    :sswitch_2
    iget-object v0, p0, Liwb;->b:Liwf;

    if-nez v0, :cond_1

    .line 14222
    new-instance v0, Liwf;

    invoke-direct {v0}, Liwf;-><init>()V

    iput-object v0, p0, Liwb;->b:Liwf;

    .line 14224
    :cond_1
    iget-object v0, p0, Liwb;->b:Liwf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14228
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liwb;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 14232
    :sswitch_4
    iget-object v0, p0, Liwb;->d:Liwc;

    if-nez v0, :cond_2

    .line 14233
    new-instance v0, Liwc;

    invoke-direct {v0}, Liwc;-><init>()V

    iput-object v0, p0, Liwb;->d:Liwc;

    .line 14235
    :cond_2
    iget-object v0, p0, Liwb;->d:Liwc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14207
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 11164
    iget-object v0, p0, Liwb;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 11165
    const/4 v0, 0x1

    iget-object v1, p0, Liwb;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 11167
    :cond_0
    iget-object v0, p0, Liwb;->b:Liwf;

    if-eqz v0, :cond_1

    .line 11168
    const/4 v0, 0x2

    iget-object v1, p0, Liwb;->b:Liwf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11170
    :cond_1
    iget-object v0, p0, Liwb;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 11171
    const/4 v0, 0x3

    iget-object v1, p0, Liwb;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 11173
    :cond_2
    iget-object v0, p0, Liwb;->d:Liwc;

    if-eqz v0, :cond_3

    .line 11174
    const/4 v0, 0x4

    iget-object v1, p0, Liwb;->d:Liwc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11176
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11177
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 11181
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11182
    iget-object v1, p0, Liwb;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 11183
    const/4 v1, 0x1

    iget-object v2, p0, Liwb;->a:Ljava/lang/Boolean;

    .line 11184
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 11184
    add-int/2addr v0, v1

    .line 11186
    :cond_0
    iget-object v1, p0, Liwb;->b:Liwf;

    if-eqz v1, :cond_1

    .line 11187
    const/4 v1, 0x2

    iget-object v2, p0, Liwb;->b:Liwf;

    .line 11188
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11190
    :cond_1
    iget-object v1, p0, Liwb;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 11191
    const/4 v1, 0x3

    iget-object v2, p0, Liwb;->c:Ljava/lang/Boolean;

    .line 11192
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 11192
    add-int/2addr v0, v1

    .line 11194
    :cond_2
    iget-object v1, p0, Liwb;->d:Liwc;

    if-eqz v1, :cond_3

    .line 11195
    const/4 v1, 0x4

    iget-object v2, p0, Liwb;->d:Liwc;

    .line 11196
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11198
    :cond_3
    return v0
.end method
