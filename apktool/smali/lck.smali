.class public final Llck;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llck;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Llcr;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;

.field public e:[Llcr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    iput-object v1, p0, Llck;->a:Ljava/lang/Float;

    .line 42
    iput-object v1, p0, Llck;->b:Llcr;

    .line 43
    iput-object v1, p0, Llck;->c:Ljava/lang/Float;

    .line 44
    iput-object v1, p0, Llck;->d:Ljava/lang/Float;

    .line 45
    invoke-static {}, Llcr;->d()[Llcr;

    move-result-object v0

    iput-object v0, p0, Llck;->e:[Llcr;

    .line 46
    iput-object v1, p0, Llck;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Llck;->eE:I

    .line 48
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4112
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4113
    sparse-switch v0, :sswitch_data_0

    .line 4117
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4118
    :sswitch_0
    return-object p0

    .line 4123
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llck;->a:Ljava/lang/Float;

    goto :goto_0

    .line 4127
    :sswitch_2
    iget-object v0, p0, Llck;->b:Llcr;

    if-nez v0, :cond_1

    .line 4128
    new-instance v0, Llcr;

    invoke-direct {v0}, Llcr;-><init>()V

    iput-object v0, p0, Llck;->b:Llcr;

    .line 4130
    :cond_1
    iget-object v0, p0, Llck;->b:Llcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4134
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llck;->c:Ljava/lang/Float;

    goto :goto_0

    .line 4138
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llck;->d:Ljava/lang/Float;

    goto :goto_0

    .line 4142
    :sswitch_5
    const/16 v0, 0x2a

    .line 4143
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4144
    iget-object v0, p0, Llck;->e:[Llcr;

    if-nez v0, :cond_3

    move v0, v1

    .line 4145
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llcr;

    .line 4147
    if-eqz v0, :cond_2

    .line 4148
    iget-object v3, p0, Llck;->e:[Llcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4150
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 4151
    new-instance v3, Llcr;

    invoke-direct {v3}, Llcr;-><init>()V

    aput-object v3, v2, v0

    .line 4152
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4153
    invoke-virtual {p1}, Llxy;->a()I

    .line 4150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4144
    :cond_3
    iget-object v0, p0, Llck;->e:[Llcr;

    array-length v0, v0

    goto :goto_1

    .line 4156
    :cond_4
    new-instance v3, Llcr;

    invoke-direct {v3}, Llcr;-><init>()V

    aput-object v3, v2, v0

    .line 4157
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4158
    iput-object v2, p0, Llck;->e:[Llcr;

    goto :goto_0

    .line 4113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Llck;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Llck;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 56
    :cond_0
    iget-object v0, p0, Llck;->b:Llcr;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Llck;->b:Llcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 59
    :cond_1
    iget-object v0, p0, Llck;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x3

    iget-object v1, p0, Llck;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 62
    :cond_2
    iget-object v0, p0, Llck;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 63
    const/4 v0, 0x4

    iget-object v1, p0, Llck;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 65
    :cond_3
    iget-object v0, p0, Llck;->e:[Llcr;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llck;->e:[Llcr;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llck;->e:[Llcr;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 67
    iget-object v1, p0, Llck;->e:[Llcr;

    aget-object v1, v1, v0

    .line 68
    if-eqz v1, :cond_4

    .line 69
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

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
    .line 78
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 79
    iget-object v1, p0, Llck;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iget-object v2, p0, Llck;->a:Ljava/lang/Float;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 81
    add-int/2addr v0, v1

    .line 83
    :cond_0
    iget-object v1, p0, Llck;->b:Llcr;

    if-eqz v1, :cond_1

    .line 84
    const/4 v1, 0x2

    iget-object v2, p0, Llck;->b:Llcr;

    .line 85
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_1
    iget-object v1, p0, Llck;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 88
    const/4 v1, 0x3

    iget-object v2, p0, Llck;->c:Ljava/lang/Float;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 89
    add-int/2addr v0, v1

    .line 91
    :cond_2
    iget-object v1, p0, Llck;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 92
    const/4 v1, 0x4

    iget-object v2, p0, Llck;->d:Ljava/lang/Float;

    .line 93
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 93
    add-int/2addr v0, v1

    .line 95
    :cond_3
    iget-object v1, p0, Llck;->e:[Llcr;

    if-eqz v1, :cond_6

    iget-object v1, p0, Llck;->e:[Llcr;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 96
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llck;->e:[Llcr;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 97
    iget-object v2, p0, Llck;->e:[Llcr;

    aget-object v2, v2, v0

    .line 98
    if-eqz v2, :cond_4

    .line 99
    const/4 v3, 0x5

    .line 100
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 96
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 104
    :cond_6
    return v0
.end method
