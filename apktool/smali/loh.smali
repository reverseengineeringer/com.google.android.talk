.class public final Lloh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lloh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lljv;

.field public c:Llju;

.field public d:Llti;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1046
    iput-object v0, p0, Lloh;->a:Ljava/lang/Boolean;

    .line 1047
    iput-object v0, p0, Lloh;->b:Lljv;

    .line 1048
    iput-object v0, p0, Lloh;->c:Llju;

    .line 1049
    iput-object v0, p0, Lloh;->d:Llti;

    .line 1050
    iput-object v0, p0, Lloh;->eD:Llyd;

    .line 1051
    const/4 v0, -0x1

    iput v0, p0, Lloh;->eE:I

    .line 43
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2101
    sparse-switch v0, :sswitch_data_0

    .line 2105
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2106
    :sswitch_0
    return-object p0

    .line 2111
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lloh;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2115
    :sswitch_2
    iget-object v0, p0, Lloh;->b:Lljv;

    if-nez v0, :cond_1

    .line 2116
    new-instance v0, Lljv;

    invoke-direct {v0}, Lljv;-><init>()V

    iput-object v0, p0, Lloh;->b:Lljv;

    .line 2118
    :cond_1
    iget-object v0, p0, Lloh;->b:Lljv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2122
    :sswitch_3
    iget-object v0, p0, Lloh;->c:Llju;

    if-nez v0, :cond_2

    .line 2123
    new-instance v0, Llju;

    invoke-direct {v0}, Llju;-><init>()V

    iput-object v0, p0, Lloh;->c:Llju;

    .line 2125
    :cond_2
    iget-object v0, p0, Lloh;->c:Llju;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2129
    :sswitch_4
    iget-object v0, p0, Lloh;->d:Llti;

    if-nez v0, :cond_3

    .line 2130
    new-instance v0, Llti;

    invoke-direct {v0}, Llti;-><init>()V

    iput-object v0, p0, Lloh;->d:Llti;

    .line 2132
    :cond_3
    iget-object v0, p0, Lloh;->d:Llti;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lloh;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iget-object v1, p0, Lloh;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 61
    :cond_0
    iget-object v0, p0, Lloh;->b:Lljv;

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Lloh;->b:Lljv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lloh;->c:Llju;

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x4

    iget-object v1, p0, Lloh;->c:Llju;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lloh;->d:Llti;

    if-eqz v0, :cond_3

    .line 68
    const/4 v0, 0x5

    iget-object v1, p0, Lloh;->d:Llti;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 70
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 71
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 76
    iget-object v1, p0, Lloh;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x1

    iget-object v2, p0, Lloh;->a:Ljava/lang/Boolean;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 78
    add-int/2addr v0, v1

    .line 80
    :cond_0
    iget-object v1, p0, Lloh;->b:Lljv;

    if-eqz v1, :cond_1

    .line 81
    const/4 v1, 0x2

    iget-object v2, p0, Lloh;->b:Lljv;

    .line 82
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_1
    iget-object v1, p0, Lloh;->c:Llju;

    if-eqz v1, :cond_2

    .line 85
    const/4 v1, 0x4

    iget-object v2, p0, Lloh;->c:Llju;

    .line 86
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_2
    iget-object v1, p0, Lloh;->d:Llti;

    if-eqz v1, :cond_3

    .line 89
    const/4 v1, 0x5

    iget-object v2, p0, Lloh;->d:Llti;

    .line 90
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_3
    return v0
.end method
