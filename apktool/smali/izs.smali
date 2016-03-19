.class public final Lizs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lizs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljft;

.field public b:Ljava/lang/Boolean;

.field public c:Ljaa;

.field public d:Ljfy;

.field public e:Llsg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    iput-object v0, p0, Lizs;->a:Ljft;

    .line 42
    iput-object v0, p0, Lizs;->b:Ljava/lang/Boolean;

    .line 43
    iput-object v0, p0, Lizs;->c:Ljaa;

    .line 44
    iput-object v0, p0, Lizs;->d:Ljfy;

    .line 45
    iput-object v0, p0, Lizs;->e:Llsg;

    .line 46
    iput-object v0, p0, Lizs;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lizs;->eE:I

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
    iget-object v0, p0, Lizs;->a:Ljft;

    if-nez v0, :cond_1

    .line 2114
    new-instance v0, Ljft;

    invoke-direct {v0}, Ljft;-><init>()V

    iput-object v0, p0, Lizs;->a:Ljft;

    .line 2116
    :cond_1
    iget-object v0, p0, Lizs;->a:Ljft;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2120
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lizs;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 2124
    :sswitch_3
    iget-object v0, p0, Lizs;->c:Ljaa;

    if-nez v0, :cond_2

    .line 2125
    new-instance v0, Ljaa;

    invoke-direct {v0}, Ljaa;-><init>()V

    iput-object v0, p0, Lizs;->c:Ljaa;

    .line 2127
    :cond_2
    iget-object v0, p0, Lizs;->c:Ljaa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2131
    :sswitch_4
    iget-object v0, p0, Lizs;->d:Ljfy;

    if-nez v0, :cond_3

    .line 2132
    new-instance v0, Ljfy;

    invoke-direct {v0}, Ljfy;-><init>()V

    iput-object v0, p0, Lizs;->d:Ljfy;

    .line 2134
    :cond_3
    iget-object v0, p0, Lizs;->d:Ljfy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2138
    :sswitch_5
    iget-object v0, p0, Lizs;->e:Llsg;

    if-nez v0, :cond_4

    .line 2139
    new-instance v0, Llsg;

    invoke-direct {v0}, Llsg;-><init>()V

    iput-object v0, p0, Lizs;->e:Llsg;

    .line 2141
    :cond_4
    iget-object v0, p0, Lizs;->e:Llsg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2103
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lizs;->a:Ljft;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Lizs;->a:Ljft;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lizs;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Lizs;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 59
    :cond_1
    iget-object v0, p0, Lizs;->c:Ljaa;

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x3

    iget-object v1, p0, Lizs;->c:Ljaa;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 62
    :cond_2
    iget-object v0, p0, Lizs;->d:Ljfy;

    if-eqz v0, :cond_3

    .line 63
    const/4 v0, 0x4

    iget-object v1, p0, Lizs;->d:Ljfy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 65
    :cond_3
    iget-object v0, p0, Lizs;->e:Llsg;

    if-eqz v0, :cond_4

    .line 66
    const/4 v0, 0x5

    iget-object v1, p0, Lizs;->e:Llsg;

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
    iget-object v1, p0, Lizs;->a:Ljft;

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x1

    iget-object v2, p0, Lizs;->a:Ljft;

    .line 76
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_0
    iget-object v1, p0, Lizs;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 79
    const/4 v1, 0x2

    iget-object v2, p0, Lizs;->b:Ljava/lang/Boolean;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 80
    add-int/2addr v0, v1

    .line 82
    :cond_1
    iget-object v1, p0, Lizs;->c:Ljaa;

    if-eqz v1, :cond_2

    .line 83
    const/4 v1, 0x3

    iget-object v2, p0, Lizs;->c:Ljaa;

    .line 84
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_2
    iget-object v1, p0, Lizs;->d:Ljfy;

    if-eqz v1, :cond_3

    .line 87
    const/4 v1, 0x4

    iget-object v2, p0, Lizs;->d:Ljfy;

    .line 88
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_3
    iget-object v1, p0, Lizs;->e:Llsg;

    if-eqz v1, :cond_4

    .line 91
    const/4 v1, 0x5

    iget-object v2, p0, Lizs;->e:Llsg;

    .line 92
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_4
    return v0
.end method
