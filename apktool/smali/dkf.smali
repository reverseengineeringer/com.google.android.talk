.class public final Ldkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldjy;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Ldkf;->a:Z

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ldlv;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 25
    iget-boolean v0, p0, Ldkf;->a:Z

    .line 1055
    new-instance v1, Ldke;

    invoke-direct {v1}, Ldke;-><init>()V

    .line 1056
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1057
    const-string v3, "from_settings"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1060
    const-string v0, "set_discoverability"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1061
    const-string v0, "current_step"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1062
    invoke-virtual {v1, v2}, Ldke;->setArguments(Landroid/os/Bundle;)V

    .line 25
    return-object v1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 30
    const-class v0, Lhpu;

    .line 32
    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 31
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 33
    const-class v0, Ldjw;

    invoke-static {p1, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjw;

    .line 34
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ldjw;->b(Lbfd;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->tY:I

    return v0
.end method
