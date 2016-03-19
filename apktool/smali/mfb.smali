.class public final Lmfb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmfb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lmfa;

.field public c:Lmfc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Llyb;-><init>()V

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Lmfb;->a:I

    .line 43
    iput-object v1, p0, Lmfb;->b:Lmfa;

    .line 44
    iput-object v1, p0, Lmfb;->c:Lmfc;

    .line 45
    iput-object v1, p0, Lmfb;->eD:Llyd;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lmfb;->eE:I

    .line 47
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1087
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1088
    sparse-switch v0, :sswitch_data_0

    .line 1092
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    :sswitch_0
    return-object p0

    .line 1098
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1099
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1103
    :pswitch_0
    iput v0, p0, Lmfb;->a:I

    goto :goto_0

    .line 1109
    :sswitch_2
    iget-object v0, p0, Lmfb;->b:Lmfa;

    if-nez v0, :cond_1

    .line 1110
    new-instance v0, Lmfa;

    invoke-direct {v0}, Lmfa;-><init>()V

    iput-object v0, p0, Lmfb;->b:Lmfa;

    .line 1112
    :cond_1
    iget-object v0, p0, Lmfb;->b:Lmfa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1116
    :sswitch_3
    iget-object v0, p0, Lmfb;->c:Lmfc;

    if-nez v0, :cond_2

    .line 1117
    new-instance v0, Lmfc;

    invoke-direct {v0}, Lmfc;-><init>()V

    iput-object v0, p0, Lmfb;->c:Lmfc;

    .line 1119
    :cond_2
    iget-object v0, p0, Lmfb;->c:Lmfc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1088
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 1099
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lmfb;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 53
    const/4 v0, 0x1

    iget v1, p0, Lmfb;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 55
    :cond_0
    iget-object v0, p0, Lmfb;->b:Lmfa;

    if-eqz v0, :cond_1

    .line 56
    const/4 v0, 0x2

    iget-object v1, p0, Lmfb;->b:Lmfa;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lmfb;->c:Lmfc;

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x3

    iget-object v1, p0, Lmfb;->c:Lmfc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 61
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 62
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 67
    iget v1, p0, Lmfb;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 68
    const/4 v1, 0x1

    iget v2, p0, Lmfb;->a:I

    .line 69
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_0
    iget-object v1, p0, Lmfb;->b:Lmfa;

    if-eqz v1, :cond_1

    .line 72
    const/4 v1, 0x2

    iget-object v2, p0, Lmfb;->b:Lmfa;

    .line 73
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_1
    iget-object v1, p0, Lmfb;->c:Lmfc;

    if-eqz v1, :cond_2

    .line 76
    const/4 v1, 0x3

    iget-object v2, p0, Lmfb;->c:Lmfc;

    .line 77
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_2
    return v0
.end method
