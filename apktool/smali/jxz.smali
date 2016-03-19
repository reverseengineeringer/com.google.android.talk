.class public final Ljxz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9063
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10068
    iput-object v0, p0, Ljxz;->a:Ljava/lang/String;

    .line 10069
    iput-object v0, p0, Ljxz;->b:Ljava/lang/String;

    .line 10070
    iput-object v0, p0, Ljxz;->eD:Llyd;

    .line 10071
    const/4 v0, -0x1

    iput v0, p0, Ljxz;->eE:I

    .line 9065
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 10106
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10107
    sparse-switch v0, :sswitch_data_0

    .line 10111
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10112
    :sswitch_0
    return-object p0

    .line 10117
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxz;->a:Ljava/lang/String;

    goto :goto_0

    .line 10121
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxz;->b:Ljava/lang/String;

    goto :goto_0

    .line 10107
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9078
    iget-object v0, p0, Ljxz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9079
    const/4 v0, 0x1

    iget-object v1, p0, Ljxz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9081
    :cond_0
    iget-object v0, p0, Ljxz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9082
    const/4 v0, 0x2

    iget-object v1, p0, Ljxz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9084
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9085
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9089
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9090
    iget-object v1, p0, Ljxz;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9091
    const/4 v1, 0x1

    iget-object v2, p0, Ljxz;->a:Ljava/lang/String;

    .line 9092
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9094
    :cond_0
    iget-object v1, p0, Ljxz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9095
    const/4 v1, 0x2

    iget-object v2, p0, Ljxz;->b:Ljava/lang/String;

    .line 9096
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9098
    :cond_1
    return v0
.end method
