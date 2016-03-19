.class public final Lizc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lizc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Liyz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1097
    iput-object v0, p0, Lizc;->a:Liyz;

    .line 1098
    iput-object v0, p0, Lizc;->eD:Llyd;

    .line 1099
    const/4 v0, -0x1

    iput v0, p0, Lizc;->eE:I

    .line 94
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1127
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1128
    sparse-switch v0, :sswitch_data_0

    .line 1132
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    :sswitch_0
    return-object p0

    .line 1138
    :sswitch_1
    iget-object v0, p0, Lizc;->a:Liyz;

    if-nez v0, :cond_1

    .line 1139
    new-instance v0, Liyz;

    invoke-direct {v0}, Liyz;-><init>()V

    iput-object v0, p0, Lizc;->a:Liyz;

    .line 1141
    :cond_1
    iget-object v0, p0, Lizc;->a:Liyz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1128
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
    .line 106
    iget-object v0, p0, Lizc;->a:Liyz;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    iget-object v1, p0, Lizc;->a:Liyz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 110
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 115
    iget-object v1, p0, Lizc;->a:Liyz;

    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x1

    iget-object v2, p0, Lizc;->a:Liyz;

    .line 117
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_0
    return v0
.end method
