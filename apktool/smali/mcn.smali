.class public final Lmcn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmcn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Llyb;-><init>()V

    .line 135
    iput-object v0, p0, Lmcn;->a:Ljava/lang/Float;

    .line 136
    iput-object v0, p0, Lmcn;->b:Ljava/lang/Float;

    .line 137
    iput-object v0, p0, Lmcn;->c:Ljava/lang/Float;

    .line 138
    iput-object v0, p0, Lmcn;->eD:Llyd;

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lmcn;->eE:I

    .line 140
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4181
    sparse-switch v0, :sswitch_data_0

    .line 4185
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4186
    :sswitch_0
    return-object p0

    .line 4191
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmcn;->a:Ljava/lang/Float;

    goto :goto_0

    .line 4195
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmcn;->b:Ljava/lang/Float;

    goto :goto_0

    .line 4199
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lmcn;->c:Ljava/lang/Float;

    goto :goto_0

    .line 4181
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lmcn;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iget-object v1, p0, Lmcn;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 148
    :cond_0
    iget-object v0, p0, Lmcn;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x2

    iget-object v1, p0, Lmcn;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 151
    :cond_1
    iget-object v0, p0, Lmcn;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 152
    const/4 v0, 0x3

    iget-object v1, p0, Lmcn;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 154
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 155
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 160
    iget-object v1, p0, Lmcn;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 161
    const/4 v1, 0x1

    iget-object v2, p0, Lmcn;->a:Ljava/lang/Float;

    .line 162
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 162
    add-int/2addr v0, v1

    .line 164
    :cond_0
    iget-object v1, p0, Lmcn;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 165
    const/4 v1, 0x2

    iget-object v2, p0, Lmcn;->b:Ljava/lang/Float;

    .line 166
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 166
    add-int/2addr v0, v1

    .line 168
    :cond_1
    iget-object v1, p0, Lmcn;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 169
    const/4 v1, 0x3

    iget-object v2, p0, Lmcn;->c:Ljava/lang/Float;

    .line 170
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 170
    add-int/2addr v0, v1

    .line 172
    :cond_2
    return v0
.end method
