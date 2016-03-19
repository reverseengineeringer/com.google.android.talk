.class public final Ljbn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljon;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:[Ljava/lang/String;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1071
    iput-object v1, p0, Ljbn;->a:Ljava/lang/String;

    .line 1072
    iput-object v1, p0, Ljbn;->b:Ljon;

    .line 1073
    iput-object v1, p0, Ljbn;->c:Ljava/lang/Boolean;

    .line 1074
    iput-object v1, p0, Ljbn;->d:Ljava/lang/Boolean;

    .line 1075
    iput-object v1, p0, Ljbn;->e:Ljava/lang/Boolean;

    .line 1076
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljbn;->f:[Ljava/lang/String;

    .line 1077
    iput-object v1, p0, Ljbn;->g:Ljava/lang/Integer;

    .line 1078
    iput-object v1, p0, Ljbn;->eD:Llyd;

    .line 1079
    const/4 v0, -0x1

    iput v0, p0, Ljbn;->eE:I

    .line 68
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4164
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4165
    sparse-switch v0, :sswitch_data_0

    .line 4169
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4170
    :sswitch_0
    return-object p0

    .line 4175
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbn;->a:Ljava/lang/String;

    goto :goto_0

    .line 4179
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljbn;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 4183
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljbn;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 4187
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljbn;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 4191
    :sswitch_5
    const/16 v0, 0x2a

    .line 4192
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4193
    iget-object v0, p0, Ljbn;->f:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 4194
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 4195
    if-eqz v0, :cond_1

    .line 4196
    iget-object v3, p0, Ljbn;->f:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4198
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4199
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4200
    invoke-virtual {p1}, Llxy;->a()I

    .line 4198
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4193
    :cond_2
    iget-object v0, p0, Ljbn;->f:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 4203
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4204
    iput-object v2, p0, Ljbn;->f:[Ljava/lang/String;

    goto :goto_0

    .line 4208
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4209
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4216
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbn;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 4222
    :sswitch_7
    iget-object v0, p0, Ljbn;->b:Ljon;

    if-nez v0, :cond_4

    .line 4223
    new-instance v0, Ljon;

    invoke-direct {v0}, Ljon;-><init>()V

    iput-object v0, p0, Ljbn;->b:Ljon;

    .line 4225
    :cond_4
    iget-object v0, p0, Ljbn;->b:Ljon;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 4165
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 4209
    :pswitch_data_0
    .packed-switch 0x1
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
    .line 86
    iget-object v0, p0, Ljbn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iget-object v1, p0, Ljbn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 89
    :cond_0
    iget-object v0, p0, Ljbn;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x2

    iget-object v1, p0, Ljbn;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 92
    :cond_1
    iget-object v0, p0, Ljbn;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 93
    const/4 v0, 0x3

    iget-object v1, p0, Ljbn;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 95
    :cond_2
    iget-object v0, p0, Ljbn;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 96
    const/4 v0, 0x4

    iget-object v1, p0, Ljbn;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 98
    :cond_3
    iget-object v0, p0, Ljbn;->f:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljbn;->f:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 99
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljbn;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 100
    iget-object v1, p0, Ljbn;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 101
    if-eqz v1, :cond_4

    .line 102
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 99
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_5
    iget-object v0, p0, Ljbn;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 107
    const/4 v0, 0x6

    iget-object v1, p0, Ljbn;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 109
    :cond_6
    iget-object v0, p0, Ljbn;->b:Ljon;

    if-eqz v0, :cond_7

    .line 110
    const/4 v0, 0x7

    iget-object v1, p0, Ljbn;->b:Ljon;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 112
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 113
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 118
    iget-object v2, p0, Ljbn;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 119
    const/4 v2, 0x1

    iget-object v3, p0, Ljbn;->a:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 122
    :cond_0
    iget-object v2, p0, Ljbn;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 123
    const/4 v2, 0x2

    iget-object v3, p0, Ljbn;->c:Ljava/lang/Boolean;

    .line 124
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 124
    add-int/2addr v0, v2

    .line 126
    :cond_1
    iget-object v2, p0, Ljbn;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 127
    const/4 v2, 0x3

    iget-object v3, p0, Ljbn;->d:Ljava/lang/Boolean;

    .line 128
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 128
    add-int/2addr v0, v2

    .line 130
    :cond_2
    iget-object v2, p0, Ljbn;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 131
    const/4 v2, 0x4

    iget-object v3, p0, Ljbn;->e:Ljava/lang/Boolean;

    .line 132
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 132
    add-int/2addr v0, v2

    .line 134
    :cond_3
    iget-object v2, p0, Ljbn;->f:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljbn;->f:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    .line 137
    :goto_0
    iget-object v4, p0, Ljbn;->f:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 138
    iget-object v4, p0, Ljbn;->f:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 139
    if-eqz v4, :cond_4

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 142
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 137
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_5
    add-int/2addr v0, v2

    .line 146
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 148
    :cond_6
    iget-object v1, p0, Ljbn;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 149
    const/4 v1, 0x6

    iget-object v2, p0, Ljbn;->g:Ljava/lang/Integer;

    .line 150
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_7
    iget-object v1, p0, Ljbn;->b:Ljon;

    if-eqz v1, :cond_8

    .line 153
    const/4 v1, 0x7

    iget-object v2, p0, Ljbn;->b:Ljon;

    .line 154
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_8
    return v0
.end method
