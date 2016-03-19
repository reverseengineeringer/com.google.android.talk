.class public final Lloi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lloi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lllj;

.field public b:Lmrt;

.field public c:Lltk;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1049
    iput-object v0, p0, Lloi;->a:Lllj;

    .line 1050
    iput-object v0, p0, Lloi;->b:Lmrt;

    .line 1051
    iput-object v0, p0, Lloi;->c:Lltk;

    .line 1052
    iput-object v0, p0, Lloi;->d:Ljava/lang/String;

    .line 1053
    iput-object v0, p0, Lloi;->e:Ljava/lang/String;

    .line 1054
    iput-object v0, p0, Lloi;->eD:Llyd;

    .line 1055
    const/4 v0, -0x1

    iput v0, p0, Lloi;->eE:I

    .line 46
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1112
    sparse-switch v0, :sswitch_data_0

    .line 1116
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    :sswitch_0
    return-object p0

    .line 1122
    :sswitch_1
    iget-object v0, p0, Lloi;->a:Lllj;

    if-nez v0, :cond_1

    .line 1123
    new-instance v0, Lllj;

    invoke-direct {v0}, Lllj;-><init>()V

    iput-object v0, p0, Lloi;->a:Lllj;

    .line 1125
    :cond_1
    iget-object v0, p0, Lloi;->a:Lllj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1129
    :sswitch_2
    iget-object v0, p0, Lloi;->b:Lmrt;

    if-nez v0, :cond_2

    .line 1130
    new-instance v0, Lmrt;

    invoke-direct {v0}, Lmrt;-><init>()V

    iput-object v0, p0, Lloi;->b:Lmrt;

    .line 1132
    :cond_2
    iget-object v0, p0, Lloi;->b:Lmrt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1136
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloi;->d:Ljava/lang/String;

    goto :goto_0

    .line 1140
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloi;->e:Ljava/lang/String;

    goto :goto_0

    .line 1144
    :sswitch_5
    iget-object v0, p0, Lloi;->c:Lltk;

    if-nez v0, :cond_3

    .line 1145
    new-instance v0, Lltk;

    invoke-direct {v0}, Lltk;-><init>()V

    iput-object v0, p0, Lloi;->c:Lltk;

    .line 1147
    :cond_3
    iget-object v0, p0, Lloi;->c:Lltk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1112
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x22 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lloi;->a:Lllj;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iget-object v1, p0, Lloi;->a:Lllj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lloi;->b:Lmrt;

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x4

    iget-object v1, p0, Lloi;->b:Lmrt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lloi;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x5

    iget-object v1, p0, Lloi;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lloi;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 72
    const/4 v0, 0x6

    iget-object v1, p0, Lloi;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 74
    :cond_3
    iget-object v0, p0, Lloi;->c:Lltk;

    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x7

    iget-object v1, p0, Lloi;->c:Lltk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 77
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 78
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 83
    iget-object v1, p0, Lloi;->a:Lllj;

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x1

    iget-object v2, p0, Lloi;->a:Lllj;

    .line 85
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_0
    iget-object v1, p0, Lloi;->b:Lmrt;

    if-eqz v1, :cond_1

    .line 88
    const/4 v1, 0x4

    iget-object v2, p0, Lloi;->b:Lmrt;

    .line 89
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_1
    iget-object v1, p0, Lloi;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 92
    const/4 v1, 0x5

    iget-object v2, p0, Lloi;->d:Ljava/lang/String;

    .line 93
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_2
    iget-object v1, p0, Lloi;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 96
    const/4 v1, 0x6

    iget-object v2, p0, Lloi;->e:Ljava/lang/String;

    .line 97
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_3
    iget-object v1, p0, Lloi;->c:Lltk;

    if-eqz v1, :cond_4

    .line 100
    const/4 v1, 0x7

    iget-object v2, p0, Lloi;->c:Lltk;

    .line 101
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_4
    return v0
.end method
