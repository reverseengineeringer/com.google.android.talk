.class public final Lawg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lawg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1111
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2116
    iput-object v0, p0, Lawg;->a:Ljava/lang/Integer;

    .line 2117
    iput-object v0, p0, Lawg;->b:Ljava/lang/Integer;

    .line 2118
    iput-object v0, p0, Lawg;->eD:Llyd;

    .line 2119
    const/4 v0, -0x1

    iput v0, p0, Lawg;->eE:I

    .line 1113
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2155
    sparse-switch v0, :sswitch_data_0

    .line 2159
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2160
    :sswitch_0
    return-object p0

    .line 2165
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lawg;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2169
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lawg;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2155
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Lawg;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1127
    const/4 v0, 0x1

    iget-object v1, p0, Lawg;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1129
    :cond_0
    iget-object v0, p0, Lawg;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1130
    const/4 v0, 0x2

    iget-object v1, p0, Lawg;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1132
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1133
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1137
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1138
    iget-object v1, p0, Lawg;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1139
    const/4 v1, 0x1

    iget-object v2, p0, Lawg;->a:Ljava/lang/Integer;

    .line 1140
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1142
    :cond_0
    iget-object v1, p0, Lawg;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1143
    const/4 v1, 0x2

    iget-object v2, p0, Lawg;->b:Ljava/lang/Integer;

    .line 1144
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1146
    :cond_1
    return v0
.end method
