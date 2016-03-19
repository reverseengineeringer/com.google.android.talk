.class public final Llqo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llsv;

.field public b:Ljava/lang/String;

.field public c:Llgf;

.field public d:[Llgf;

.field public e:[Llgf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    iput-object v1, p0, Llqo;->a:Llsv;

    .line 42
    iput-object v1, p0, Llqo;->b:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Llqo;->c:Llgf;

    .line 44
    invoke-static {}, Llgf;->d()[Llgf;

    move-result-object v0

    iput-object v0, p0, Llqo;->d:[Llgf;

    .line 45
    invoke-static {}, Llgf;->d()[Llgf;

    move-result-object v0

    iput-object v0, p0, Llqo;->e:[Llgf;

    .line 46
    iput-object v1, p0, Llqo;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Llqo;->eE:I

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1122
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1123
    sparse-switch v0, :sswitch_data_0

    .line 1127
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    :sswitch_0
    return-object p0

    .line 1133
    :sswitch_1
    iget-object v0, p0, Llqo;->a:Llsv;

    if-nez v0, :cond_1

    .line 1134
    new-instance v0, Llsv;

    invoke-direct {v0}, Llsv;-><init>()V

    iput-object v0, p0, Llqo;->a:Llsv;

    .line 1136
    :cond_1
    iget-object v0, p0, Llqo;->a:Llsv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1140
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llqo;->b:Ljava/lang/String;

    goto :goto_0

    .line 1144
    :sswitch_3
    iget-object v0, p0, Llqo;->c:Llgf;

    if-nez v0, :cond_2

    .line 1145
    new-instance v0, Llgf;

    invoke-direct {v0}, Llgf;-><init>()V

    iput-object v0, p0, Llqo;->c:Llgf;

    .line 1147
    :cond_2
    iget-object v0, p0, Llqo;->c:Llgf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1151
    :sswitch_4
    const/16 v0, 0x2a

    .line 1152
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1153
    iget-object v0, p0, Llqo;->d:[Llgf;

    if-nez v0, :cond_4

    move v0, v1

    .line 1154
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llgf;

    .line 1156
    if-eqz v0, :cond_3

    .line 1157
    iget-object v3, p0, Llqo;->d:[Llgf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1159
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1160
    new-instance v3, Llgf;

    invoke-direct {v3}, Llgf;-><init>()V

    aput-object v3, v2, v0

    .line 1161
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1162
    invoke-virtual {p1}, Llxy;->a()I

    .line 1159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1153
    :cond_4
    iget-object v0, p0, Llqo;->d:[Llgf;

    array-length v0, v0

    goto :goto_1

    .line 1165
    :cond_5
    new-instance v3, Llgf;

    invoke-direct {v3}, Llgf;-><init>()V

    aput-object v3, v2, v0

    .line 1166
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1167
    iput-object v2, p0, Llqo;->d:[Llgf;

    goto :goto_0

    .line 1171
    :sswitch_5
    const/16 v0, 0x32

    .line 1172
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1173
    iget-object v0, p0, Llqo;->e:[Llgf;

    if-nez v0, :cond_7

    move v0, v1

    .line 1174
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Llgf;

    .line 1176
    if-eqz v0, :cond_6

    .line 1177
    iget-object v3, p0, Llqo;->e:[Llgf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1179
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1180
    new-instance v3, Llgf;

    invoke-direct {v3}, Llgf;-><init>()V

    aput-object v3, v2, v0

    .line 1181
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1182
    invoke-virtual {p1}, Llxy;->a()I

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1173
    :cond_7
    iget-object v0, p0, Llqo;->e:[Llgf;

    array-length v0, v0

    goto :goto_3

    .line 1185
    :cond_8
    new-instance v3, Llgf;

    invoke-direct {v3}, Llgf;-><init>()V

    aput-object v3, v2, v0

    .line 1186
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1187
    iput-object v2, p0, Llqo;->e:[Llgf;

    goto/16 :goto_0

    .line 1123
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Llqo;->a:Llsv;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v2, p0, Llqo;->a:Llsv;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_0
    iget-object v0, p0, Llqo;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v2, p0, Llqo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 59
    :cond_1
    iget-object v0, p0, Llqo;->c:Llgf;

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x3

    iget-object v2, p0, Llqo;->c:Llgf;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 62
    :cond_2
    iget-object v0, p0, Llqo;->d:[Llgf;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llqo;->d:[Llgf;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 63
    :goto_0
    iget-object v2, p0, Llqo;->d:[Llgf;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 64
    iget-object v2, p0, Llqo;->d:[Llgf;

    aget-object v2, v2, v0

    .line 65
    if-eqz v2, :cond_3

    .line 66
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Llqo;->e:[Llgf;

    if-eqz v0, :cond_6

    iget-object v0, p0, Llqo;->e:[Llgf;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 71
    :goto_1
    iget-object v0, p0, Llqo;->e:[Llgf;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 72
    iget-object v0, p0, Llqo;->e:[Llgf;

    aget-object v0, v0, v1

    .line 73
    if-eqz v0, :cond_5

    .line 74
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 71
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 79
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 84
    iget-object v2, p0, Llqo;->a:Llsv;

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x1

    iget-object v3, p0, Llqo;->a:Llsv;

    .line 86
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 88
    :cond_0
    iget-object v2, p0, Llqo;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 89
    const/4 v2, 0x2

    iget-object v3, p0, Llqo;->b:Ljava/lang/String;

    .line 90
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 92
    :cond_1
    iget-object v2, p0, Llqo;->c:Llgf;

    if-eqz v2, :cond_2

    .line 93
    const/4 v2, 0x3

    iget-object v3, p0, Llqo;->c:Llgf;

    .line 94
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 96
    :cond_2
    iget-object v2, p0, Llqo;->d:[Llgf;

    if-eqz v2, :cond_5

    iget-object v2, p0, Llqo;->d:[Llgf;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 97
    :goto_0
    iget-object v3, p0, Llqo;->d:[Llgf;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 98
    iget-object v3, p0, Llqo;->d:[Llgf;

    aget-object v3, v3, v0

    .line 99
    if-eqz v3, :cond_3

    .line 100
    const/4 v4, 0x5

    .line 101
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 97
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 105
    :cond_5
    iget-object v2, p0, Llqo;->e:[Llgf;

    if-eqz v2, :cond_7

    iget-object v2, p0, Llqo;->e:[Llgf;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 106
    :goto_1
    iget-object v2, p0, Llqo;->e:[Llgf;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 107
    iget-object v2, p0, Llqo;->e:[Llgf;

    aget-object v2, v2, v1

    .line 108
    if-eqz v2, :cond_6

    .line 109
    const/4 v3, 0x6

    .line 110
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 106
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_7
    return v0
.end method
