.class public final Lkfn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[Ljyc;

.field public c:Ljava/lang/Long;

.field public d:Lkbc;

.field public e:[Ljzh;

.field public f:Ljxc;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12982
    invoke-direct {p0}, Llyb;-><init>()V

    .line 13987
    iput-object v1, p0, Lkfn;->responseHeader:Lkdp;

    .line 13988
    iput-object v1, p0, Lkfn;->a:Ljava/lang/Long;

    .line 13989
    invoke-static {}, Ljyc;->d()[Ljyc;

    move-result-object v0

    iput-object v0, p0, Lkfn;->b:[Ljyc;

    .line 13990
    iput-object v1, p0, Lkfn;->c:Ljava/lang/Long;

    .line 13991
    iput-object v1, p0, Lkfn;->d:Lkbc;

    .line 13992
    invoke-static {}, Ljzh;->d()[Ljzh;

    move-result-object v0

    iput-object v0, p0, Lkfn;->e:[Ljzh;

    .line 13993
    iput-object v1, p0, Lkfn;->f:Ljxc;

    .line 13994
    iput-object v1, p0, Lkfn;->eD:Llyd;

    .line 13995
    const/4 v0, -0x1

    iput v0, p0, Lkfn;->eE:I

    .line 12984
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 14085
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 14086
    sparse-switch v0, :sswitch_data_0

    .line 14090
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14091
    :sswitch_0
    return-object p0

    .line 14096
    :sswitch_1
    iget-object v0, p0, Lkfn;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 14097
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkfn;->responseHeader:Lkdp;

    .line 14099
    :cond_1
    iget-object v0, p0, Lkfn;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14103
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkfn;->a:Ljava/lang/Long;

    goto :goto_0

    .line 14107
    :sswitch_3
    const/16 v0, 0x1a

    .line 14108
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 14109
    iget-object v0, p0, Lkfn;->b:[Ljyc;

    if-nez v0, :cond_3

    move v0, v1

    .line 14110
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljyc;

    .line 14112
    if-eqz v0, :cond_2

    .line 14113
    iget-object v3, p0, Lkfn;->b:[Ljyc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14115
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 14116
    new-instance v3, Ljyc;

    invoke-direct {v3}, Ljyc;-><init>()V

    aput-object v3, v2, v0

    .line 14117
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 14118
    invoke-virtual {p1}, Llxy;->a()I

    .line 14115
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 14109
    :cond_3
    iget-object v0, p0, Lkfn;->b:[Ljyc;

    array-length v0, v0

    goto :goto_1

    .line 14121
    :cond_4
    new-instance v3, Ljyc;

    invoke-direct {v3}, Ljyc;-><init>()V

    aput-object v3, v2, v0

    .line 14122
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 14123
    iput-object v2, p0, Lkfn;->b:[Ljyc;

    goto :goto_0

    .line 14127
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkfn;->c:Ljava/lang/Long;

    goto :goto_0

    .line 14131
    :sswitch_5
    iget-object v0, p0, Lkfn;->d:Lkbc;

    if-nez v0, :cond_5

    .line 14132
    new-instance v0, Lkbc;

    invoke-direct {v0}, Lkbc;-><init>()V

    iput-object v0, p0, Lkfn;->d:Lkbc;

    .line 14134
    :cond_5
    iget-object v0, p0, Lkfn;->d:Lkbc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 14138
    :sswitch_6
    const/16 v0, 0x32

    .line 14139
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 14140
    iget-object v0, p0, Lkfn;->e:[Ljzh;

    if-nez v0, :cond_7

    move v0, v1

    .line 14141
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljzh;

    .line 14143
    if-eqz v0, :cond_6

    .line 14144
    iget-object v3, p0, Lkfn;->e:[Ljzh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14146
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 14147
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 14148
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 14149
    invoke-virtual {p1}, Llxy;->a()I

    .line 14146
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 14140
    :cond_7
    iget-object v0, p0, Lkfn;->e:[Ljzh;

    array-length v0, v0

    goto :goto_3

    .line 14152
    :cond_8
    new-instance v3, Ljzh;

    invoke-direct {v3}, Ljzh;-><init>()V

    aput-object v3, v2, v0

    .line 14153
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 14154
    iput-object v2, p0, Lkfn;->e:[Ljzh;

    goto/16 :goto_0

    .line 14158
    :sswitch_7
    iget-object v0, p0, Lkfn;->f:Ljxc;

    if-nez v0, :cond_9

    .line 14159
    new-instance v0, Ljxc;

    invoke-direct {v0}, Ljxc;-><init>()V

    iput-object v0, p0, Lkfn;->f:Ljxc;

    .line 14161
    :cond_9
    iget-object v0, p0, Lkfn;->f:Ljxc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 14086
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13002
    iget-object v0, p0, Lkfn;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 13003
    const/4 v0, 0x1

    iget-object v2, p0, Lkfn;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 13005
    :cond_0
    iget-object v0, p0, Lkfn;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 13006
    const/4 v0, 0x2

    iget-object v2, p0, Lkfn;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 13008
    :cond_1
    iget-object v0, p0, Lkfn;->b:[Ljyc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkfn;->b:[Ljyc;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 13009
    :goto_0
    iget-object v2, p0, Lkfn;->b:[Ljyc;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 13010
    iget-object v2, p0, Lkfn;->b:[Ljyc;

    aget-object v2, v2, v0

    .line 13011
    if-eqz v2, :cond_2

    .line 13012
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 13009
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13016
    :cond_3
    iget-object v0, p0, Lkfn;->c:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 13017
    const/4 v0, 0x4

    iget-object v2, p0, Lkfn;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 13019
    :cond_4
    iget-object v0, p0, Lkfn;->d:Lkbc;

    if-eqz v0, :cond_5

    .line 13020
    const/4 v0, 0x5

    iget-object v2, p0, Lkfn;->d:Lkbc;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 13022
    :cond_5
    iget-object v0, p0, Lkfn;->e:[Ljzh;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lkfn;->e:[Ljzh;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 13023
    :goto_1
    iget-object v0, p0, Lkfn;->e:[Ljzh;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 13024
    iget-object v0, p0, Lkfn;->e:[Ljzh;

    aget-object v0, v0, v1

    .line 13025
    if-eqz v0, :cond_6

    .line 13026
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 13023
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13030
    :cond_7
    iget-object v0, p0, Lkfn;->f:Ljxc;

    if-eqz v0, :cond_8

    .line 13031
    const/4 v0, 0x7

    iget-object v1, p0, Lkfn;->f:Ljxc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 13033
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 13034
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 13038
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 13039
    iget-object v2, p0, Lkfn;->responseHeader:Lkdp;

    if-eqz v2, :cond_0

    .line 13040
    const/4 v2, 0x1

    iget-object v3, p0, Lkfn;->responseHeader:Lkdp;

    .line 13041
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13043
    :cond_0
    iget-object v2, p0, Lkfn;->a:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 13044
    const/4 v2, 0x2

    iget-object v3, p0, Lkfn;->a:Ljava/lang/Long;

    .line 13045
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13047
    :cond_1
    iget-object v2, p0, Lkfn;->b:[Ljyc;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkfn;->b:[Ljyc;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 13048
    :goto_0
    iget-object v3, p0, Lkfn;->b:[Ljyc;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 13049
    iget-object v3, p0, Lkfn;->b:[Ljyc;

    aget-object v3, v3, v0

    .line 13050
    if-eqz v3, :cond_2

    .line 13051
    const/4 v4, 0x3

    .line 13052
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 13048
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 13056
    :cond_4
    iget-object v2, p0, Lkfn;->c:Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 13057
    const/4 v2, 0x4

    iget-object v3, p0, Lkfn;->c:Ljava/lang/Long;

    .line 13058
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13060
    :cond_5
    iget-object v2, p0, Lkfn;->d:Lkbc;

    if-eqz v2, :cond_6

    .line 13061
    const/4 v2, 0x5

    iget-object v3, p0, Lkfn;->d:Lkbc;

    .line 13062
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13064
    :cond_6
    iget-object v2, p0, Lkfn;->e:[Ljzh;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lkfn;->e:[Ljzh;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 13065
    :goto_1
    iget-object v2, p0, Lkfn;->e:[Ljzh;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 13066
    iget-object v2, p0, Lkfn;->e:[Ljzh;

    aget-object v2, v2, v1

    .line 13067
    if-eqz v2, :cond_7

    .line 13068
    const/4 v3, 0x6

    .line 13069
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13065
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13073
    :cond_8
    iget-object v1, p0, Lkfn;->f:Ljxc;

    if-eqz v1, :cond_9

    .line 13074
    const/4 v1, 0x7

    iget-object v2, p0, Lkfn;->f:Ljxc;

    .line 13075
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13077
    :cond_9
    return v0
.end method
