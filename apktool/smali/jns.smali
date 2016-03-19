.class public final Ljns;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljns;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljnt;

.field public b:[Ljlh;

.field public c:[Ljob;

.field public d:Ljls;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    invoke-static {}, Ljnt;->d()[Ljnt;

    move-result-object v0

    iput-object v0, p0, Ljns;->a:[Ljnt;

    .line 39
    invoke-static {}, Ljlh;->d()[Ljlh;

    move-result-object v0

    iput-object v0, p0, Ljns;->b:[Ljlh;

    .line 40
    invoke-static {}, Ljob;->d()[Ljob;

    move-result-object v0

    iput-object v0, p0, Ljns;->c:[Ljob;

    .line 41
    iput-object v1, p0, Ljns;->d:Ljls;

    .line 42
    iput-object v1, p0, Ljns;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljns;->eE:I

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1122
    sparse-switch v0, :sswitch_data_0

    .line 1126
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    :sswitch_0
    return-object p0

    .line 1132
    :sswitch_1
    const/16 v0, 0xa

    .line 1133
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1134
    iget-object v0, p0, Ljns;->a:[Ljnt;

    if-nez v0, :cond_2

    move v0, v1

    .line 1135
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljnt;

    .line 1137
    if-eqz v0, :cond_1

    .line 1138
    iget-object v3, p0, Ljns;->a:[Ljnt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1140
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1141
    new-instance v3, Ljnt;

    invoke-direct {v3}, Ljnt;-><init>()V

    aput-object v3, v2, v0

    .line 1142
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1143
    invoke-virtual {p1}, Llxy;->a()I

    .line 1140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1134
    :cond_2
    iget-object v0, p0, Ljns;->a:[Ljnt;

    array-length v0, v0

    goto :goto_1

    .line 1146
    :cond_3
    new-instance v3, Ljnt;

    invoke-direct {v3}, Ljnt;-><init>()V

    aput-object v3, v2, v0

    .line 1147
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1148
    iput-object v2, p0, Ljns;->a:[Ljnt;

    goto :goto_0

    .line 1152
    :sswitch_2
    const/16 v0, 0x12

    .line 1153
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1154
    iget-object v0, p0, Ljns;->b:[Ljlh;

    if-nez v0, :cond_5

    move v0, v1

    .line 1155
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljlh;

    .line 1157
    if-eqz v0, :cond_4

    .line 1158
    iget-object v3, p0, Ljns;->b:[Ljlh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1160
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1161
    new-instance v3, Ljlh;

    invoke-direct {v3}, Ljlh;-><init>()V

    aput-object v3, v2, v0

    .line 1162
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1163
    invoke-virtual {p1}, Llxy;->a()I

    .line 1160
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1154
    :cond_5
    iget-object v0, p0, Ljns;->b:[Ljlh;

    array-length v0, v0

    goto :goto_3

    .line 1166
    :cond_6
    new-instance v3, Ljlh;

    invoke-direct {v3}, Ljlh;-><init>()V

    aput-object v3, v2, v0

    .line 1167
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1168
    iput-object v2, p0, Ljns;->b:[Ljlh;

    goto/16 :goto_0

    .line 1172
    :sswitch_3
    const/16 v0, 0x1a

    .line 1173
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1174
    iget-object v0, p0, Ljns;->c:[Ljob;

    if-nez v0, :cond_8

    move v0, v1

    .line 1175
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljob;

    .line 1177
    if-eqz v0, :cond_7

    .line 1178
    iget-object v3, p0, Ljns;->c:[Ljob;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1180
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1181
    new-instance v3, Ljob;

    invoke-direct {v3}, Ljob;-><init>()V

    aput-object v3, v2, v0

    .line 1182
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1183
    invoke-virtual {p1}, Llxy;->a()I

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1174
    :cond_8
    iget-object v0, p0, Ljns;->c:[Ljob;

    array-length v0, v0

    goto :goto_5

    .line 1186
    :cond_9
    new-instance v3, Ljob;

    invoke-direct {v3}, Ljob;-><init>()V

    aput-object v3, v2, v0

    .line 1187
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1188
    iput-object v2, p0, Ljns;->c:[Ljob;

    goto/16 :goto_0

    .line 1192
    :sswitch_4
    iget-object v0, p0, Ljns;->d:Ljls;

    if-nez v0, :cond_a

    .line 1193
    new-instance v0, Ljls;

    invoke-direct {v0}, Ljls;-><init>()V

    iput-object v0, p0, Ljns;->d:Ljls;

    .line 1195
    :cond_a
    iget-object v0, p0, Ljns;->d:Ljls;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1122
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Ljns;->a:[Ljnt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljns;->a:[Ljnt;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 50
    :goto_0
    iget-object v2, p0, Ljns;->a:[Ljnt;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 51
    iget-object v2, p0, Ljns;->a:[Ljnt;

    aget-object v2, v2, v0

    .line 52
    if-eqz v2, :cond_0

    .line 53
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Ljns;->b:[Ljlh;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljns;->b:[Ljlh;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 58
    :goto_1
    iget-object v2, p0, Ljns;->b:[Ljlh;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 59
    iget-object v2, p0, Ljns;->b:[Ljlh;

    aget-object v2, v2, v0

    .line 60
    if-eqz v2, :cond_2

    .line 61
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_3
    iget-object v0, p0, Ljns;->c:[Ljob;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljns;->c:[Ljob;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 66
    :goto_2
    iget-object v0, p0, Ljns;->c:[Ljob;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 67
    iget-object v0, p0, Ljns;->c:[Ljob;

    aget-object v0, v0, v1

    .line 68
    if-eqz v0, :cond_4

    .line 69
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 66
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    :cond_5
    iget-object v0, p0, Ljns;->d:Ljls;

    if-eqz v0, :cond_6

    .line 74
    const/4 v0, 0x4

    iget-object v1, p0, Ljns;->d:Ljls;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 76
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 77
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 82
    iget-object v2, p0, Ljns;->a:[Ljnt;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljns;->a:[Ljnt;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 83
    :goto_0
    iget-object v3, p0, Ljns;->a:[Ljnt;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 84
    iget-object v3, p0, Ljns;->a:[Ljnt;

    aget-object v3, v3, v0

    .line 85
    if-eqz v3, :cond_0

    .line 86
    const/4 v4, 0x1

    .line 87
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 91
    :cond_2
    iget-object v2, p0, Ljns;->b:[Ljlh;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljns;->b:[Ljlh;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 92
    :goto_1
    iget-object v3, p0, Ljns;->b:[Ljlh;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 93
    iget-object v3, p0, Ljns;->b:[Ljlh;

    aget-object v3, v3, v0

    .line 94
    if-eqz v3, :cond_3

    .line 95
    const/4 v4, 0x2

    .line 96
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 92
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 100
    :cond_5
    iget-object v2, p0, Ljns;->c:[Ljob;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljns;->c:[Ljob;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 101
    :goto_2
    iget-object v2, p0, Ljns;->c:[Ljob;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 102
    iget-object v2, p0, Ljns;->c:[Ljob;

    aget-object v2, v2, v1

    .line 103
    if-eqz v2, :cond_6

    .line 104
    const/4 v3, 0x3

    .line 105
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 101
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    :cond_7
    iget-object v1, p0, Ljns;->d:Ljls;

    if-eqz v1, :cond_8

    .line 110
    const/4 v1, 0x4

    iget-object v2, p0, Ljns;->d:Ljls;

    .line 111
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_8
    return v0
.end method
