.class public final Llsj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llsj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llqs;

.field public b:Lmcq;

.field public c:Lltg;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    iput-object v0, p0, Llsj;->a:Llqs;

    .line 42
    iput-object v0, p0, Llsj;->b:Lmcq;

    .line 43
    iput-object v0, p0, Llsj;->c:Lltg;

    .line 44
    iput-object v0, p0, Llsj;->d:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Llsj;->e:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Llsj;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Llsj;->eE:I

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1103
    sparse-switch v0, :sswitch_data_0

    .line 1107
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    :sswitch_0
    return-object p0

    .line 1113
    :sswitch_1
    iget-object v0, p0, Llsj;->a:Llqs;

    if-nez v0, :cond_1

    .line 1114
    new-instance v0, Llqs;

    invoke-direct {v0}, Llqs;-><init>()V

    iput-object v0, p0, Llsj;->a:Llqs;

    .line 1116
    :cond_1
    iget-object v0, p0, Llsj;->a:Llqs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1120
    :sswitch_2
    iget-object v0, p0, Llsj;->b:Lmcq;

    if-nez v0, :cond_2

    .line 1121
    new-instance v0, Lmcq;

    invoke-direct {v0}, Lmcq;-><init>()V

    iput-object v0, p0, Llsj;->b:Lmcq;

    .line 1123
    :cond_2
    iget-object v0, p0, Llsj;->b:Lmcq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1127
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llsj;->d:Ljava/lang/String;

    goto :goto_0

    .line 1131
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llsj;->e:Ljava/lang/String;

    goto :goto_0

    .line 1135
    :sswitch_5
    iget-object v0, p0, Llsj;->c:Lltg;

    if-nez v0, :cond_3

    .line 1136
    new-instance v0, Lltg;

    invoke-direct {v0}, Lltg;-><init>()V

    iput-object v0, p0, Llsj;->c:Lltg;

    .line 1138
    :cond_3
    iget-object v0, p0, Llsj;->c:Lltg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1103
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
    .line 53
    iget-object v0, p0, Llsj;->a:Llqs;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Llsj;->a:Llqs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_0
    iget-object v0, p0, Llsj;->b:Lmcq;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x4

    iget-object v1, p0, Llsj;->b:Lmcq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 59
    :cond_1
    iget-object v0, p0, Llsj;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x5

    iget-object v1, p0, Llsj;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 62
    :cond_2
    iget-object v0, p0, Llsj;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 63
    const/4 v0, 0x6

    iget-object v1, p0, Llsj;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 65
    :cond_3
    iget-object v0, p0, Llsj;->c:Lltg;

    if-eqz v0, :cond_4

    .line 66
    const/4 v0, 0x7

    iget-object v1, p0, Llsj;->c:Lltg;

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
    iget-object v1, p0, Llsj;->a:Llqs;

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x1

    iget-object v2, p0, Llsj;->a:Llqs;

    .line 76
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_0
    iget-object v1, p0, Llsj;->b:Lmcq;

    if-eqz v1, :cond_1

    .line 79
    const/4 v1, 0x4

    iget-object v2, p0, Llsj;->b:Lmcq;

    .line 80
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_1
    iget-object v1, p0, Llsj;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 83
    const/4 v1, 0x5

    iget-object v2, p0, Llsj;->d:Ljava/lang/String;

    .line 84
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_2
    iget-object v1, p0, Llsj;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 87
    const/4 v1, 0x6

    iget-object v2, p0, Llsj;->e:Ljava/lang/String;

    .line 88
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_3
    iget-object v1, p0, Llsj;->c:Lltg;

    if-eqz v1, :cond_4

    .line 91
    const/4 v1, 0x7

    iget-object v2, p0, Llsj;->c:Lltg;

    .line 92
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_4
    return v0
.end method
