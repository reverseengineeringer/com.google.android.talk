.class public final Ljqo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljqd;

.field public b:Ljava/lang/Boolean;

.field public c:Liuw;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1046
    iput-object v0, p0, Ljqo;->a:Ljqd;

    .line 1047
    iput-object v0, p0, Ljqo;->b:Ljava/lang/Boolean;

    .line 1048
    iput-object v0, p0, Ljqo;->c:Liuw;

    .line 1049
    iput-object v0, p0, Ljqo;->d:Ljava/lang/Boolean;

    .line 1050
    iput-object v0, p0, Ljqo;->eD:Llyd;

    .line 1051
    const/4 v0, -0x1

    iput v0, p0, Ljqo;->eE:I

    .line 43
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3101
    sparse-switch v0, :sswitch_data_0

    .line 3105
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3106
    :sswitch_0
    return-object p0

    .line 3111
    :sswitch_1
    iget-object v0, p0, Ljqo;->a:Ljqd;

    if-nez v0, :cond_1

    .line 3112
    new-instance v0, Ljqd;

    invoke-direct {v0}, Ljqd;-><init>()V

    iput-object v0, p0, Ljqo;->a:Ljqd;

    .line 3114
    :cond_1
    iget-object v0, p0, Ljqo;->a:Ljqd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3118
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljqo;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 3122
    :sswitch_3
    iget-object v0, p0, Ljqo;->c:Liuw;

    if-nez v0, :cond_2

    .line 3123
    new-instance v0, Liuw;

    invoke-direct {v0}, Liuw;-><init>()V

    iput-object v0, p0, Ljqo;->c:Liuw;

    .line 3125
    :cond_2
    iget-object v0, p0, Ljqo;->c:Liuw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3129
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljqo;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 3101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Ljqo;->a:Ljqd;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iget-object v1, p0, Ljqo;->a:Ljqd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 61
    :cond_0
    iget-object v0, p0, Ljqo;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Ljqo;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 64
    :cond_1
    iget-object v0, p0, Ljqo;->c:Liuw;

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x3

    iget-object v1, p0, Ljqo;->c:Liuw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 67
    :cond_2
    iget-object v0, p0, Ljqo;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 68
    const/4 v0, 0x4

    iget-object v1, p0, Ljqo;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 70
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 71
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 76
    iget-object v1, p0, Ljqo;->a:Ljqd;

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x1

    iget-object v2, p0, Ljqo;->a:Ljqd;

    .line 78
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_0
    iget-object v1, p0, Ljqo;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 81
    const/4 v1, 0x2

    iget-object v2, p0, Ljqo;->b:Ljava/lang/Boolean;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 82
    add-int/2addr v0, v1

    .line 84
    :cond_1
    iget-object v1, p0, Ljqo;->c:Liuw;

    if-eqz v1, :cond_2

    .line 85
    const/4 v1, 0x3

    iget-object v2, p0, Ljqo;->c:Liuw;

    .line 86
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_2
    iget-object v1, p0, Ljqo;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 89
    const/4 v1, 0x4

    iget-object v2, p0, Ljqo;->d:Ljava/lang/Boolean;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 90
    add-int/2addr v0, v1

    .line 92
    :cond_3
    return v0
.end method
