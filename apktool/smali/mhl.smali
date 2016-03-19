.class public final Lmhl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmhl;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Lmsu;",
            "Lmhl;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Lmhl;


# instance fields
.field public b:Ljava/lang/String;

.field public c:[Lmhk;

.field public d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lmhl;

    const-wide/32 v2, 0x15ec49c2

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lmhl;->a:Llyc;

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Lmhl;

    sput-object v0, Lmhl;->e:[Lmhl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1056
    iput-object v1, p0, Lmhl;->b:Ljava/lang/String;

    .line 1057
    invoke-static {}, Lmhk;->d()[Lmhk;

    move-result-object v0

    iput-object v0, p0, Lmhl;->c:[Lmhk;

    .line 1058
    iput-object v1, p0, Lmhl;->d:Ljava/lang/Integer;

    .line 1059
    iput-object v1, p0, Lmhl;->eD:Llyd;

    .line 1060
    const/4 v0, -0x1

    iput v0, p0, Lmhl;->eE:I

    .line 53
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1113
    sparse-switch v0, :sswitch_data_0

    .line 1117
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    :sswitch_0
    return-object p0

    .line 1123
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1124
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1133
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmhl;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 1139
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmhl;->b:Ljava/lang/String;

    goto :goto_0

    .line 1143
    :sswitch_4
    const/16 v0, 0x1a

    .line 1144
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1145
    iget-object v0, p0, Lmhl;->c:[Lmhk;

    if-nez v0, :cond_2

    move v0, v1

    .line 1146
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmhk;

    .line 1148
    if-eqz v0, :cond_1

    .line 1149
    iget-object v3, p0, Lmhl;->c:[Lmhk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1151
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1152
    new-instance v3, Lmhk;

    invoke-direct {v3}, Lmhk;-><init>()V

    aput-object v3, v2, v0

    .line 1153
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1154
    invoke-virtual {p1}, Llxy;->a()I

    .line 1151
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1145
    :cond_2
    iget-object v0, p0, Lmhl;->c:[Lmhk;

    array-length v0, v0

    goto :goto_1

    .line 1157
    :cond_3
    new-instance v3, Lmhk;

    invoke-direct {v3}, Lmhk;-><init>()V

    aput-object v3, v2, v0

    .line 1158
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1159
    iput-object v2, p0, Lmhl;->c:[Lmhk;

    goto :goto_0

    .line 1113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch

    .line 1124
    :sswitch_data_1
    .sparse-switch
        0x190 -> :sswitch_2
        0x193 -> :sswitch_2
        0x194 -> :sswitch_2
        0x199 -> :sswitch_2
        0x19a -> :sswitch_2
        0x19c -> :sswitch_2
        0x1f4 -> :sswitch_2
        0x1f7 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lmhl;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iget-object v1, p0, Lmhl;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 70
    :cond_0
    iget-object v0, p0, Lmhl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x2

    iget-object v1, p0, Lmhl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lmhl;->c:[Lmhk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmhl;->c:[Lmhk;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 74
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmhl;->c:[Lmhk;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 75
    iget-object v1, p0, Lmhl;->c:[Lmhk;

    aget-object v1, v1, v0

    .line 76
    if-eqz v1, :cond_2

    .line 77
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 82
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 86
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 87
    iget-object v1, p0, Lmhl;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x1

    iget-object v2, p0, Lmhl;->d:Ljava/lang/Integer;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_0
    iget-object v1, p0, Lmhl;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 92
    const/4 v1, 0x2

    iget-object v2, p0, Lmhl;->b:Ljava/lang/String;

    .line 93
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_1
    iget-object v1, p0, Lmhl;->c:[Lmhk;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmhl;->c:[Lmhk;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 96
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmhl;->c:[Lmhk;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 97
    iget-object v2, p0, Lmhl;->c:[Lmhk;

    aget-object v2, v2, v0

    .line 98
    if-eqz v2, :cond_2

    .line 99
    const/4 v3, 0x3

    .line 100
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 96
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 104
    :cond_4
    return v0
.end method
