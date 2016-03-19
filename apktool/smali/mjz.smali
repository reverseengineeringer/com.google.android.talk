.class public final Lmjz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmjz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1059
    iput-object v0, p0, Lmjz;->a:Ljava/lang/String;

    .line 1060
    iput-object v0, p0, Lmjz;->b:Ljava/lang/String;

    .line 1061
    iput-object v0, p0, Lmjz;->c:Ljava/lang/String;

    .line 1062
    iput-object v0, p0, Lmjz;->d:Ljava/lang/Boolean;

    .line 1063
    iput-object v0, p0, Lmjz;->e:Ljava/lang/String;

    .line 1064
    iput-object v0, p0, Lmjz;->eD:Llyd;

    .line 1065
    const/4 v0, -0x1

    iput v0, p0, Lmjz;->eE:I

    .line 56
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2122
    sparse-switch v0, :sswitch_data_0

    .line 2126
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2127
    :sswitch_0
    return-object p0

    .line 2132
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmjz;->a:Ljava/lang/String;

    goto :goto_0

    .line 2136
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmjz;->b:Ljava/lang/String;

    goto :goto_0

    .line 2140
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmjz;->c:Ljava/lang/String;

    goto :goto_0

    .line 2144
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmjz;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 2148
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmjz;->e:Ljava/lang/String;

    goto :goto_0

    .line 2122
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x28 -> :sswitch_4
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lmjz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iget-object v1, p0, Lmjz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lmjz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    iget-object v1, p0, Lmjz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lmjz;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 79
    const/4 v0, 0x3

    iget-object v1, p0, Lmjz;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 81
    :cond_2
    iget-object v0, p0, Lmjz;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x5

    iget-object v1, p0, Lmjz;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 84
    :cond_3
    iget-object v0, p0, Lmjz;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 85
    const/16 v0, 0x8

    iget-object v1, p0, Lmjz;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 87
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 88
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 93
    iget-object v1, p0, Lmjz;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x1

    iget-object v2, p0, Lmjz;->a:Ljava/lang/String;

    .line 95
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_0
    iget-object v1, p0, Lmjz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 98
    const/4 v1, 0x2

    iget-object v2, p0, Lmjz;->b:Ljava/lang/String;

    .line 99
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_1
    iget-object v1, p0, Lmjz;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 102
    const/4 v1, 0x3

    iget-object v2, p0, Lmjz;->c:Ljava/lang/String;

    .line 103
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_2
    iget-object v1, p0, Lmjz;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 106
    const/4 v1, 0x5

    iget-object v2, p0, Lmjz;->d:Ljava/lang/Boolean;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 107
    add-int/2addr v0, v1

    .line 109
    :cond_3
    iget-object v1, p0, Lmjz;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 110
    const/16 v1, 0x8

    iget-object v2, p0, Lmjz;->e:Ljava/lang/String;

    .line 111
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_4
    return v0
.end method
