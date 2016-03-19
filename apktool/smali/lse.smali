.class public final Llse;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llse;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:I

.field public d:Llrz;

.field public e:Llsd;

.field public f:Llsi;

.field public g:Llsa;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Llyb;-><init>()V

    .line 65
    iput-object v1, p0, Llse;->a:Ljava/lang/Integer;

    .line 66
    iput-object v1, p0, Llse;->b:Ljava/lang/Integer;

    .line 67
    const/high16 v0, -0x80000000

    iput v0, p0, Llse;->c:I

    .line 68
    iput-object v1, p0, Llse;->d:Llrz;

    .line 69
    iput-object v1, p0, Llse;->e:Llsd;

    .line 70
    iput-object v1, p0, Llse;->f:Llsi;

    .line 71
    iput-object v1, p0, Llse;->g:Llsa;

    .line 72
    iput-object v1, p0, Llse;->eD:Llyd;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Llse;->eE:I

    .line 74
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1142
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1143
    sparse-switch v0, :sswitch_data_0

    .line 1147
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    :sswitch_0
    return-object p0

    .line 1153
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llse;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1157
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llse;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1161
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1162
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1177
    :pswitch_0
    iput v0, p0, Llse;->c:I

    goto :goto_0

    .line 1183
    :sswitch_4
    iget-object v0, p0, Llse;->d:Llrz;

    if-nez v0, :cond_1

    .line 1184
    new-instance v0, Llrz;

    invoke-direct {v0}, Llrz;-><init>()V

    iput-object v0, p0, Llse;->d:Llrz;

    .line 1186
    :cond_1
    iget-object v0, p0, Llse;->d:Llrz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1190
    :sswitch_5
    iget-object v0, p0, Llse;->e:Llsd;

    if-nez v0, :cond_2

    .line 1191
    new-instance v0, Llsd;

    invoke-direct {v0}, Llsd;-><init>()V

    iput-object v0, p0, Llse;->e:Llsd;

    .line 1193
    :cond_2
    iget-object v0, p0, Llse;->e:Llsd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1197
    :sswitch_6
    iget-object v0, p0, Llse;->f:Llsi;

    if-nez v0, :cond_3

    .line 1198
    new-instance v0, Llsi;

    invoke-direct {v0}, Llsi;-><init>()V

    iput-object v0, p0, Llse;->f:Llsi;

    .line 1200
    :cond_3
    iget-object v0, p0, Llse;->f:Llsi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1204
    :sswitch_7
    iget-object v0, p0, Llse;->g:Llsa;

    if-nez v0, :cond_4

    .line 1205
    new-instance v0, Llsa;

    invoke-direct {v0}, Llsa;-><init>()V

    iput-object v0, p0, Llse;->g:Llsa;

    .line 1207
    :cond_4
    iget-object v0, p0, Llse;->g:Llsa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1143
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 1162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Llse;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iget-object v1, p0, Llse;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 82
    :cond_0
    iget-object v0, p0, Llse;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x2

    iget-object v1, p0, Llse;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 85
    :cond_1
    iget v0, p0, Llse;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 86
    const/4 v0, 0x3

    iget v1, p0, Llse;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 88
    :cond_2
    iget-object v0, p0, Llse;->d:Llrz;

    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x4

    iget-object v1, p0, Llse;->d:Llrz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 91
    :cond_3
    iget-object v0, p0, Llse;->e:Llsd;

    if-eqz v0, :cond_4

    .line 92
    const/4 v0, 0x5

    iget-object v1, p0, Llse;->e:Llsd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 94
    :cond_4
    iget-object v0, p0, Llse;->f:Llsi;

    if-eqz v0, :cond_5

    .line 95
    const/4 v0, 0x6

    iget-object v1, p0, Llse;->f:Llsi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 97
    :cond_5
    iget-object v0, p0, Llse;->g:Llsa;

    if-eqz v0, :cond_6

    .line 98
    const/4 v0, 0x7

    iget-object v1, p0, Llse;->g:Llsa;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 100
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 101
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 106
    iget-object v1, p0, Llse;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x1

    iget-object v2, p0, Llse;->a:Ljava/lang/Integer;

    .line 108
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_0
    iget-object v1, p0, Llse;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 111
    const/4 v1, 0x2

    iget-object v2, p0, Llse;->b:Ljava/lang/Integer;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_1
    iget v1, p0, Llse;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 115
    const/4 v1, 0x3

    iget v2, p0, Llse;->c:I

    .line 116
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_2
    iget-object v1, p0, Llse;->d:Llrz;

    if-eqz v1, :cond_3

    .line 119
    const/4 v1, 0x4

    iget-object v2, p0, Llse;->d:Llrz;

    .line 120
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_3
    iget-object v1, p0, Llse;->e:Llsd;

    if-eqz v1, :cond_4

    .line 123
    const/4 v1, 0x5

    iget-object v2, p0, Llse;->e:Llsd;

    .line 124
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_4
    iget-object v1, p0, Llse;->f:Llsi;

    if-eqz v1, :cond_5

    .line 127
    const/4 v1, 0x6

    iget-object v2, p0, Llse;->f:Llsi;

    .line 128
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_5
    iget-object v1, p0, Llse;->g:Llsa;

    if-eqz v1, :cond_6

    .line 131
    const/4 v1, 0x7

    iget-object v2, p0, Llse;->g:Llsa;

    .line 132
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_6
    return v0
.end method
