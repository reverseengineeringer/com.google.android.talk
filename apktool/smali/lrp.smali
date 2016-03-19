.class public final Llrp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llrp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Llsm;

.field public c:Lltt;

.field public d:Llha;

.field public e:Llgk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    iput-object v0, p0, Llrp;->a:Ljava/lang/Boolean;

    .line 42
    iput-object v0, p0, Llrp;->b:Llsm;

    .line 43
    iput-object v0, p0, Llrp;->c:Lltt;

    .line 44
    iput-object v0, p0, Llrp;->d:Llha;

    .line 45
    iput-object v0, p0, Llrp;->e:Llgk;

    .line 46
    iput-object v0, p0, Llrp;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Llrp;->eE:I

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2103
    sparse-switch v0, :sswitch_data_0

    .line 2107
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2108
    :sswitch_0
    return-object p0

    .line 2113
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llrp;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2117
    :sswitch_2
    iget-object v0, p0, Llrp;->b:Llsm;

    if-nez v0, :cond_1

    .line 2118
    new-instance v0, Llsm;

    invoke-direct {v0}, Llsm;-><init>()V

    iput-object v0, p0, Llrp;->b:Llsm;

    .line 2120
    :cond_1
    iget-object v0, p0, Llrp;->b:Llsm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2124
    :sswitch_3
    iget-object v0, p0, Llrp;->c:Lltt;

    if-nez v0, :cond_2

    .line 2125
    new-instance v0, Lltt;

    invoke-direct {v0}, Lltt;-><init>()V

    iput-object v0, p0, Llrp;->c:Lltt;

    .line 2127
    :cond_2
    iget-object v0, p0, Llrp;->c:Lltt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2131
    :sswitch_4
    iget-object v0, p0, Llrp;->d:Llha;

    if-nez v0, :cond_3

    .line 2132
    new-instance v0, Llha;

    invoke-direct {v0}, Llha;-><init>()V

    iput-object v0, p0, Llrp;->d:Llha;

    .line 2134
    :cond_3
    iget-object v0, p0, Llrp;->d:Llha;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2138
    :sswitch_5
    iget-object v0, p0, Llrp;->e:Llgk;

    if-nez v0, :cond_4

    .line 2139
    new-instance v0, Llgk;

    invoke-direct {v0}, Llgk;-><init>()V

    iput-object v0, p0, Llrp;->e:Llgk;

    .line 2141
    :cond_4
    iget-object v0, p0, Llrp;->e:Llgk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2103
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Llrp;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Llrp;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 56
    :cond_0
    iget-object v0, p0, Llrp;->b:Llsm;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Llrp;->b:Llsm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 59
    :cond_1
    iget-object v0, p0, Llrp;->c:Lltt;

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x3

    iget-object v1, p0, Llrp;->c:Lltt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 62
    :cond_2
    iget-object v0, p0, Llrp;->d:Llha;

    if-eqz v0, :cond_3

    .line 63
    const/4 v0, 0x4

    iget-object v1, p0, Llrp;->d:Llha;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 65
    :cond_3
    iget-object v0, p0, Llrp;->e:Llgk;

    if-eqz v0, :cond_4

    .line 66
    const/4 v0, 0x5

    iget-object v1, p0, Llrp;->e:Llgk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 68
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 69
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 74
    iget-object v1, p0, Llrp;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x1

    iget-object v2, p0, Llrp;->a:Ljava/lang/Boolean;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 76
    add-int/2addr v0, v1

    .line 78
    :cond_0
    iget-object v1, p0, Llrp;->b:Llsm;

    if-eqz v1, :cond_1

    .line 79
    const/4 v1, 0x2

    iget-object v2, p0, Llrp;->b:Llsm;

    .line 80
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_1
    iget-object v1, p0, Llrp;->c:Lltt;

    if-eqz v1, :cond_2

    .line 83
    const/4 v1, 0x3

    iget-object v2, p0, Llrp;->c:Lltt;

    .line 84
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_2
    iget-object v1, p0, Llrp;->d:Llha;

    if-eqz v1, :cond_3

    .line 87
    const/4 v1, 0x4

    iget-object v2, p0, Llrp;->d:Llha;

    .line 88
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_3
    iget-object v1, p0, Llrp;->e:Llgk;

    if-eqz v1, :cond_4

    .line 91
    const/4 v1, 0x5

    iget-object v2, p0, Llrp;->e:Llgk;

    .line 92
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_4
    return v0
.end method
