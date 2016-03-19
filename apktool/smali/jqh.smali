.class public final Ljqh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqh;",
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

    .line 976
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1981
    iput-object v0, p0, Ljqh;->a:Ljava/lang/Float;

    .line 1982
    iput-object v0, p0, Ljqh;->b:Ljava/lang/Float;

    .line 1983
    iput-object v0, p0, Ljqh;->c:Ljava/lang/Float;

    .line 1984
    iput-object v0, p0, Ljqh;->d:Ljava/lang/Float;

    .line 1985
    iput-object v0, p0, Ljqh;->eD:Llyd;

    .line 1986
    const/4 v0, -0x1

    iput v0, p0, Ljqh;->eE:I

    .line 978
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6035
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6036
    sparse-switch v0, :sswitch_data_0

    .line 6040
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6041
    :sswitch_0
    return-object p0

    .line 6046
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljqh;->a:Ljava/lang/Float;

    goto :goto_0

    .line 6050
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljqh;->b:Ljava/lang/Float;

    goto :goto_0

    .line 6054
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljqh;->c:Ljava/lang/Float;

    goto :goto_0

    .line 6058
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ljqh;->d:Ljava/lang/Float;

    goto :goto_0

    .line 6036
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
    .line 993
    iget-object v0, p0, Ljqh;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 994
    const/4 v0, 0x1

    iget-object v1, p0, Ljqh;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 996
    :cond_0
    iget-object v0, p0, Ljqh;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 997
    const/4 v0, 0x2

    iget-object v1, p0, Ljqh;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 999
    :cond_1
    iget-object v0, p0, Ljqh;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 1000
    const/4 v0, 0x3

    iget-object v1, p0, Ljqh;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 1002
    :cond_2
    iget-object v0, p0, Ljqh;->d:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 1003
    const/4 v0, 0x4

    iget-object v1, p0, Ljqh;->d:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 1005
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1006
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1010
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1011
    iget-object v1, p0, Ljqh;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 1012
    const/4 v1, 0x1

    iget-object v2, p0, Ljqh;->a:Ljava/lang/Float;

    .line 1013
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1013
    add-int/2addr v0, v1

    .line 1015
    :cond_0
    iget-object v1, p0, Ljqh;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 1016
    const/4 v1, 0x2

    iget-object v2, p0, Ljqh;->b:Ljava/lang/Float;

    .line 1017
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1017
    add-int/2addr v0, v1

    .line 1019
    :cond_1
    iget-object v1, p0, Ljqh;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 1020
    const/4 v1, 0x3

    iget-object v2, p0, Ljqh;->c:Ljava/lang/Float;

    .line 1021
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1021
    add-int/2addr v0, v1

    .line 1023
    :cond_2
    iget-object v1, p0, Ljqh;->d:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 1024
    const/4 v1, 0x4

    iget-object v2, p0, Ljqh;->d:Ljava/lang/Float;

    .line 1025
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 5569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 1025
    add-int/2addr v0, v1

    .line 1027
    :cond_3
    return v0
.end method
