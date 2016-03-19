.class public final Llup;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llup;",
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

    .line 49
    invoke-direct {p0}, Llyb;-><init>()V

    .line 50
    iput-object v0, p0, Llup;->a:Ljava/lang/Float;

    .line 51
    iput-object v0, p0, Llup;->b:Ljava/lang/Float;

    .line 52
    iput-object v0, p0, Llup;->c:Ljava/lang/Float;

    .line 53
    iput-object v0, p0, Llup;->d:Ljava/lang/Float;

    .line 54
    iput-object v0, p0, Llup;->e:Ljava/lang/Float;

    .line 55
    iput-object v0, p0, Llup;->f:Ljava/lang/Float;

    .line 56
    iput-object v0, p0, Llup;->g:Ljava/lang/Float;

    .line 57
    iput-object v0, p0, Llup;->h:Ljava/lang/Float;

    .line 58
    iput-object v0, p0, Llup;->eD:Llyd;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Llup;->eE:I

    .line 60
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 9135
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9136
    sparse-switch v0, :sswitch_data_0

    .line 9140
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9141
    :sswitch_0
    return-object p0

    .line 9146
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llup;->a:Ljava/lang/Float;

    goto :goto_0

    .line 9150
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llup;->b:Ljava/lang/Float;

    goto :goto_0

    .line 9154
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llup;->c:Ljava/lang/Float;

    goto :goto_0

    .line 9158
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llup;->g:Ljava/lang/Float;

    goto :goto_0

    .line 9162
    :sswitch_5
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llup;->h:Ljava/lang/Float;

    goto :goto_0

    .line 9166
    :sswitch_6
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llup;->e:Ljava/lang/Float;

    goto :goto_0

    .line 9170
    :sswitch_7
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llup;->d:Ljava/lang/Float;

    goto :goto_0

    .line 9174
    :sswitch_8
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llup;->f:Ljava/lang/Float;

    goto :goto_0

    .line 9136
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
    .line 65
    iget-object v0, p0, Llup;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iget-object v1, p0, Llup;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 68
    :cond_0
    iget-object v0, p0, Llup;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x2

    iget-object v1, p0, Llup;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 71
    :cond_1
    iget-object v0, p0, Llup;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 72
    const/4 v0, 0x3

    iget-object v1, p0, Llup;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 74
    :cond_2
    iget-object v0, p0, Llup;->g:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 75
    const/4 v0, 0x7

    iget-object v1, p0, Llup;->g:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 77
    :cond_3
    iget-object v0, p0, Llup;->h:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 78
    const/16 v0, 0x8

    iget-object v1, p0, Llup;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 80
    :cond_4
    iget-object v0, p0, Llup;->e:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 81
    const/16 v0, 0x9

    iget-object v1, p0, Llup;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 83
    :cond_5
    iget-object v0, p0, Llup;->d:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 84
    const/16 v0, 0xa

    iget-object v1, p0, Llup;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 86
    :cond_6
    iget-object v0, p0, Llup;->f:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 87
    const/16 v0, 0xb

    iget-object v1, p0, Llup;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 89
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 90
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 95
    iget-object v1, p0, Llup;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x1

    iget-object v2, p0, Llup;->a:Ljava/lang/Float;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 97
    add-int/2addr v0, v1

    .line 99
    :cond_0
    iget-object v1, p0, Llup;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x2

    iget-object v2, p0, Llup;->b:Ljava/lang/Float;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 101
    add-int/2addr v0, v1

    .line 103
    :cond_1
    iget-object v1, p0, Llup;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 104
    const/4 v1, 0x3

    iget-object v2, p0, Llup;->c:Ljava/lang/Float;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 105
    add-int/2addr v0, v1

    .line 107
    :cond_2
    iget-object v1, p0, Llup;->g:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 108
    const/4 v1, 0x7

    iget-object v2, p0, Llup;->g:Ljava/lang/Float;

    .line 109
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 109
    add-int/2addr v0, v1

    .line 111
    :cond_3
    iget-object v1, p0, Llup;->h:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 112
    const/16 v1, 0x8

    iget-object v2, p0, Llup;->h:Ljava/lang/Float;

    .line 113
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 113
    add-int/2addr v0, v1

    .line 115
    :cond_4
    iget-object v1, p0, Llup;->e:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 116
    const/16 v1, 0x9

    iget-object v2, p0, Llup;->e:Ljava/lang/Float;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 6569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 117
    add-int/2addr v0, v1

    .line 119
    :cond_5
    iget-object v1, p0, Llup;->d:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 120
    const/16 v1, 0xa

    iget-object v2, p0, Llup;->d:Ljava/lang/Float;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 7569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 121
    add-int/2addr v0, v1

    .line 123
    :cond_6
    iget-object v1, p0, Llup;->f:Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 124
    const/16 v1, 0xb

    iget-object v2, p0, Llup;->f:Ljava/lang/Float;

    .line 125
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 125
    add-int/2addr v0, v1

    .line 127
    :cond_7
    return v0
.end method
