.class public final Lmcr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmcr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmcs;

.field public b:Lmco;

.field public c:Lmcy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35
    iput-object v0, p0, Lmcr;->a:Lmcs;

    .line 36
    iput-object v0, p0, Lmcr;->b:Lmco;

    .line 37
    iput-object v0, p0, Lmcr;->c:Lmcy;

    .line 38
    iput-object v0, p0, Lmcr;->eD:Llyd;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lmcr;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1080
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1081
    sparse-switch v0, :sswitch_data_0

    .line 1085
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    :sswitch_0
    return-object p0

    .line 1091
    :sswitch_1
    iget-object v0, p0, Lmcr;->a:Lmcs;

    if-nez v0, :cond_1

    .line 1092
    new-instance v0, Lmcs;

    invoke-direct {v0}, Lmcs;-><init>()V

    iput-object v0, p0, Lmcr;->a:Lmcs;

    .line 1094
    :cond_1
    iget-object v0, p0, Lmcr;->a:Lmcs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1098
    :sswitch_2
    iget-object v0, p0, Lmcr;->b:Lmco;

    if-nez v0, :cond_2

    .line 1099
    new-instance v0, Lmco;

    invoke-direct {v0}, Lmco;-><init>()V

    iput-object v0, p0, Lmcr;->b:Lmco;

    .line 1101
    :cond_2
    iget-object v0, p0, Lmcr;->b:Lmco;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1105
    :sswitch_3
    iget-object v0, p0, Lmcr;->c:Lmcy;

    if-nez v0, :cond_3

    .line 1106
    new-instance v0, Lmcy;

    invoke-direct {v0}, Lmcy;-><init>()V

    iput-object v0, p0, Lmcr;->c:Lmcy;

    .line 1108
    :cond_3
    iget-object v0, p0, Lmcr;->c:Lmcy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1081
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
    .line 45
    iget-object v0, p0, Lmcr;->a:Lmcs;

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iget-object v1, p0, Lmcr;->a:Lmcs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lmcr;->b:Lmco;

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x2

    iget-object v1, p0, Lmcr;->b:Lmco;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 51
    :cond_1
    iget-object v0, p0, Lmcr;->c:Lmcy;

    if-eqz v0, :cond_2

    .line 52
    const/4 v0, 0x3

    iget-object v1, p0, Lmcr;->c:Lmcy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

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
    iget-object v1, p0, Lmcr;->a:Lmcs;

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    iget-object v2, p0, Lmcr;->a:Lmcs;

    .line 62
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_0
    iget-object v1, p0, Lmcr;->b:Lmco;

    if-eqz v1, :cond_1

    .line 65
    const/4 v1, 0x2

    iget-object v2, p0, Lmcr;->b:Lmco;

    .line 66
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_1
    iget-object v1, p0, Lmcr;->c:Lmcy;

    if-eqz v1, :cond_2

    .line 69
    const/4 v1, 0x3

    iget-object v2, p0, Lmcr;->c:Lmcy;

    .line 70
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_2
    return v0
.end method
