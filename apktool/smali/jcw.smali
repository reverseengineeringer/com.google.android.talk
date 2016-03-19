.class public final Ljcw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Llyb;-><init>()V

    .line 151
    iput-object v0, p0, Ljcw;->a:Ljava/lang/Float;

    .line 152
    iput-object v0, p0, Ljcw;->b:Ljava/lang/Float;

    .line 153
    iput-object v0, p0, Ljcw;->c:Ljava/lang/Float;

    .line 154
    iput-object v0, p0, Ljcw;->d:Ljava/lang/Float;

    .line 155
    iput-object v0, p0, Ljcw;->eD:Llyd;

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Ljcw;->eE:I

    .line 157
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5205
    sparse-switch v0, :sswitch_data_0

    .line 5209
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5210
    :sswitch_0
    return-object p0

    .line 5215
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljcw;->a:Ljava/lang/Float;

    goto :goto_0

    .line 5219
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljcw;->b:Ljava/lang/Float;

    goto :goto_0

    .line 5223
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljcw;->c:Ljava/lang/Float;

    goto :goto_0

    .line 5227
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljcw;->d:Ljava/lang/Float;

    goto :goto_0

    .line 5205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Ljcw;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    iget-object v1, p0, Ljcw;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 165
    :cond_0
    iget-object v0, p0, Ljcw;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x2

    iget-object v1, p0, Ljcw;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 168
    :cond_1
    iget-object v0, p0, Ljcw;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 169
    const/4 v0, 0x3

    iget-object v1, p0, Ljcw;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 171
    :cond_2
    iget-object v0, p0, Ljcw;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 172
    const/4 v0, 0x4

    iget-object v1, p0, Ljcw;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 174
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 175
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 180
    iget-object v1, p0, Ljcw;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x1

    iget-object v2, p0, Ljcw;->a:Ljava/lang/Float;

    .line 182
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 182
    add-int/2addr v0, v1

    .line 184
    :cond_0
    iget-object v1, p0, Ljcw;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 185
    const/4 v1, 0x2

    iget-object v2, p0, Ljcw;->b:Ljava/lang/Float;

    .line 186
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 186
    add-int/2addr v0, v1

    .line 188
    :cond_1
    iget-object v1, p0, Ljcw;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 189
    const/4 v1, 0x3

    iget-object v2, p0, Ljcw;->c:Ljava/lang/Float;

    .line 190
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 190
    add-int/2addr v0, v1

    .line 192
    :cond_2
    iget-object v1, p0, Ljcw;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 193
    const/4 v1, 0x4

    iget-object v2, p0, Ljcw;->d:Ljava/lang/Float;

    .line 194
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 194
    add-int/2addr v0, v1

    .line 196
    :cond_3
    return v0
.end method
