.class public final Llmm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llmm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Llmn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1054
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2059
    iput-object v0, p0, Llmm;->a:Ljava/lang/String;

    .line 2060
    iput-object v0, p0, Llmm;->b:Llmn;

    .line 2061
    iput-object v0, p0, Llmm;->eD:Llyd;

    .line 2062
    const/4 v0, -0x1

    iput v0, p0, Llmm;->eE:I

    .line 1056
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2097
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2098
    sparse-switch v0, :sswitch_data_0

    .line 2102
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    :sswitch_0
    return-object p0

    .line 2108
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmm;->a:Ljava/lang/String;

    goto :goto_0

    .line 2112
    :sswitch_2
    iget-object v0, p0, Llmm;->b:Llmn;

    if-nez v0, :cond_1

    .line 2113
    new-instance v0, Llmn;

    invoke-direct {v0}, Llmn;-><init>()V

    iput-object v0, p0, Llmm;->b:Llmn;

    .line 2115
    :cond_1
    iget-object v0, p0, Llmm;->b:Llmn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2098
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
    .line 1069
    iget-object v0, p0, Llmm;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1070
    const/4 v0, 0x1

    iget-object v1, p0, Llmm;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1072
    :cond_0
    iget-object v0, p0, Llmm;->b:Llmn;

    if-eqz v0, :cond_1

    .line 1073
    const/4 v0, 0x2

    iget-object v1, p0, Llmm;->b:Llmn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1075
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1076
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1080
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1081
    iget-object v1, p0, Llmm;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1082
    const/4 v1, 0x1

    iget-object v2, p0, Llmm;->a:Ljava/lang/String;

    .line 1083
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    :cond_0
    iget-object v1, p0, Llmm;->b:Llmn;

    if-eqz v1, :cond_1

    .line 1086
    const/4 v1, 0x2

    iget-object v2, p0, Llmm;->b:Llmn;

    .line 1087
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1089
    :cond_1
    return v0
.end method
