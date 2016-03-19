.class public final Lmjp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmjp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Lmks;

.field public d:Ljava/lang/Boolean;

.field public e:Lmks;

.field public f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1052
    iput-object v0, p0, Lmjp;->a:Ljava/lang/Boolean;

    .line 1053
    iput-object v0, p0, Lmjp;->b:Ljava/lang/Boolean;

    .line 1054
    iput-object v0, p0, Lmjp;->c:Lmks;

    .line 1055
    iput-object v0, p0, Lmjp;->d:Ljava/lang/Boolean;

    .line 1056
    iput-object v0, p0, Lmjp;->e:Lmks;

    .line 1057
    iput-object v0, p0, Lmjp;->f:Ljava/lang/Boolean;

    .line 1058
    iput-object v0, p0, Lmjp;->eD:Llyd;

    .line 1059
    const/4 v0, -0x1

    iput v0, p0, Lmjp;->eE:I

    .line 49
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5122
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5123
    sparse-switch v0, :sswitch_data_0

    .line 5127
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5128
    :sswitch_0
    return-object p0

    .line 5133
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmjp;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 5137
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmjp;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 5141
    :sswitch_3
    iget-object v0, p0, Lmjp;->c:Lmks;

    if-nez v0, :cond_1

    .line 5142
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmjp;->c:Lmks;

    .line 5144
    :cond_1
    iget-object v0, p0, Lmjp;->c:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5148
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmjp;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 5152
    :sswitch_5
    iget-object v0, p0, Lmjp;->e:Lmks;

    if-nez v0, :cond_2

    .line 5153
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmjp;->e:Lmks;

    .line 5155
    :cond_2
    iget-object v0, p0, Lmjp;->e:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5159
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmjp;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 5123
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lmjp;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iget-object v1, p0, Lmjp;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 69
    :cond_0
    iget-object v0, p0, Lmjp;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x2

    iget-object v1, p0, Lmjp;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 72
    :cond_1
    iget-object v0, p0, Lmjp;->c:Lmks;

    if-eqz v0, :cond_2

    .line 73
    const/4 v0, 0x3

    iget-object v1, p0, Lmjp;->c:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lmjp;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 76
    const/4 v0, 0x4

    iget-object v1, p0, Lmjp;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 78
    :cond_3
    iget-object v0, p0, Lmjp;->e:Lmks;

    if-eqz v0, :cond_4

    .line 79
    const/4 v0, 0x5

    iget-object v1, p0, Lmjp;->e:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 81
    :cond_4
    iget-object v0, p0, Lmjp;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 82
    const/4 v0, 0x6

    iget-object v1, p0, Lmjp;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 84
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 85
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 90
    iget-object v1, p0, Lmjp;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    iget-object v2, p0, Lmjp;->a:Ljava/lang/Boolean;

    .line 92
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 92
    add-int/2addr v0, v1

    .line 94
    :cond_0
    iget-object v1, p0, Lmjp;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 95
    const/4 v1, 0x2

    iget-object v2, p0, Lmjp;->b:Ljava/lang/Boolean;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 96
    add-int/2addr v0, v1

    .line 98
    :cond_1
    iget-object v1, p0, Lmjp;->c:Lmks;

    if-eqz v1, :cond_2

    .line 99
    const/4 v1, 0x3

    iget-object v2, p0, Lmjp;->c:Lmks;

    .line 100
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_2
    iget-object v1, p0, Lmjp;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 103
    const/4 v1, 0x4

    iget-object v2, p0, Lmjp;->d:Ljava/lang/Boolean;

    .line 104
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 104
    add-int/2addr v0, v1

    .line 106
    :cond_3
    iget-object v1, p0, Lmjp;->e:Lmks;

    if-eqz v1, :cond_4

    .line 107
    const/4 v1, 0x5

    iget-object v2, p0, Lmjp;->e:Lmks;

    .line 108
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_4
    iget-object v1, p0, Lmjp;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 111
    const/4 v1, 0x6

    iget-object v2, p0, Lmjp;->f:Ljava/lang/Boolean;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 112
    add-int/2addr v0, v1

    .line 114
    :cond_5
    return v0
.end method
