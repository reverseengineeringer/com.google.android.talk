.class public final Llzr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llzr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Llzr;


# instance fields
.field public a:I

.field public b:Ljava/lang/Integer;

.field public c:[Llzq;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Llyb;-><init>()V

    .line 47
    const/high16 v0, -0x80000000

    iput v0, p0, Llzr;->a:I

    .line 48
    iput-object v1, p0, Llzr;->b:Ljava/lang/Integer;

    .line 49
    invoke-static {}, Llzq;->d()[Llzq;

    move-result-object v0

    iput-object v0, p0, Llzr;->c:[Llzq;

    .line 50
    iput-object v1, p0, Llzr;->d:Ljava/lang/Boolean;

    .line 51
    iput-object v1, p0, Llzr;->e:Ljava/lang/Integer;

    .line 52
    iput-object v1, p0, Llzr;->f:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Llzr;->g:Ljava/lang/Boolean;

    .line 54
    iput-object v1, p0, Llzr;->eD:Llyd;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Llzr;->eE:I

    .line 56
    return-void
.end method

.method public static d()[Llzr;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llzr;->h:[Llzr;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llzr;->h:[Llzr;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llzr;

    sput-object v0, Llzr;->h:[Llzr;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llzr;->h:[Llzr;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3134
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3135
    sparse-switch v0, :sswitch_data_0

    .line 3139
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3140
    :sswitch_0
    return-object p0

    .line 3145
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3146
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3154
    :pswitch_0
    iput v0, p0, Llzr;->a:I

    goto :goto_0

    .line 3160
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llzr;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3164
    :sswitch_3
    const/16 v0, 0x1a

    .line 3165
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3166
    iget-object v0, p0, Llzr;->c:[Llzq;

    if-nez v0, :cond_2

    move v0, v1

    .line 3167
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llzq;

    .line 3169
    if-eqz v0, :cond_1

    .line 3170
    iget-object v3, p0, Llzr;->c:[Llzq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3172
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3173
    new-instance v3, Llzq;

    invoke-direct {v3}, Llzq;-><init>()V

    aput-object v3, v2, v0

    .line 3174
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3175
    invoke-virtual {p1}, Llxy;->a()I

    .line 3172
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3166
    :cond_2
    iget-object v0, p0, Llzr;->c:[Llzq;

    array-length v0, v0

    goto :goto_1

    .line 3178
    :cond_3
    new-instance v3, Llzq;

    invoke-direct {v3}, Llzq;-><init>()V

    aput-object v3, v2, v0

    .line 3179
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3180
    iput-object v2, p0, Llzr;->c:[Llzq;

    goto :goto_0

    .line 3184
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llzr;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 3188
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llzr;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 3192
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzr;->f:Ljava/lang/String;

    goto :goto_0

    .line 3196
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llzr;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 3135
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch

    .line 3146
    :pswitch_data_0
    .packed-switch 0x1
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
    .line 61
    iget v0, p0, Llzr;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 62
    const/4 v0, 0x1

    iget v1, p0, Llzr;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 64
    :cond_0
    iget-object v0, p0, Llzr;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x2

    iget-object v1, p0, Llzr;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 67
    :cond_1
    iget-object v0, p0, Llzr;->c:[Llzq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llzr;->c:[Llzq;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 68
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llzr;->c:[Llzq;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 69
    iget-object v1, p0, Llzr;->c:[Llzq;

    aget-object v1, v1, v0

    .line 70
    if-eqz v1, :cond_2

    .line 71
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Llzr;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 76
    const/4 v0, 0x4

    iget-object v1, p0, Llzr;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 78
    :cond_4
    iget-object v0, p0, Llzr;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 79
    const/4 v0, 0x5

    iget-object v1, p0, Llzr;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 81
    :cond_5
    iget-object v0, p0, Llzr;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 82
    const/4 v0, 0x6

    iget-object v1, p0, Llzr;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 84
    :cond_6
    iget-object v0, p0, Llzr;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 85
    const/4 v0, 0x7

    iget-object v1, p0, Llzr;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 87
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 88
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 92
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 93
    iget v1, p0, Llzr;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 94
    const/4 v1, 0x1

    iget v2, p0, Llzr;->a:I

    .line 95
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_0
    iget-object v1, p0, Llzr;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 98
    const/4 v1, 0x2

    iget-object v2, p0, Llzr;->b:Ljava/lang/Integer;

    .line 99
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_1
    iget-object v1, p0, Llzr;->c:[Llzq;

    if-eqz v1, :cond_4

    iget-object v1, p0, Llzr;->c:[Llzq;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 102
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llzr;->c:[Llzq;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 103
    iget-object v2, p0, Llzr;->c:[Llzq;

    aget-object v2, v2, v0

    .line 104
    if-eqz v2, :cond_2

    .line 105
    const/4 v3, 0x3

    .line 106
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 110
    :cond_4
    iget-object v1, p0, Llzr;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 111
    const/4 v1, 0x4

    iget-object v2, p0, Llzr;->d:Ljava/lang/Boolean;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 112
    add-int/2addr v0, v1

    .line 114
    :cond_5
    iget-object v1, p0, Llzr;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 115
    const/4 v1, 0x5

    iget-object v2, p0, Llzr;->e:Ljava/lang/Integer;

    .line 116
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_6
    iget-object v1, p0, Llzr;->f:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 119
    const/4 v1, 0x6

    iget-object v2, p0, Llzr;->f:Ljava/lang/String;

    .line 120
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_7
    iget-object v1, p0, Llzr;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 123
    const/4 v1, 0x7

    iget-object v2, p0, Llzr;->g:Ljava/lang/Boolean;

    .line 124
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 124
    add-int/2addr v0, v1

    .line 126
    :cond_8
    return v0
.end method
