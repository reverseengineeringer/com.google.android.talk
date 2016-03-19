.class public final Ljac;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljac;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llfi;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Llyb;-><init>()V

    .line 39
    iput-object v1, p0, Ljac;->a:Llfi;

    .line 40
    const/high16 v0, -0x80000000

    iput v0, p0, Ljac;->b:I

    .line 41
    iput-object v1, p0, Ljac;->eD:Llyd;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Ljac;->eE:I

    .line 43
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1076
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1077
    sparse-switch v0, :sswitch_data_0

    .line 1081
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    :sswitch_0
    return-object p0

    .line 1087
    :sswitch_1
    iget-object v0, p0, Ljac;->a:Llfi;

    if-nez v0, :cond_1

    .line 1088
    new-instance v0, Llfi;

    invoke-direct {v0}, Llfi;-><init>()V

    iput-object v0, p0, Ljac;->a:Llfi;

    .line 1090
    :cond_1
    iget-object v0, p0, Ljac;->a:Llfi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1094
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1095
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1099
    :pswitch_0
    iput v0, p0, Ljac;->b:I

    goto :goto_0

    .line 1077
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 1095
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
    .line 48
    iget-object v0, p0, Ljac;->a:Llfi;

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iget-object v1, p0, Ljac;->a:Llfi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 51
    :cond_0
    iget v0, p0, Ljac;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 52
    const/4 v0, 0x2

    iget v1, p0, Ljac;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 54
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 55
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 60
    iget-object v1, p0, Ljac;->a:Llfi;

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    iget-object v2, p0, Ljac;->a:Llfi;

    .line 62
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_0
    iget v1, p0, Ljac;->b:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 65
    const/4 v1, 0x2

    iget v2, p0, Ljac;->b:I

    .line 66
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_1
    return v0
.end method
