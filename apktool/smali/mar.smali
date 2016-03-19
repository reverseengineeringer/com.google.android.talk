.class public final Lmar;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmar;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Lmas;

.field public g:[Llyx;

.field public h:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Llyb;-><init>()V

    .line 50
    iput-object v1, p0, Lmar;->a:Ljava/lang/Long;

    .line 51
    iput-object v1, p0, Lmar;->b:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lmar;->c:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lmar;->d:Ljava/lang/String;

    .line 54
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lmar;->e:[Ljava/lang/String;

    .line 55
    invoke-static {}, Lmas;->d()[Lmas;

    move-result-object v0

    iput-object v0, p0, Lmar;->f:[Lmas;

    .line 56
    invoke-static {}, Llyx;->d()[Llyx;

    move-result-object v0

    iput-object v0, p0, Lmar;->g:[Llyx;

    .line 57
    iput-object v1, p0, Lmar;->h:[B

    .line 58
    iput-object v1, p0, Lmar;->eD:Llyd;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lmar;->eE:I

    .line 60
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1170
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1171
    sparse-switch v0, :sswitch_data_0

    .line 1175
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1176
    :sswitch_0
    return-object p0

    .line 1181
    :sswitch_1
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmar;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1185
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmar;->b:Ljava/lang/String;

    goto :goto_0

    .line 1189
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmar;->c:Ljava/lang/String;

    goto :goto_0

    .line 1193
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmar;->d:Ljava/lang/String;

    goto :goto_0

    .line 1197
    :sswitch_5
    const/16 v0, 0x2a

    .line 1198
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1199
    iget-object v0, p0, Lmar;->e:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1200
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1201
    if-eqz v0, :cond_1

    .line 1202
    iget-object v3, p0, Lmar;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1204
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1205
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1206
    invoke-virtual {p1}, Llxy;->a()I

    .line 1204
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1199
    :cond_2
    iget-object v0, p0, Lmar;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1209
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1210
    iput-object v2, p0, Lmar;->e:[Ljava/lang/String;

    goto :goto_0

    .line 1214
    :sswitch_6
    const/16 v0, 0x32

    .line 1215
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1216
    iget-object v0, p0, Lmar;->f:[Lmas;

    if-nez v0, :cond_5

    move v0, v1

    .line 1217
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmas;

    .line 1219
    if-eqz v0, :cond_4

    .line 1220
    iget-object v3, p0, Lmar;->f:[Lmas;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1222
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1223
    new-instance v3, Lmas;

    invoke-direct {v3}, Lmas;-><init>()V

    aput-object v3, v2, v0

    .line 1224
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1225
    invoke-virtual {p1}, Llxy;->a()I

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1216
    :cond_5
    iget-object v0, p0, Lmar;->f:[Lmas;

    array-length v0, v0

    goto :goto_3

    .line 1228
    :cond_6
    new-instance v3, Lmas;

    invoke-direct {v3}, Lmas;-><init>()V

    aput-object v3, v2, v0

    .line 1229
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1230
    iput-object v2, p0, Lmar;->f:[Lmas;

    goto/16 :goto_0

    .line 1234
    :sswitch_7
    const/16 v0, 0x3a

    .line 1235
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1236
    iget-object v0, p0, Lmar;->g:[Llyx;

    if-nez v0, :cond_8

    move v0, v1

    .line 1237
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Llyx;

    .line 1239
    if-eqz v0, :cond_7

    .line 1240
    iget-object v3, p0, Lmar;->g:[Llyx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1243
    new-instance v3, Llyx;

    invoke-direct {v3}, Llyx;-><init>()V

    aput-object v3, v2, v0

    .line 1244
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1245
    invoke-virtual {p1}, Llxy;->a()I

    .line 1242
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1236
    :cond_8
    iget-object v0, p0, Lmar;->g:[Llyx;

    array-length v0, v0

    goto :goto_5

    .line 1248
    :cond_9
    new-instance v3, Llyx;

    invoke-direct {v3}, Llyx;-><init>()V

    aput-object v3, v2, v0

    .line 1249
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1250
    iput-object v2, p0, Lmar;->g:[Llyx;

    goto/16 :goto_0

    .line 1254
    :sswitch_8
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmar;->h:[B

    goto/16 :goto_0

    .line 1171
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lmar;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iget-object v2, p0, Lmar;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 68
    :cond_0
    iget-object v0, p0, Lmar;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x2

    iget-object v2, p0, Lmar;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lmar;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 72
    const/4 v0, 0x3

    iget-object v2, p0, Lmar;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lmar;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 75
    const/4 v0, 0x4

    iget-object v2, p0, Lmar;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lmar;->e:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmar;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 78
    :goto_0
    iget-object v2, p0, Lmar;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 79
    iget-object v2, p0, Lmar;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 80
    if-eqz v2, :cond_4

    .line 81
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 78
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_5
    iget-object v0, p0, Lmar;->f:[Lmas;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmar;->f:[Lmas;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 86
    :goto_1
    iget-object v2, p0, Lmar;->f:[Lmas;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 87
    iget-object v2, p0, Lmar;->f:[Lmas;

    aget-object v2, v2, v0

    .line 88
    if-eqz v2, :cond_6

    .line 89
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 86
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_7
    iget-object v0, p0, Lmar;->g:[Llyx;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmar;->g:[Llyx;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 94
    :goto_2
    iget-object v0, p0, Lmar;->g:[Llyx;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 95
    iget-object v0, p0, Lmar;->g:[Llyx;

    aget-object v0, v0, v1

    .line 96
    if-eqz v0, :cond_8

    .line 97
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 94
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_9
    iget-object v0, p0, Lmar;->h:[B

    if-eqz v0, :cond_a

    .line 102
    const/16 v0, 0x8

    iget-object v1, p0, Lmar;->h:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 104
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 105
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 110
    iget-object v1, p0, Lmar;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x1

    iget-object v3, p0, Lmar;->a:Ljava/lang/Long;

    .line 112
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_0
    iget-object v1, p0, Lmar;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 115
    const/4 v1, 0x2

    iget-object v3, p0, Lmar;->b:Ljava/lang/String;

    .line 116
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_1
    iget-object v1, p0, Lmar;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 119
    const/4 v1, 0x3

    iget-object v3, p0, Lmar;->c:Ljava/lang/String;

    .line 120
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_2
    iget-object v1, p0, Lmar;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 123
    const/4 v1, 0x4

    iget-object v3, p0, Lmar;->d:Ljava/lang/String;

    .line 124
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_3
    iget-object v1, p0, Lmar;->e:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmar;->e:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    move v4, v2

    .line 129
    :goto_0
    iget-object v5, p0, Lmar;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 130
    iget-object v5, p0, Lmar;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 131
    if-eqz v5, :cond_4

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 134
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 129
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_5
    add-int/2addr v0, v3

    .line 138
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 140
    :cond_6
    iget-object v1, p0, Lmar;->f:[Lmas;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmar;->f:[Lmas;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    move v0, v2

    .line 141
    :goto_1
    iget-object v3, p0, Lmar;->f:[Lmas;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 142
    iget-object v3, p0, Lmar;->f:[Lmas;

    aget-object v3, v3, v0

    .line 143
    if-eqz v3, :cond_7

    .line 144
    const/4 v4, 0x6

    .line 145
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v1, v3

    .line 141
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v1

    .line 149
    :cond_9
    iget-object v1, p0, Lmar;->g:[Llyx;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lmar;->g:[Llyx;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 150
    :goto_2
    iget-object v1, p0, Lmar;->g:[Llyx;

    array-length v1, v1

    if-ge v2, v1, :cond_b

    .line 151
    iget-object v1, p0, Lmar;->g:[Llyx;

    aget-object v1, v1, v2

    .line 152
    if-eqz v1, :cond_a

    .line 153
    const/4 v3, 0x7

    .line 154
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 158
    :cond_b
    iget-object v1, p0, Lmar;->h:[B

    if-eqz v1, :cond_c

    .line 159
    const/16 v1, 0x8

    iget-object v2, p0, Lmar;->h:[B

    .line 160
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    :cond_c
    return v0
.end method
