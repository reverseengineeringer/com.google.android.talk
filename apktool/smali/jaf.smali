.class public final Ljaf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljaf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljed;

.field public b:Ljgl;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1043
    iput-object v0, p0, Ljaf;->a:Ljed;

    .line 1044
    iput-object v0, p0, Ljaf;->b:Ljgl;

    .line 1045
    iput-object v0, p0, Ljaf;->c:Ljava/lang/Boolean;

    .line 1046
    iput-object v0, p0, Ljaf;->eD:Llyd;

    .line 1047
    const/4 v0, -0x1

    iput v0, p0, Ljaf;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2089
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2090
    sparse-switch v0, :sswitch_data_0

    .line 2094
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2095
    :sswitch_0
    return-object p0

    .line 2100
    :sswitch_1
    iget-object v0, p0, Ljaf;->a:Ljed;

    if-nez v0, :cond_1

    .line 2101
    new-instance v0, Ljed;

    invoke-direct {v0}, Ljed;-><init>()V

    iput-object v0, p0, Ljaf;->a:Ljed;

    .line 2103
    :cond_1
    iget-object v0, p0, Ljaf;->a:Ljed;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2107
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljaf;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 2111
    :sswitch_3
    iget-object v0, p0, Ljaf;->b:Ljgl;

    if-nez v0, :cond_2

    .line 2112
    new-instance v0, Ljgl;

    invoke-direct {v0}, Ljgl;-><init>()V

    iput-object v0, p0, Ljaf;->b:Ljgl;

    .line 2114
    :cond_2
    iget-object v0, p0, Ljaf;->b:Ljgl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2090
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Ljaf;->a:Ljed;

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Ljaf;->a:Ljed;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 57
    :cond_0
    iget-object v0, p0, Ljaf;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x2

    iget-object v1, p0, Ljaf;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 60
    :cond_1
    iget-object v0, p0, Ljaf;->b:Ljgl;

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x3

    iget-object v1, p0, Ljaf;->b:Ljgl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 63
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 64
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 69
    iget-object v1, p0, Ljaf;->a:Ljed;

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget-object v2, p0, Ljaf;->a:Ljed;

    .line 71
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget-object v1, p0, Ljaf;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x2

    iget-object v2, p0, Ljaf;->c:Ljava/lang/Boolean;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 75
    add-int/2addr v0, v1

    .line 77
    :cond_1
    iget-object v1, p0, Ljaf;->b:Ljgl;

    if-eqz v1, :cond_2

    .line 78
    const/4 v1, 0x3

    iget-object v2, p0, Ljaf;->b:Ljgl;

    .line 79
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    return v0
.end method
