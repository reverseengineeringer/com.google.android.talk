.class public final Lmrr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmrr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmrj;

.field public b:Llum;

.field public c:Llfq;

.field public d:Llcm;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Lmst;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1061
    iput-object v0, p0, Lmrr;->a:Lmrj;

    .line 1062
    iput-object v0, p0, Lmrr;->b:Llum;

    .line 1063
    iput-object v0, p0, Lmrr;->c:Llfq;

    .line 1064
    iput-object v0, p0, Lmrr;->d:Llcm;

    .line 1065
    iput-object v0, p0, Lmrr;->e:Ljava/lang/Integer;

    .line 1066
    iput-object v0, p0, Lmrr;->f:Ljava/lang/Integer;

    .line 1067
    iput-object v0, p0, Lmrr;->g:Lmst;

    .line 1068
    iput-object v0, p0, Lmrr;->h:Ljava/lang/Float;

    .line 1069
    iput-object v0, p0, Lmrr;->i:Ljava/lang/Boolean;

    .line 1070
    iput-object v0, p0, Lmrr;->eD:Llyd;

    .line 1071
    const/4 v0, -0x1

    iput v0, p0, Lmrr;->eE:I

    .line 58
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2155
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2156
    sparse-switch v0, :sswitch_data_0

    .line 2160
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2161
    :sswitch_0
    return-object p0

    .line 2166
    :sswitch_1
    iget-object v0, p0, Lmrr;->a:Lmrj;

    if-nez v0, :cond_1

    .line 2167
    new-instance v0, Lmrj;

    invoke-direct {v0}, Lmrj;-><init>()V

    iput-object v0, p0, Lmrr;->a:Lmrj;

    .line 2169
    :cond_1
    iget-object v0, p0, Lmrr;->a:Lmrj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2173
    :sswitch_2
    iget-object v0, p0, Lmrr;->b:Llum;

    if-nez v0, :cond_2

    .line 2174
    new-instance v0, Llum;

    invoke-direct {v0}, Llum;-><init>()V

    iput-object v0, p0, Lmrr;->b:Llum;

    .line 2176
    :cond_2
    iget-object v0, p0, Lmrr;->b:Llum;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2180
    :sswitch_3
    iget-object v0, p0, Lmrr;->c:Llfq;

    if-nez v0, :cond_3

    .line 2181
    new-instance v0, Llfq;

    invoke-direct {v0}, Llfq;-><init>()V

    iput-object v0, p0, Lmrr;->c:Llfq;

    .line 2183
    :cond_3
    iget-object v0, p0, Lmrr;->c:Llfq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2187
    :sswitch_4
    iget-object v0, p0, Lmrr;->d:Llcm;

    if-nez v0, :cond_4

    .line 2188
    new-instance v0, Llcm;

    invoke-direct {v0}, Llcm;-><init>()V

    iput-object v0, p0, Lmrr;->d:Llcm;

    .line 2190
    :cond_4
    iget-object v0, p0, Lmrr;->d:Llcm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2194
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmrr;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 2198
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2199
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2203
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmrr;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 2209
    :sswitch_7
    iget-object v0, p0, Lmrr;->g:Lmst;

    if-nez v0, :cond_5

    .line 2210
    new-instance v0, Lmst;

    invoke-direct {v0}, Lmst;-><init>()V

    iput-object v0, p0, Lmrr;->g:Lmst;

    .line 2212
    :cond_5
    iget-object v0, p0, Lmrr;->g:Lmst;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2216
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmrr;->h:Ljava/lang/Float;

    goto/16 :goto_0

    .line 2220
    :sswitch_9
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmrr;->i:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2156
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x55 -> :sswitch_8
        0x58 -> :sswitch_9
    .end sparse-switch

    .line 2199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lmrr;->a:Lmrj;

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Lmrr;->a:Lmrj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lmrr;->b:Llum;

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    iget-object v1, p0, Lmrr;->b:Llum;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lmrr;->c:Llfq;

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x3

    iget-object v1, p0, Lmrr;->c:Llfq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lmrr;->d:Llcm;

    if-eqz v0, :cond_3

    .line 88
    const/4 v0, 0x4

    iget-object v1, p0, Lmrr;->d:Llcm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 90
    :cond_3
    iget-object v0, p0, Lmrr;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 91
    const/4 v0, 0x5

    iget-object v1, p0, Lmrr;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 93
    :cond_4
    iget-object v0, p0, Lmrr;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 94
    const/4 v0, 0x6

    iget-object v1, p0, Lmrr;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 96
    :cond_5
    iget-object v0, p0, Lmrr;->g:Lmst;

    if-eqz v0, :cond_6

    .line 97
    const/4 v0, 0x7

    iget-object v1, p0, Lmrr;->g:Lmst;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 99
    :cond_6
    iget-object v0, p0, Lmrr;->h:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 100
    const/16 v0, 0xa

    iget-object v1, p0, Lmrr;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 102
    :cond_7
    iget-object v0, p0, Lmrr;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 103
    const/16 v0, 0xb

    iget-object v1, p0, Lmrr;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

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
    iget-object v1, p0, Lmrr;->a:Lmrj;

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    iget-object v2, p0, Lmrr;->a:Lmrj;

    .line 113
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_0
    iget-object v1, p0, Lmrr;->b:Llum;

    if-eqz v1, :cond_1

    .line 116
    const/4 v1, 0x2

    iget-object v2, p0, Lmrr;->b:Llum;

    .line 117
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_1
    iget-object v1, p0, Lmrr;->c:Llfq;

    if-eqz v1, :cond_2

    .line 120
    const/4 v1, 0x3

    iget-object v2, p0, Lmrr;->c:Llfq;

    .line 121
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_2
    iget-object v1, p0, Lmrr;->d:Llcm;

    if-eqz v1, :cond_3

    .line 124
    const/4 v1, 0x4

    iget-object v2, p0, Lmrr;->d:Llcm;

    .line 125
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_3
    iget-object v1, p0, Lmrr;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 128
    const/4 v1, 0x5

    iget-object v2, p0, Lmrr;->e:Ljava/lang/Integer;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_4
    iget-object v1, p0, Lmrr;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 132
    const/4 v1, 0x6

    iget-object v2, p0, Lmrr;->f:Ljava/lang/Integer;

    .line 133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_5
    iget-object v1, p0, Lmrr;->g:Lmst;

    if-eqz v1, :cond_6

    .line 136
    const/4 v1, 0x7

    iget-object v2, p0, Lmrr;->g:Lmst;

    .line 137
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_6
    iget-object v1, p0, Lmrr;->h:Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 140
    const/16 v1, 0xa

    iget-object v2, p0, Lmrr;->h:Ljava/lang/Float;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 141
    add-int/2addr v0, v1

    .line 143
    :cond_7
    iget-object v1, p0, Lmrr;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 144
    const/16 v1, 0xb

    iget-object v2, p0, Lmrr;->i:Ljava/lang/Boolean;

    .line 145
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 145
    add-int/2addr v0, v1

    .line 147
    :cond_8
    return v0
.end method
