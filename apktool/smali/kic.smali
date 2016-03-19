.class public final Lkic;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkic;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llcf;

.field public b:Llcf;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1065
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2070
    iput-object v0, p0, Lkic;->a:Llcf;

    .line 2071
    iput-object v0, p0, Lkic;->b:Llcf;

    .line 2072
    iput-object v0, p0, Lkic;->c:Ljava/lang/Boolean;

    .line 2073
    iput-object v0, p0, Lkic;->eD:Llyd;

    .line 2074
    const/4 v0, -0x1

    iput v0, p0, Lkic;->eE:I

    .line 1067
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3116
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3117
    sparse-switch v0, :sswitch_data_0

    .line 3121
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3122
    :sswitch_0
    return-object p0

    .line 3127
    :sswitch_1
    iget-object v0, p0, Lkic;->a:Llcf;

    if-nez v0, :cond_1

    .line 3128
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkic;->a:Llcf;

    .line 3130
    :cond_1
    iget-object v0, p0, Lkic;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3134
    :sswitch_2
    iget-object v0, p0, Lkic;->b:Llcf;

    if-nez v0, :cond_2

    .line 3135
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkic;->b:Llcf;

    .line 3137
    :cond_2
    iget-object v0, p0, Lkic;->b:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3141
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkic;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 3117
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1081
    iget-object v0, p0, Lkic;->a:Llcf;

    if-eqz v0, :cond_0

    .line 1082
    const/4 v0, 0x1

    iget-object v1, p0, Lkic;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1084
    :cond_0
    iget-object v0, p0, Lkic;->b:Llcf;

    if-eqz v0, :cond_1

    .line 1085
    const/4 v0, 0x2

    iget-object v1, p0, Lkic;->b:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1087
    :cond_1
    iget-object v0, p0, Lkic;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1088
    const/4 v0, 0x3

    iget-object v1, p0, Lkic;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1090
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1091
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1095
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1096
    iget-object v1, p0, Lkic;->a:Llcf;

    if-eqz v1, :cond_0

    .line 1097
    const/4 v1, 0x1

    iget-object v2, p0, Lkic;->a:Llcf;

    .line 1098
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1100
    :cond_0
    iget-object v1, p0, Lkic;->b:Llcf;

    if-eqz v1, :cond_1

    .line 1101
    const/4 v1, 0x2

    iget-object v2, p0, Lkic;->b:Llcf;

    .line 1102
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1104
    :cond_1
    iget-object v1, p0, Lkic;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1105
    const/4 v1, 0x3

    iget-object v2, p0, Lkic;->c:Ljava/lang/Boolean;

    .line 1106
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1106
    add-int/2addr v0, v1

    .line 1108
    :cond_2
    return v0
.end method
