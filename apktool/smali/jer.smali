.class public final Ljer;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lmcq;

.field public c:Ljava/lang/Boolean;

.field public d:Llfi;

.field public e:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    iput-object v1, p0, Ljer;->a:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Ljer;->b:Lmcq;

    .line 43
    iput-object v1, p0, Ljer;->c:Ljava/lang/Boolean;

    .line 44
    iput-object v1, p0, Ljer;->d:Llfi;

    .line 45
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljer;->e:[Ljava/lang/String;

    .line 46
    iput-object v1, p0, Ljer;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljer;->eE:I

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2118
    sparse-switch v0, :sswitch_data_0

    .line 2122
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2123
    :sswitch_0
    return-object p0

    .line 2128
    :sswitch_1
    iget-object v0, p0, Ljer;->b:Lmcq;

    if-nez v0, :cond_1

    .line 2129
    new-instance v0, Lmcq;

    invoke-direct {v0}, Lmcq;-><init>()V

    iput-object v0, p0, Ljer;->b:Lmcq;

    .line 2131
    :cond_1
    iget-object v0, p0, Ljer;->b:Lmcq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2135
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljer;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 2139
    :sswitch_3
    iget-object v0, p0, Ljer;->d:Llfi;

    if-nez v0, :cond_2

    .line 2140
    new-instance v0, Llfi;

    invoke-direct {v0}, Llfi;-><init>()V

    iput-object v0, p0, Ljer;->d:Llfi;

    .line 2142
    :cond_2
    iget-object v0, p0, Ljer;->d:Llfi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2146
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljer;->a:Ljava/lang/String;

    goto :goto_0

    .line 2150
    :sswitch_5
    const/16 v0, 0x2a

    .line 2151
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2152
    iget-object v0, p0, Ljer;->e:[Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    .line 2153
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2154
    if-eqz v0, :cond_3

    .line 2155
    iget-object v3, p0, Ljer;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2157
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 2158
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2159
    invoke-virtual {p1}, Llxy;->a()I

    .line 2157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2152
    :cond_4
    iget-object v0, p0, Ljer;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2162
    :cond_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2163
    iput-object v2, p0, Ljer;->e:[Ljava/lang/String;

    goto :goto_0

    .line 2118
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Ljer;->b:Lmcq;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Ljer;->b:Lmcq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_0
    iget-object v0, p0, Ljer;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Ljer;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 59
    :cond_1
    iget-object v0, p0, Ljer;->d:Llfi;

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x3

    iget-object v1, p0, Ljer;->d:Llfi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 62
    :cond_2
    iget-object v0, p0, Ljer;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 63
    const/4 v0, 0x4

    iget-object v1, p0, Ljer;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 65
    :cond_3
    iget-object v0, p0, Ljer;->e:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljer;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljer;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 67
    iget-object v1, p0, Ljer;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 68
    if-eqz v1, :cond_4

    .line 69
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 66
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 74
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 79
    iget-object v2, p0, Ljer;->b:Lmcq;

    if-eqz v2, :cond_0

    .line 80
    const/4 v2, 0x1

    iget-object v3, p0, Ljer;->b:Lmcq;

    .line 81
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 83
    :cond_0
    iget-object v2, p0, Ljer;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 84
    const/4 v2, 0x2

    iget-object v3, p0, Ljer;->c:Ljava/lang/Boolean;

    .line 85
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 85
    add-int/2addr v0, v2

    .line 87
    :cond_1
    iget-object v2, p0, Ljer;->d:Llfi;

    if-eqz v2, :cond_2

    .line 88
    const/4 v2, 0x3

    iget-object v3, p0, Ljer;->d:Llfi;

    .line 89
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 91
    :cond_2
    iget-object v2, p0, Ljer;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 92
    const/4 v2, 0x4

    iget-object v3, p0, Ljer;->a:Ljava/lang/String;

    .line 93
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 95
    :cond_3
    iget-object v2, p0, Ljer;->e:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljer;->e:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    .line 98
    :goto_0
    iget-object v4, p0, Ljer;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 99
    iget-object v4, p0, Ljer;->e:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 100
    if-eqz v4, :cond_4

    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 103
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 98
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_5
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 109
    :cond_6
    return v0
.end method
