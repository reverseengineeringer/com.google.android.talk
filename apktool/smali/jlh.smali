.class public final Ljlh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljlh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Ljlh;


# instance fields
.field public a:I

.field public b:[I

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    const/high16 v0, -0x80000000

    iput v0, p0, Ljlh;->a:I

    .line 42
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljlh;->b:[I

    .line 43
    iput-object v1, p0, Ljlh;->c:Ljava/lang/Boolean;

    .line 44
    iput-object v1, p0, Ljlh;->d:Ljava/lang/Boolean;

    .line 45
    iput-object v1, p0, Ljlh;->e:Ljava/lang/Boolean;

    .line 46
    iput-object v1, p0, Ljlh;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljlh;->eE:I

    .line 48
    return-void
.end method

.method public static d()[Ljlh;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljlh;->f:[Ljlh;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Ljlh;->f:[Ljlh;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljlh;

    sput-object v0, Ljlh;->f:[Ljlh;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Ljlh;->f:[Ljlh;

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
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 4110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4111
    sparse-switch v0, :sswitch_data_0

    .line 4115
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4116
    :sswitch_0
    return-object p0

    .line 4121
    :sswitch_1
    const/16 v0, 0x8

    .line 4122
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 4123
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 4125
    :goto_1
    if-ge v3, v4, :cond_2

    .line 4126
    if-eqz v3, :cond_1

    .line 4127
    invoke-virtual {p1}, Llxy;->a()I

    .line 4129
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 4130
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 4125
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 4139
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 4143
    :cond_2
    if-eqz v1, :cond_0

    .line 4144
    iget-object v0, p0, Ljlh;->b:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 4145
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 4146
    iput-object v5, p0, Ljlh;->b:[I

    goto :goto_0

    .line 4144
    :cond_3
    iget-object v0, p0, Ljlh;->b:[I

    array-length v0, v0

    goto :goto_3

    .line 4148
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 4149
    if-eqz v0, :cond_5

    .line 4150
    iget-object v4, p0, Ljlh;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4152
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4153
    iput-object v3, p0, Ljlh;->b:[I

    goto :goto_0

    .line 4159
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 4160
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 4163
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 4164
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 4165
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 4174
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4178
    :cond_6
    if-eqz v0, :cond_a

    .line 4179
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 4180
    iget-object v1, p0, Ljlh;->b:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 4181
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 4182
    if-eqz v1, :cond_7

    .line 4183
    iget-object v0, p0, Ljlh;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4185
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 4186
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 4187
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 4196
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 4180
    :cond_8
    iget-object v1, p0, Ljlh;->b:[I

    array-length v1, v1

    goto :goto_5

    .line 4200
    :cond_9
    iput-object v4, p0, Ljlh;->b:[I

    .line 4202
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 4206
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljlh;->c:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4210
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljlh;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4214
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4215
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 4248
    :pswitch_3
    iput v0, p0, Ljlh;->a:I

    goto/16 :goto_0

    .line 4254
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljlh;->e:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4111
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x18 -> :sswitch_4
        0x20 -> :sswitch_5
        0x28 -> :sswitch_6
    .end sparse-switch

    .line 4130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4165
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 4187
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4215
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Ljlh;->b:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljlh;->b:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljlh;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 55
    const/4 v1, 0x1

    iget-object v2, p0, Ljlh;->b:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Ljlh;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 59
    const/4 v0, 0x2

    iget-object v1, p0, Ljlh;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 61
    :cond_1
    iget-object v0, p0, Ljlh;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 62
    const/4 v0, 0x3

    iget-object v1, p0, Ljlh;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 64
    :cond_2
    iget v0, p0, Ljlh;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    .line 65
    const/4 v0, 0x4

    iget v1, p0, Ljlh;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 67
    :cond_3
    iget-object v0, p0, Ljlh;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 68
    const/4 v0, 0x5

    iget-object v1, p0, Ljlh;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 70
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 71
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 76
    iget-object v1, p0, Ljlh;->b:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Ljlh;->b:[I

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    .line 78
    :goto_0
    iget-object v3, p0, Ljlh;->b:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 79
    iget-object v3, p0, Ljlh;->b:[I

    aget v3, v3, v0

    .line 81
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    add-int v0, v2, v1

    .line 84
    iget-object v1, p0, Ljlh;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 86
    :goto_1
    iget-object v1, p0, Ljlh;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x2

    iget-object v2, p0, Ljlh;->c:Ljava/lang/Boolean;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 88
    add-int/2addr v0, v1

    .line 90
    :cond_1
    iget-object v1, p0, Ljlh;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 91
    const/4 v1, 0x3

    iget-object v2, p0, Ljlh;->d:Ljava/lang/Boolean;

    .line 92
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 92
    add-int/2addr v0, v1

    .line 94
    :cond_2
    iget v1, p0, Ljlh;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    .line 95
    const/4 v1, 0x4

    iget v2, p0, Ljlh;->a:I

    .line 96
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_3
    iget-object v1, p0, Ljlh;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 99
    const/4 v1, 0x5

    iget-object v2, p0, Ljlh;->e:Ljava/lang/Boolean;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 100
    add-int/2addr v0, v1

    .line 102
    :cond_4
    return v0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
