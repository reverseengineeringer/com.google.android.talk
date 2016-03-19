.class public final Lkcj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20928
    invoke-direct {p0}, Llyb;-><init>()V

    .line 21933
    iput-object v0, p0, Lkcj;->a:Ljava/lang/String;

    .line 21934
    iput-object v0, p0, Lkcj;->eD:Llyd;

    .line 21935
    const/4 v0, -0x1

    iput v0, p0, Lkcj;->eE:I

    .line 20930
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 21963
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 21964
    sparse-switch v0, :sswitch_data_0

    .line 21968
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21969
    :sswitch_0
    return-object p0

    .line 21974
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkcj;->a:Ljava/lang/String;

    goto :goto_0

    .line 21964
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 20942
    iget-object v0, p0, Lkcj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20943
    const/4 v0, 0x1

    iget-object v1, p0, Lkcj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 20945
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 20946
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 20950
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 20951
    iget-object v1, p0, Lkcj;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20952
    const/4 v1, 0x1

    iget-object v2, p0, Lkcj;->a:Ljava/lang/String;

    .line 20953
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20955
    :cond_0
    return v0
.end method
