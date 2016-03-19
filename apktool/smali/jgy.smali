.class public final Ljgy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljgy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljqm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    const/high16 v0, -0x80000000

    iput v0, p0, Ljgy;->a:I

    .line 42
    iput-object v1, p0, Ljgy;->b:Ljqm;

    .line 43
    iput-object v1, p0, Ljgy;->eD:Llyd;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Ljgy;->eE:I

    .line 45
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1078
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1079
    sparse-switch v0, :sswitch_data_0

    .line 1083
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    :sswitch_0
    return-object p0

    .line 1089
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1090
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1096
    :pswitch_0
    iput v0, p0, Ljgy;->a:I

    goto :goto_0

    .line 1102
    :sswitch_2
    iget-object v0, p0, Ljgy;->b:Ljqm;

    if-nez v0, :cond_1

    .line 1103
    new-instance v0, Ljqm;

    invoke-direct {v0}, Ljqm;-><init>()V

    iput-object v0, p0, Ljgy;->b:Ljqm;

    .line 1105
    :cond_1
    iget-object v0, p0, Ljgy;->b:Ljqm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1079
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1090
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Ljgy;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 51
    const/4 v0, 0x1

    iget v1, p0, Ljgy;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 53
    :cond_0
    iget-object v0, p0, Ljgy;->b:Ljqm;

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Ljgy;->b:Ljqm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 57
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 62
    iget v1, p0, Ljgy;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 63
    const/4 v1, 0x1

    iget v2, p0, Ljgy;->a:I

    .line 64
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_0
    iget-object v1, p0, Ljgy;->b:Ljqm;

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x2

    iget-object v2, p0, Ljgy;->b:Ljqm;

    .line 68
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_1
    return v0
.end method
