.class public final Llrq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llrq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llrv;

.field public b:Llrx;

.field public c:Llrr;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v0, p0, Llrq;->a:Llrv;

    .line 39
    iput-object v0, p0, Llrq;->b:Llrx;

    .line 40
    iput-object v0, p0, Llrq;->c:Llrr;

    .line 41
    iput-object v0, p0, Llrq;->d:Ljava/lang/Boolean;

    .line 42
    iput-object v0, p0, Llrq;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Llrq;->eE:I

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2091
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2092
    sparse-switch v0, :sswitch_data_0

    .line 2096
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2097
    :sswitch_0
    return-object p0

    .line 2102
    :sswitch_1
    iget-object v0, p0, Llrq;->a:Llrv;

    if-nez v0, :cond_1

    .line 2103
    new-instance v0, Llrv;

    invoke-direct {v0}, Llrv;-><init>()V

    iput-object v0, p0, Llrq;->a:Llrv;

    .line 2105
    :cond_1
    iget-object v0, p0, Llrq;->a:Llrv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2109
    :sswitch_2
    iget-object v0, p0, Llrq;->b:Llrx;

    if-nez v0, :cond_2

    .line 2110
    new-instance v0, Llrx;

    invoke-direct {v0}, Llrx;-><init>()V

    iput-object v0, p0, Llrq;->b:Llrx;

    .line 2112
    :cond_2
    iget-object v0, p0, Llrq;->b:Llrx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2116
    :sswitch_3
    iget-object v0, p0, Llrq;->c:Llrr;

    if-nez v0, :cond_3

    .line 2117
    new-instance v0, Llrr;

    invoke-direct {v0}, Llrr;-><init>()V

    iput-object v0, p0, Llrq;->c:Llrr;

    .line 2119
    :cond_3
    iget-object v0, p0, Llrq;->c:Llrr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2123
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llrq;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 2092
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Llrq;->a:Llrv;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Llrq;->a:Llrv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 52
    :cond_0
    iget-object v0, p0, Llrq;->b:Llrx;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Llrq;->b:Llrx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 55
    :cond_1
    iget-object v0, p0, Llrq;->c:Llrr;

    if-eqz v0, :cond_2

    .line 56
    const/4 v0, 0x3

    iget-object v1, p0, Llrq;->c:Llrr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 58
    :cond_2
    iget-object v0, p0, Llrq;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 59
    const/4 v0, 0x4

    iget-object v1, p0, Llrq;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 61
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 62
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 67
    iget-object v1, p0, Llrq;->a:Llrv;

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x1

    iget-object v2, p0, Llrq;->a:Llrv;

    .line 69
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_0
    iget-object v1, p0, Llrq;->b:Llrx;

    if-eqz v1, :cond_1

    .line 72
    const/4 v1, 0x2

    iget-object v2, p0, Llrq;->b:Llrx;

    .line 73
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_1
    iget-object v1, p0, Llrq;->c:Llrr;

    if-eqz v1, :cond_2

    .line 76
    const/4 v1, 0x3

    iget-object v2, p0, Llrq;->c:Llrr;

    .line 77
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_2
    iget-object v1, p0, Llrq;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 80
    const/4 v1, 0x4

    iget-object v2, p0, Llrq;->d:Ljava/lang/Boolean;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 81
    add-int/2addr v0, v1

    .line 83
    :cond_3
    return v0
.end method
