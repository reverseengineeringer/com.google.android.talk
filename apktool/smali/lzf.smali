.class public final Llzf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llzf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Integer;

.field public i:Llze;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1061
    iput-object v0, p0, Llzf;->a:Ljava/lang/String;

    .line 1062
    iput-object v0, p0, Llzf;->b:Ljava/lang/Integer;

    .line 1063
    iput-object v0, p0, Llzf;->c:Ljava/lang/Integer;

    .line 1064
    iput-object v0, p0, Llzf;->d:Ljava/lang/Boolean;

    .line 1065
    iput-object v0, p0, Llzf;->e:Ljava/lang/Boolean;

    .line 1066
    iput-object v0, p0, Llzf;->f:Ljava/lang/Boolean;

    .line 1067
    iput-object v0, p0, Llzf;->g:Ljava/lang/String;

    .line 1068
    iput-object v0, p0, Llzf;->h:Ljava/lang/Integer;

    .line 1069
    iput-object v0, p0, Llzf;->i:Llze;

    .line 1070
    iput-object v0, p0, Llzf;->eD:Llyd;

    .line 1071
    const/4 v0, -0x1

    iput v0, p0, Llzf;->eE:I

    .line 58
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4155
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4156
    sparse-switch v0, :sswitch_data_0

    .line 4160
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4161
    :sswitch_0
    return-object p0

    .line 4166
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzf;->a:Ljava/lang/String;

    goto :goto_0

    .line 4170
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llzf;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 4174
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llzf;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4178
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llzf;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 4182
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llzf;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 4186
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llzf;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 4190
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzf;->g:Ljava/lang/String;

    goto :goto_0

    .line 4194
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llzf;->h:Ljava/lang/Integer;

    goto :goto_0

    .line 4198
    :sswitch_9
    iget-object v0, p0, Llzf;->i:Llze;

    if-nez v0, :cond_1

    .line 4199
    new-instance v0, Llze;

    invoke-direct {v0}, Llze;-><init>()V

    iput-object v0, p0, Llzf;->i:Llze;

    .line 4201
    :cond_1
    iget-object v0, p0, Llzf;->i:Llze;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4156
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Llzf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Llzf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Llzf;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    iget-object v1, p0, Llzf;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 84
    :cond_1
    iget-object v0, p0, Llzf;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x3

    iget-object v1, p0, Llzf;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 87
    :cond_2
    iget-object v0, p0, Llzf;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 88
    const/4 v0, 0x4

    iget-object v1, p0, Llzf;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 90
    :cond_3
    iget-object v0, p0, Llzf;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 91
    const/4 v0, 0x5

    iget-object v1, p0, Llzf;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 93
    :cond_4
    iget-object v0, p0, Llzf;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 94
    const/4 v0, 0x6

    iget-object v1, p0, Llzf;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 96
    :cond_5
    iget-object v0, p0, Llzf;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 97
    const/4 v0, 0x7

    iget-object v1, p0, Llzf;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 99
    :cond_6
    iget-object v0, p0, Llzf;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 100
    const/16 v0, 0x8

    iget-object v1, p0, Llzf;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 102
    :cond_7
    iget-object v0, p0, Llzf;->i:Llze;

    if-eqz v0, :cond_8

    .line 103
    const/16 v0, 0x9

    iget-object v1, p0, Llzf;->i:Llze;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 105
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 106
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 111
    iget-object v1, p0, Llzf;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    iget-object v2, p0, Llzf;->a:Ljava/lang/String;

    .line 113
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_0
    iget-object v1, p0, Llzf;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 116
    const/4 v1, 0x2

    iget-object v2, p0, Llzf;->b:Ljava/lang/Integer;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_1
    iget-object v1, p0, Llzf;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 120
    const/4 v1, 0x3

    iget-object v2, p0, Llzf;->c:Ljava/lang/Integer;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_2
    iget-object v1, p0, Llzf;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 124
    const/4 v1, 0x4

    iget-object v2, p0, Llzf;->d:Ljava/lang/Boolean;

    .line 125
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 125
    add-int/2addr v0, v1

    .line 127
    :cond_3
    iget-object v1, p0, Llzf;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 128
    const/4 v1, 0x5

    iget-object v2, p0, Llzf;->e:Ljava/lang/Boolean;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 129
    add-int/2addr v0, v1

    .line 131
    :cond_4
    iget-object v1, p0, Llzf;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 132
    const/4 v1, 0x6

    iget-object v2, p0, Llzf;->f:Ljava/lang/Boolean;

    .line 133
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 133
    add-int/2addr v0, v1

    .line 135
    :cond_5
    iget-object v1, p0, Llzf;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 136
    const/4 v1, 0x7

    iget-object v2, p0, Llzf;->g:Ljava/lang/String;

    .line 137
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_6
    iget-object v1, p0, Llzf;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 140
    const/16 v1, 0x8

    iget-object v2, p0, Llzf;->h:Ljava/lang/Integer;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_7
    iget-object v1, p0, Llzf;->i:Llze;

    if-eqz v1, :cond_8

    .line 144
    const/16 v1, 0x9

    iget-object v2, p0, Llzf;->i:Llze;

    .line 145
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_8
    return v0
.end method
