.class public final Liua;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liua;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Liub;

.field public c:[Litv;

.field public d:Liuc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1029
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2034
    iput-object v1, p0, Liua;->a:Ljava/lang/Integer;

    .line 2035
    invoke-static {}, Liub;->d()[Liub;

    move-result-object v0

    iput-object v0, p0, Liua;->b:[Liub;

    .line 2036
    invoke-static {}, Litv;->d()[Litv;

    move-result-object v0

    iput-object v0, p0, Liua;->c:[Litv;

    .line 2037
    iput-object v1, p0, Liua;->d:Liuc;

    .line 2038
    iput-object v1, p0, Liua;->eD:Llyd;

    .line 2039
    const/4 v0, -0x1

    iput v0, p0, Liua;->eE:I

    .line 1031
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2109
    sparse-switch v0, :sswitch_data_0

    .line 2113
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2114
    :sswitch_0
    return-object p0

    .line 2119
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liua;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2123
    :sswitch_2
    const/16 v0, 0x12

    .line 2124
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2125
    iget-object v0, p0, Liua;->b:[Liub;

    if-nez v0, :cond_2

    move v0, v1

    .line 2126
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Liub;

    .line 2128
    if-eqz v0, :cond_1

    .line 2129
    iget-object v3, p0, Liua;->b:[Liub;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2131
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2132
    new-instance v3, Liub;

    invoke-direct {v3}, Liub;-><init>()V

    aput-object v3, v2, v0

    .line 2133
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2134
    invoke-virtual {p1}, Llxy;->a()I

    .line 2131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2125
    :cond_2
    iget-object v0, p0, Liua;->b:[Liub;

    array-length v0, v0

    goto :goto_1

    .line 2137
    :cond_3
    new-instance v3, Liub;

    invoke-direct {v3}, Liub;-><init>()V

    aput-object v3, v2, v0

    .line 2138
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2139
    iput-object v2, p0, Liua;->b:[Liub;

    goto :goto_0

    .line 2143
    :sswitch_3
    const/16 v0, 0x1a

    .line 2144
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2145
    iget-object v0, p0, Liua;->c:[Litv;

    if-nez v0, :cond_5

    move v0, v1

    .line 2146
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Litv;

    .line 2148
    if-eqz v0, :cond_4

    .line 2149
    iget-object v3, p0, Liua;->c:[Litv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2151
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2152
    new-instance v3, Litv;

    invoke-direct {v3}, Litv;-><init>()V

    aput-object v3, v2, v0

    .line 2153
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2154
    invoke-virtual {p1}, Llxy;->a()I

    .line 2151
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2145
    :cond_5
    iget-object v0, p0, Liua;->c:[Litv;

    array-length v0, v0

    goto :goto_3

    .line 2157
    :cond_6
    new-instance v3, Litv;

    invoke-direct {v3}, Litv;-><init>()V

    aput-object v3, v2, v0

    .line 2158
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2159
    iput-object v2, p0, Liua;->c:[Litv;

    goto/16 :goto_0

    .line 2163
    :sswitch_4
    iget-object v0, p0, Liua;->d:Liuc;

    if-nez v0, :cond_7

    .line 2164
    new-instance v0, Liuc;

    invoke-direct {v0}, Liuc;-><init>()V

    iput-object v0, p0, Liua;->d:Liuc;

    .line 2166
    :cond_7
    iget-object v0, p0, Liua;->d:Liuc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2109
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1046
    iget-object v0, p0, Liua;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1047
    const/4 v0, 0x1

    iget-object v2, p0, Liua;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 1049
    :cond_0
    iget-object v0, p0, Liua;->b:[Liub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Liua;->b:[Liub;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1050
    :goto_0
    iget-object v2, p0, Liua;->b:[Liub;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1051
    iget-object v2, p0, Liua;->b:[Liub;

    aget-object v2, v2, v0

    .line 1052
    if-eqz v2, :cond_1

    .line 1053
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 1050
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v0, p0, Liua;->c:[Litv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Liua;->c:[Litv;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1058
    :goto_1
    iget-object v0, p0, Liua;->c:[Litv;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 1059
    iget-object v0, p0, Liua;->c:[Litv;

    aget-object v0, v0, v1

    .line 1060
    if-eqz v0, :cond_3

    .line 1061
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1058
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1065
    :cond_4
    iget-object v0, p0, Liua;->d:Liuc;

    if-eqz v0, :cond_5

    .line 1066
    const/4 v0, 0x4

    iget-object v1, p0, Liua;->d:Liuc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1068
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1069
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1073
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1074
    iget-object v2, p0, Liua;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1075
    const/4 v2, 0x1

    iget-object v3, p0, Liua;->a:Ljava/lang/Integer;

    .line 1076
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1078
    :cond_0
    iget-object v2, p0, Liua;->b:[Liub;

    if-eqz v2, :cond_3

    iget-object v2, p0, Liua;->b:[Liub;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 1079
    :goto_0
    iget-object v3, p0, Liua;->b:[Liub;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1080
    iget-object v3, p0, Liua;->b:[Liub;

    aget-object v3, v3, v0

    .line 1081
    if-eqz v3, :cond_1

    .line 1082
    const/4 v4, 0x2

    .line 1083
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1079
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1087
    :cond_3
    iget-object v2, p0, Liua;->c:[Litv;

    if-eqz v2, :cond_5

    iget-object v2, p0, Liua;->c:[Litv;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 1088
    :goto_1
    iget-object v2, p0, Liua;->c:[Litv;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1089
    iget-object v2, p0, Liua;->c:[Litv;

    aget-object v2, v2, v1

    .line 1090
    if-eqz v2, :cond_4

    .line 1091
    const/4 v3, 0x3

    .line 1092
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1088
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1096
    :cond_5
    iget-object v1, p0, Liua;->d:Liuc;

    if-eqz v1, :cond_6

    .line 1097
    const/4 v1, 0x4

    iget-object v2, p0, Liua;->d:Liuc;

    .line 1098
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1100
    :cond_6
    return v0
.end method
