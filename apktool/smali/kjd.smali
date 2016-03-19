.class public final Lkjd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 840
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1845
    iput-object v0, p0, Lkjd;->a:Ljava/lang/String;

    .line 1846
    iput-object v0, p0, Lkjd;->b:Ljava/lang/Float;

    .line 1847
    iput-object v0, p0, Lkjd;->eD:Llyd;

    .line 1848
    const/4 v0, -0x1

    iput v0, p0, Lkjd;->eE:I

    .line 842
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2879
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2880
    sparse-switch v0, :sswitch_data_0

    .line 2884
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2885
    :sswitch_0
    return-object p0

    .line 2890
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjd;->a:Ljava/lang/String;

    goto :goto_0

    .line 2894
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lkjd;->b:Ljava/lang/Float;

    goto :goto_0

    .line 2880
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 855
    const/4 v0, 0x1

    iget-object v1, p0, Lkjd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 856
    iget-object v0, p0, Lkjd;->b:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 857
    const/4 v0, 0x2

    iget-object v1, p0, Lkjd;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 859
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 860
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 864
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 865
    const/4 v1, 0x1

    iget-object v2, p0, Lkjd;->a:Ljava/lang/String;

    .line 866
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    iget-object v1, p0, Lkjd;->b:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 868
    const/4 v1, 0x2

    iget-object v2, p0, Lkjd;->b:Ljava/lang/Float;

    .line 869
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 869
    add-int/2addr v0, v1

    .line 871
    :cond_0
    return v0
.end method
