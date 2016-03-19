.class public final Lmhu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmhu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Long;

.field public d:[Lmim;

.field public e:[Lmij;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 47
    invoke-direct {p0}, Llyb;-><init>()V

    .line 48
    iput v0, p0, Lmhu;->a:I

    .line 49
    iput v0, p0, Lmhu;->b:I

    .line 50
    iput-object v1, p0, Lmhu;->c:Ljava/lang/Long;

    .line 51
    invoke-static {}, Lmim;->d()[Lmim;

    move-result-object v0

    iput-object v0, p0, Lmhu;->d:[Lmim;

    .line 52
    invoke-static {}, Lmij;->d()[Lmij;

    move-result-object v0

    iput-object v0, p0, Lmhu;->e:[Lmij;

    .line 53
    iput-object v1, p0, Lmhu;->eD:Llyd;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lmhu;->eE:I

    .line 55
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1130
    sparse-switch v0, :sswitch_data_0

    .line 1134
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    :sswitch_0
    return-object p0

    .line 1140
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1141
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1145
    :pswitch_0
    iput v0, p0, Lmhu;->a:I

    goto :goto_0

    .line 1151
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1152
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1156
    :pswitch_1
    iput v0, p0, Lmhu;->b:I

    goto :goto_0

    .line 1162
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmhu;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1166
    :sswitch_4
    const/16 v0, 0x22

    .line 1167
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1168
    iget-object v0, p0, Lmhu;->d:[Lmim;

    if-nez v0, :cond_2

    move v0, v1

    .line 1169
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmim;

    .line 1171
    if-eqz v0, :cond_1

    .line 1172
    iget-object v3, p0, Lmhu;->d:[Lmim;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1174
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1175
    new-instance v3, Lmim;

    invoke-direct {v3}, Lmim;-><init>()V

    aput-object v3, v2, v0

    .line 1176
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1177
    invoke-virtual {p1}, Llxy;->a()I

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1168
    :cond_2
    iget-object v0, p0, Lmhu;->d:[Lmim;

    array-length v0, v0

    goto :goto_1

    .line 1180
    :cond_3
    new-instance v3, Lmim;

    invoke-direct {v3}, Lmim;-><init>()V

    aput-object v3, v2, v0

    .line 1181
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1182
    iput-object v2, p0, Lmhu;->d:[Lmim;

    goto :goto_0

    .line 1186
    :sswitch_5
    const/16 v0, 0x2a

    .line 1187
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1188
    iget-object v0, p0, Lmhu;->e:[Lmij;

    if-nez v0, :cond_5

    move v0, v1

    .line 1189
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmij;

    .line 1191
    if-eqz v0, :cond_4

    .line 1192
    iget-object v3, p0, Lmhu;->e:[Lmij;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1194
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1195
    new-instance v3, Lmij;

    invoke-direct {v3}, Lmij;-><init>()V

    aput-object v3, v2, v0

    .line 1196
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1197
    invoke-virtual {p1}, Llxy;->a()I

    .line 1194
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1188
    :cond_5
    iget-object v0, p0, Lmhu;->e:[Lmij;

    array-length v0, v0

    goto :goto_3

    .line 1200
    :cond_6
    new-instance v3, Lmij;

    invoke-direct {v3}, Lmij;-><init>()V

    aput-object v3, v2, v0

    .line 1201
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1202
    iput-object v2, p0, Lmhu;->e:[Lmij;

    goto/16 :goto_0

    .line 1130
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 1141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1152
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, -0x80000000

    .line 60
    iget v0, p0, Lmhu;->a:I

    if-eq v0, v3, :cond_0

    .line 61
    const/4 v0, 0x1

    iget v2, p0, Lmhu;->a:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 63
    :cond_0
    iget v0, p0, Lmhu;->b:I

    if-eq v0, v3, :cond_1

    .line 64
    const/4 v0, 0x2

    iget v2, p0, Lmhu;->b:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 66
    :cond_1
    iget-object v0, p0, Lmhu;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x3

    iget-object v2, p0, Lmhu;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 69
    :cond_2
    iget-object v0, p0, Lmhu;->d:[Lmim;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmhu;->d:[Lmim;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 70
    :goto_0
    iget-object v2, p0, Lmhu;->d:[Lmim;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 71
    iget-object v2, p0, Lmhu;->d:[Lmim;

    aget-object v2, v2, v0

    .line 72
    if-eqz v2, :cond_3

    .line 73
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 70
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p0, Lmhu;->e:[Lmij;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmhu;->e:[Lmij;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 78
    :goto_1
    iget-object v0, p0, Lmhu;->e:[Lmij;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 79
    iget-object v0, p0, Lmhu;->e:[Lmij;

    aget-object v0, v0, v1

    .line 80
    if-eqz v0, :cond_5

    .line 81
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 78
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 86
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 90
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 91
    iget v2, p0, Lmhu;->a:I

    if-eq v2, v4, :cond_0

    .line 92
    const/4 v2, 0x1

    iget v3, p0, Lmhu;->a:I

    .line 93
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 95
    :cond_0
    iget v2, p0, Lmhu;->b:I

    if-eq v2, v4, :cond_1

    .line 96
    const/4 v2, 0x2

    iget v3, p0, Lmhu;->b:I

    .line 97
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 99
    :cond_1
    iget-object v2, p0, Lmhu;->c:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 100
    const/4 v2, 0x3

    iget-object v3, p0, Lmhu;->c:Ljava/lang/Long;

    .line 101
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 103
    :cond_2
    iget-object v2, p0, Lmhu;->d:[Lmim;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmhu;->d:[Lmim;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 104
    :goto_0
    iget-object v3, p0, Lmhu;->d:[Lmim;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 105
    iget-object v3, p0, Lmhu;->d:[Lmim;

    aget-object v3, v3, v0

    .line 106
    if-eqz v3, :cond_3

    .line 107
    const/4 v4, 0x4

    .line 108
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 104
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 112
    :cond_5
    iget-object v2, p0, Lmhu;->e:[Lmij;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmhu;->e:[Lmij;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 113
    :goto_1
    iget-object v2, p0, Lmhu;->e:[Lmij;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 114
    iget-object v2, p0, Lmhu;->e:[Lmij;

    aget-object v2, v2, v1

    .line 115
    if-eqz v2, :cond_6

    .line 116
    const/4 v3, 0x5

    .line 117
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 113
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_7
    return v0
.end method
