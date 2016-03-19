.class public final Ljaa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljaa;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lluo;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35
    iput-object v0, p0, Ljaa;->a:Lluo;

    .line 36
    iput-object v0, p0, Ljaa;->b:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Ljaa;->c:Ljava/lang/Boolean;

    .line 38
    iput-object v0, p0, Ljaa;->eD:Llyd;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Ljaa;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2080
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2081
    sparse-switch v0, :sswitch_data_0

    .line 2085
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2086
    :sswitch_0
    return-object p0

    .line 2091
    :sswitch_1
    iget-object v0, p0, Ljaa;->a:Lluo;

    if-nez v0, :cond_1

    .line 2092
    new-instance v0, Lluo;

    invoke-direct {v0}, Lluo;-><init>()V

    iput-object v0, p0, Ljaa;->a:Lluo;

    .line 2094
    :cond_1
    iget-object v0, p0, Ljaa;->a:Lluo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2098
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljaa;->b:Ljava/lang/String;

    goto :goto_0

    .line 2102
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljaa;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 2081
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Ljaa;->a:Lluo;

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iget-object v1, p0, Ljaa;->a:Lluo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 48
    :cond_0
    iget-object v0, p0, Ljaa;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x2

    iget-object v1, p0, Ljaa;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 51
    :cond_1
    iget-object v0, p0, Ljaa;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 52
    const/4 v0, 0x3

    iget-object v1, p0, Ljaa;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 54
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 55
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 60
    iget-object v1, p0, Ljaa;->a:Lluo;

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    iget-object v2, p0, Ljaa;->a:Lluo;

    .line 62
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_0
    iget-object v1, p0, Ljaa;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 65
    const/4 v1, 0x2

    iget-object v2, p0, Ljaa;->b:Ljava/lang/String;

    .line 66
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_1
    iget-object v1, p0, Ljaa;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 69
    const/4 v1, 0x3

    iget-object v2, p0, Ljaa;->c:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 70
    add-int/2addr v0, v1

    .line 72
    :cond_2
    return v0
.end method
