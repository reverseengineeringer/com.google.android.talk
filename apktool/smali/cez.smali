.class final Lcez;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcex;


# direct methods
.method constructor <init>(Lcex;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcez;->a:Lcex;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcez;->a:Lcex;

    .line 1021
    iget-object v0, v0, Lcex;->b:Lcfa;

    .line 143
    if-nez v0, :cond_1

    .line 3161
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcez;->a:Lcex;

    .line 2021
    iget-object v0, v0, Lcex;->b:Lcfa;

    .line 148
    sget-object v1, Lcey;->a:Lcey;

    invoke-virtual {v0, v1}, Lcfa;->a(Lcey;)V

    goto :goto_0

    .line 149
    :cond_2
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcez;->a:Lcex;

    .line 3021
    iget-object v0, v0, Lcex;->b:Lcfa;

    .line 150
    sget-object v1, Lcey;->b:Lcey;

    invoke-virtual {v0, v1}, Lcfa;->a(Lcey;)V

    goto :goto_0

    .line 151
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3158
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3159
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3160
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3161
    iget-object v0, p0, Lcez;->a:Lcex;

    .line 4021
    iget-object v0, v0, Lcex;->b:Lcfa;

    .line 3161
    sget-object v1, Lcey;->c:Lcey;

    invoke-virtual {v0, v1}, Lcfa;->a(Lcey;)V

    goto :goto_0

    .line 3163
    :cond_4
    iget-object v0, p0, Lcez;->a:Lcex;

    .line 5021
    iget-object v0, v0, Lcex;->b:Lcfa;

    .line 3163
    sget-object v1, Lcey;->d:Lcey;

    invoke-virtual {v0, v1}, Lcfa;->a(Lcey;)V

    goto :goto_0
.end method
