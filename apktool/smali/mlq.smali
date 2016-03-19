.class public final Lmlq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmkx;

.field public b:Lmks;

.field public c:Lmks;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Lmmb;

.field public h:Lmla;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1069
    invoke-static {}, Lmkx;->d()[Lmkx;

    move-result-object v0

    iput-object v0, p0, Lmlq;->a:[Lmkx;

    .line 1070
    iput-object v1, p0, Lmlq;->b:Lmks;

    .line 1071
    iput-object v1, p0, Lmlq;->c:Lmks;

    .line 1072
    iput-object v1, p0, Lmlq;->d:Ljava/lang/Integer;

    .line 1073
    iput-object v1, p0, Lmlq;->e:Ljava/lang/Integer;

    .line 1074
    iput-object v1, p0, Lmlq;->f:Ljava/lang/Integer;

    .line 1075
    iput-object v1, p0, Lmlq;->g:Lmmb;

    .line 1076
    iput-object v1, p0, Lmlq;->h:Lmla;

    .line 1077
    iput-object v1, p0, Lmlq;->eD:Llyd;

    .line 1078
    const/4 v0, -0x1

    iput v0, p0, Lmlq;->eE:I

    .line 66
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1165
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1166
    sparse-switch v0, :sswitch_data_0

    .line 1170
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    :sswitch_0
    return-object p0

    .line 1176
    :sswitch_1
    const/16 v0, 0xa

    .line 1177
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1178
    iget-object v0, p0, Lmlq;->a:[Lmkx;

    if-nez v0, :cond_2

    move v0, v1

    .line 1179
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkx;

    .line 1181
    if-eqz v0, :cond_1

    .line 1182
    iget-object v3, p0, Lmlq;->a:[Lmkx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1184
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1185
    new-instance v3, Lmkx;

    invoke-direct {v3}, Lmkx;-><init>()V

    aput-object v3, v2, v0

    .line 1186
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1187
    invoke-virtual {p1}, Llxy;->a()I

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1178
    :cond_2
    iget-object v0, p0, Lmlq;->a:[Lmkx;

    array-length v0, v0

    goto :goto_1

    .line 1190
    :cond_3
    new-instance v3, Lmkx;

    invoke-direct {v3}, Lmkx;-><init>()V

    aput-object v3, v2, v0

    .line 1191
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1192
    iput-object v2, p0, Lmlq;->a:[Lmkx;

    goto :goto_0

    .line 1196
    :sswitch_2
    iget-object v0, p0, Lmlq;->b:Lmks;

    if-nez v0, :cond_4

    .line 1197
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmlq;->b:Lmks;

    .line 1199
    :cond_4
    iget-object v0, p0, Lmlq;->b:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1203
    :sswitch_3
    iget-object v0, p0, Lmlq;->c:Lmks;

    if-nez v0, :cond_5

    .line 1204
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmlq;->c:Lmks;

    .line 1206
    :cond_5
    iget-object v0, p0, Lmlq;->c:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1210
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmlq;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 1214
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmlq;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1218
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1219
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1227
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmlq;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1233
    :sswitch_7
    iget-object v0, p0, Lmlq;->g:Lmmb;

    if-nez v0, :cond_6

    .line 1234
    new-instance v0, Lmmb;

    invoke-direct {v0}, Lmmb;-><init>()V

    iput-object v0, p0, Lmlq;->g:Lmmb;

    .line 1236
    :cond_6
    iget-object v0, p0, Lmlq;->g:Lmmb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1240
    :sswitch_8
    iget-object v0, p0, Lmlq;->h:Lmla;

    if-nez v0, :cond_7

    .line 1241
    new-instance v0, Lmla;

    invoke-direct {v0}, Lmla;-><init>()V

    iput-object v0, p0, Lmlq;->h:Lmla;

    .line 1243
    :cond_7
    iget-object v0, p0, Lmlq;->h:Lmla;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1166
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x30 -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
        0x4a -> :sswitch_7
        0x52 -> :sswitch_8
    .end sparse-switch

    .line 1219
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lmlq;->a:[Lmkx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmlq;->a:[Lmkx;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 86
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmlq;->a:[Lmkx;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lmlq;->a:[Lmkx;

    aget-object v1, v1, v0

    .line 88
    if-eqz v1, :cond_0

    .line 89
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lmlq;->b:Lmks;

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x3

    iget-object v1, p0, Lmlq;->b:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lmlq;->c:Lmks;

    if-eqz v0, :cond_3

    .line 97
    const/4 v0, 0x4

    iget-object v1, p0, Lmlq;->c:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 99
    :cond_3
    iget-object v0, p0, Lmlq;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 100
    const/4 v0, 0x6

    iget-object v1, p0, Lmlq;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 102
    :cond_4
    iget-object v0, p0, Lmlq;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 103
    const/4 v0, 0x7

    iget-object v1, p0, Lmlq;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 105
    :cond_5
    iget-object v0, p0, Lmlq;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 106
    const/16 v0, 0x8

    iget-object v1, p0, Lmlq;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 108
    :cond_6
    iget-object v0, p0, Lmlq;->g:Lmmb;

    if-eqz v0, :cond_7

    .line 109
    const/16 v0, 0x9

    iget-object v1, p0, Lmlq;->g:Lmmb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 111
    :cond_7
    iget-object v0, p0, Lmlq;->h:Lmla;

    if-eqz v0, :cond_8

    .line 112
    const/16 v0, 0xa

    iget-object v1, p0, Lmlq;->h:Lmla;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 114
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 115
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 120
    iget-object v0, p0, Lmlq;->a:[Lmkx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmlq;->a:[Lmkx;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 121
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmlq;->a:[Lmkx;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 122
    iget-object v2, p0, Lmlq;->a:[Lmkx;

    aget-object v2, v2, v0

    .line 123
    if-eqz v2, :cond_0

    .line 124
    const/4 v3, 0x1

    .line 125
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lmlq;->b:Lmks;

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x3

    iget-object v2, p0, Lmlq;->b:Lmks;

    .line 131
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 133
    :cond_2
    iget-object v0, p0, Lmlq;->c:Lmks;

    if-eqz v0, :cond_3

    .line 134
    const/4 v0, 0x4

    iget-object v2, p0, Lmlq;->c:Lmks;

    .line 135
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 137
    :cond_3
    iget-object v0, p0, Lmlq;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 138
    const/4 v0, 0x6

    iget-object v2, p0, Lmlq;->d:Ljava/lang/Integer;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 141
    :cond_4
    iget-object v0, p0, Lmlq;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 142
    const/4 v0, 0x7

    iget-object v2, p0, Lmlq;->e:Ljava/lang/Integer;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 145
    :cond_5
    iget-object v0, p0, Lmlq;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 146
    const/16 v0, 0x8

    iget-object v2, p0, Lmlq;->f:Ljava/lang/Integer;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 149
    :cond_6
    iget-object v0, p0, Lmlq;->g:Lmmb;

    if-eqz v0, :cond_7

    .line 150
    const/16 v0, 0x9

    iget-object v2, p0, Lmlq;->g:Lmmb;

    .line 151
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 153
    :cond_7
    iget-object v0, p0, Lmlq;->h:Lmla;

    if-eqz v0, :cond_8

    .line 154
    const/16 v0, 0xa

    iget-object v2, p0, Lmlq;->h:Lmla;

    .line 155
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 157
    :cond_8
    return v1
.end method
