.class final Ldja;
.super Ldjc;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldiu;


# direct methods
.method constructor <init>(Ldiu;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Ldja;->a:Ldiu;

    .line 1160
    invoke-direct {p0, p1}, Ldjc;-><init>(Ldiu;)V

    .line 250
    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Ldja;->a:Ldiu;

    .line 2045
    iget-object v1, v1, Ldiu;->e:Landroid/content/Context;

    .line 263
    const-string v2, "babel_gcm_change_notification"

    .line 262
    invoke-static {v1, v2, v0}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2073
    sget-boolean v1, Lcom/google/android/apps/hangouts/service/GcmStateReceiver;->a:Z

    .line 266
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 268
    :cond_0
    return v0
.end method

.method b()Lepa;
    .locals 3

    .prologue
    .line 274
    new-instance v0, Lepb;

    iget-object v1, p0, Ldja;->a:Ldiu;

    .line 3045
    iget-object v1, v1, Ldiu;->e:Landroid/content/Context;

    .line 274
    invoke-direct {v0, v1}, Lepb;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ldja;->a:Ldiu;

    .line 4045
    iget-object v1, v1, Ldiu;->e:Landroid/content/Context;

    .line 275
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->cg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lepb;->a(Ljava/lang/String;)Lepb;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lepb;->b()Lepa;

    move-result-object v0

    return-object v0
.end method
