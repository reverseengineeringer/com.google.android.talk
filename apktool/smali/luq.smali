.class public final Lluq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lluq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;

.field public e:Ljava/lang/Float;

.field public f:Ljava/lang/Float;

.field public g:Ljava/lang/Float;

.field public h:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1058
    iput-object v0, p0, Lluq;->a:Ljava/lang/Float;

    .line 1059
    iput-object v0, p0, Lluq;->b:Ljava/lang/Float;

    .line 1060
    iput-object v0, p0, Lluq;->c:Ljava/lang/Float;

    .line 1061
    iput-object v0, p0, Lluq;->d:Ljava/lang/Float;

    .line 1062
    iput-object v0, p0, Lluq;->e:Ljava/lang/Float;

    .line 1063
    iput-object v0, p0, Lluq;->f:Ljava/lang/Float;

    .line 1064
    iput-object v0, p0, Lluq;->g:Ljava/lang/Float;

    .line 1065
    iput-object v0, p0, Lluq;->h:Ljava/lang/Float;

    .line 1066
    iput-object v0, p0, Lluq;->eD:Llyd;

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Lluq;->eE:I

    .line 55
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 9144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9145
    sparse-switch v0, :sswitch_data_0

    .line 9149
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9150
    :sswitch_0
    return-object p0

    .line 9155
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluq;->a:Ljava/lang/Float;

    goto :goto_0

    .line 9159
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluq;->b:Ljava/lang/Float;

    goto :goto_0

    .line 9163
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluq;->c:Ljava/lang/Float;

    goto :goto_0

    .line 9167
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluq;->g:Ljava/lang/Float;

    goto :goto_0

    .line 9171
    :sswitch_5
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluq;->h:Ljava/lang/Float;

    goto :goto_0

    .line 9175
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluq;->e:Ljava/lang/Float;

    goto :goto_0

    .line 9179
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluq;->d:Ljava/lang/Float;

    goto :goto_0

    .line 9183
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lluq;->f:Ljava/lang/Float;

    goto :goto_0

    .line 9145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x3d -> :sswitch_4
        0x45 -> :sswitch_5
        0x4d -> :sswitch_6
        0x55 -> :sswitch_7
        0x5d -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lluq;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iget-object v1, p0, Lluq;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 77
    :cond_0
    iget-object v0, p0, Lluq;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x2

    iget-object v1, p0, Lluq;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 80
    :cond_1
    iget-object v0, p0, Lluq;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x3

    iget-object v1, p0, Lluq;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 83
    :cond_2
    iget-object v0, p0, Lluq;->g:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x7

    iget-object v1, p0, Lluq;->g:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 86
    :cond_3
    iget-object v0, p0, Lluq;->h:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 87
    const/16 v0, 0x8

    iget-object v1, p0, Lluq;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 89
    :cond_4
    iget-object v0, p0, Lluq;->e:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 90
    const/16 v0, 0x9

    iget-object v1, p0, Lluq;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 92
    :cond_5
    iget-object v0, p0, Lluq;->d:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 93
    const/16 v0, 0xa

    iget-object v1, p0, Lluq;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 95
    :cond_6
    iget-object v0, p0, Lluq;->f:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 96
    const/16 v0, 0xb

    iget-object v1, p0, Lluq;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 98
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 99
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 104
    iget-object v1, p0, Lluq;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x1

    iget-object v2, p0, Lluq;->a:Ljava/lang/Float;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 106
    add-int/2addr v0, v1

    .line 108
    :cond_0
    iget-object v1, p0, Lluq;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 109
    const/4 v1, 0x2

    iget-object v2, p0, Lluq;->b:Ljava/lang/Float;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 110
    add-int/2addr v0, v1

    .line 112
    :cond_1
    iget-object v1, p0, Lluq;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 113
    const/4 v1, 0x3

    iget-object v2, p0, Lluq;->c:Ljava/lang/Float;

    .line 114
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 114
    add-int/2addr v0, v1

    .line 116
    :cond_2
    iget-object v1, p0, Lluq;->g:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 117
    const/4 v1, 0x7

    iget-object v2, p0, Lluq;->g:Ljava/lang/Float;

    .line 118
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 118
    add-int/2addr v0, v1

    .line 120
    :cond_3
    iget-object v1, p0, Lluq;->h:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 121
    const/16 v1, 0x8

    iget-object v2, p0, Lluq;->h:Ljava/lang/Float;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 122
    add-int/2addr v0, v1

    .line 124
    :cond_4
    iget-object v1, p0, Lluq;->e:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 125
    const/16 v1, 0x9

    iget-object v2, p0, Lluq;->e:Ljava/lang/Float;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 6569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 126
    add-int/2addr v0, v1

    .line 128
    :cond_5
    iget-object v1, p0, Lluq;->d:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 129
    const/16 v1, 0xa

    iget-object v2, p0, Lluq;->d:Ljava/lang/Float;

    .line 130
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 7569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 130
    add-int/2addr v0, v1

    .line 132
    :cond_6
    iget-object v1, p0, Lluq;->f:Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 133
    const/16 v1, 0xb

    iget-object v2, p0, Lluq;->f:Ljava/lang/Float;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 134
    add-int/2addr v0, v1

    .line 136
    :cond_7
    return v0
.end method
