.class public final Ljim;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljim;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljgy;

.field public e:Ljhr;

.field public f:Ljjb;

.field public g:Ljhn;

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Llyb;-><init>()V

    .line 72
    iput-object v0, p0, Ljim;->a:Ljava/lang/String;

    .line 73
    iput v1, p0, Ljim;->b:I

    .line 74
    iput v1, p0, Ljim;->c:I

    .line 75
    iput-object v0, p0, Ljim;->d:Ljgy;

    .line 76
    iput-object v0, p0, Ljim;->e:Ljhr;

    .line 77
    iput-object v0, p0, Ljim;->f:Ljjb;

    .line 78
    iput-object v0, p0, Ljim;->g:Ljhn;

    .line 79
    iput v1, p0, Ljim;->h:I

    .line 80
    iput-object v0, p0, Ljim;->eD:Llyd;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Ljim;->eE:I

    .line 82
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1158
    sparse-switch v0, :sswitch_data_0

    .line 1162
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    :sswitch_0
    return-object p0

    .line 1168
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljim;->a:Ljava/lang/String;

    goto :goto_0

    .line 1172
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1173
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1186
    :pswitch_0
    iput v0, p0, Ljim;->b:I

    goto :goto_0

    .line 1192
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1193
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1196
    :pswitch_1
    iput v0, p0, Ljim;->c:I

    goto :goto_0

    .line 1202
    :sswitch_4
    iget-object v0, p0, Ljim;->d:Ljgy;

    if-nez v0, :cond_1

    .line 1203
    new-instance v0, Ljgy;

    invoke-direct {v0}, Ljgy;-><init>()V

    iput-object v0, p0, Ljim;->d:Ljgy;

    .line 1205
    :cond_1
    iget-object v0, p0, Ljim;->d:Ljgy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1209
    :sswitch_5
    iget-object v0, p0, Ljim;->e:Ljhr;

    if-nez v0, :cond_2

    .line 1210
    new-instance v0, Ljhr;

    invoke-direct {v0}, Ljhr;-><init>()V

    iput-object v0, p0, Ljim;->e:Ljhr;

    .line 1212
    :cond_2
    iget-object v0, p0, Ljim;->e:Ljhr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1216
    :sswitch_6
    iget-object v0, p0, Ljim;->f:Ljjb;

    if-nez v0, :cond_3

    .line 1217
    new-instance v0, Ljjb;

    invoke-direct {v0}, Ljjb;-><init>()V

    iput-object v0, p0, Ljim;->f:Ljjb;

    .line 1219
    :cond_3
    iget-object v0, p0, Ljim;->f:Ljjb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1223
    :sswitch_7
    iget-object v0, p0, Ljim;->g:Ljhn;

    if-nez v0, :cond_4

    .line 1224
    new-instance v0, Ljhn;

    invoke-direct {v0}, Ljhn;-><init>()V

    iput-object v0, p0, Ljim;->g:Ljhn;

    .line 1226
    :cond_4
    iget-object v0, p0, Ljim;->g:Ljhn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1230
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1231
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1235
    :pswitch_2
    iput v0, p0, Ljim;->h:I

    goto :goto_0

    .line 1158
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    .line 1173
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1193
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1231
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 87
    iget-object v0, p0, Ljim;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    iget-object v1, p0, Ljim;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 90
    :cond_0
    iget v0, p0, Ljim;->b:I

    if-eq v0, v2, :cond_1

    .line 91
    const/4 v0, 0x2

    iget v1, p0, Ljim;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 93
    :cond_1
    iget v0, p0, Ljim;->c:I

    if-eq v0, v2, :cond_2

    .line 94
    const/4 v0, 0x3

    iget v1, p0, Ljim;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 96
    :cond_2
    iget-object v0, p0, Ljim;->d:Ljgy;

    if-eqz v0, :cond_3

    .line 97
    const/4 v0, 0x4

    iget-object v1, p0, Ljim;->d:Ljgy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 99
    :cond_3
    iget-object v0, p0, Ljim;->e:Ljhr;

    if-eqz v0, :cond_4

    .line 100
    const/4 v0, 0x5

    iget-object v1, p0, Ljim;->e:Ljhr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 102
    :cond_4
    iget-object v0, p0, Ljim;->f:Ljjb;

    if-eqz v0, :cond_5

    .line 103
    const/4 v0, 0x6

    iget-object v1, p0, Ljim;->f:Ljjb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 105
    :cond_5
    iget-object v0, p0, Ljim;->g:Ljhn;

    if-eqz v0, :cond_6

    .line 106
    const/4 v0, 0x7

    iget-object v1, p0, Ljim;->g:Ljhn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 108
    :cond_6
    iget v0, p0, Ljim;->h:I

    if-eq v0, v2, :cond_7

    .line 109
    const/16 v0, 0x8

    iget v1, p0, Ljim;->h:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 111
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 112
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 116
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 117
    iget-object v1, p0, Ljim;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x1

    iget-object v2, p0, Ljim;->a:Ljava/lang/String;

    .line 119
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_0
    iget v1, p0, Ljim;->b:I

    if-eq v1, v3, :cond_1

    .line 122
    const/4 v1, 0x2

    iget v2, p0, Ljim;->b:I

    .line 123
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_1
    iget v1, p0, Ljim;->c:I

    if-eq v1, v3, :cond_2

    .line 126
    const/4 v1, 0x3

    iget v2, p0, Ljim;->c:I

    .line 127
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_2
    iget-object v1, p0, Ljim;->d:Ljgy;

    if-eqz v1, :cond_3

    .line 130
    const/4 v1, 0x4

    iget-object v2, p0, Ljim;->d:Ljgy;

    .line 131
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_3
    iget-object v1, p0, Ljim;->e:Ljhr;

    if-eqz v1, :cond_4

    .line 134
    const/4 v1, 0x5

    iget-object v2, p0, Ljim;->e:Ljhr;

    .line 135
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_4
    iget-object v1, p0, Ljim;->f:Ljjb;

    if-eqz v1, :cond_5

    .line 138
    const/4 v1, 0x6

    iget-object v2, p0, Ljim;->f:Ljjb;

    .line 139
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_5
    iget-object v1, p0, Ljim;->g:Ljhn;

    if-eqz v1, :cond_6

    .line 142
    const/4 v1, 0x7

    iget-object v2, p0, Ljim;->g:Ljhn;

    .line 143
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_6
    iget v1, p0, Ljim;->h:I

    if-eq v1, v3, :cond_7

    .line 146
    const/16 v1, 0x8

    iget v2, p0, Ljim;->h:I

    .line 147
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_7
    return v0
.end method
