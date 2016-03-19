.class public final Lcex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Lcfa;

.field private final c:Landroid/content/Context;

.field private final d:Lcez;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 48
    sget-object v0, Lcey;->a:Lcey;

    const/16 v1, 0xaf5

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcey;->b:Lcey;

    const/16 v3, 0xaf6

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcey;->c:Lcey;

    const/16 v5, 0xaf3

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcey;->d:Lcey;

    const/16 v7, 0xaf4

    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 49
    invoke-static/range {v0 .. v7}, Lksm;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lksm;

    move-result-object v0

    sput-object v0, Lcex;->a:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcex;->c:Landroid/content/Context;

    .line 67
    new-instance v0, Lcez;

    .line 1140
    invoke-direct {v0, p0}, Lcez;-><init>(Lcex;)V

    .line 67
    iput-object v0, p0, Lcex;->d:Lcez;

    .line 68
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/4 v3, -0x1

    .line 81
    iget-object v0, p0, Lcex;->b:Lcfa;

    if-eqz v0, :cond_1

    .line 2098
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2099
    iget-object v1, p0, Lcex;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2100
    const-string v1, "plugged"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2101
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2102
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2103
    const-string v2, "scale"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2104
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    int-to-double v4, v1

    mul-double/2addr v2, v4

    int-to-double v0, v0

    div-double v0, v2, v0

    double-to-int v0, v0

    .line 2105
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 2106
    iget-object v0, p0, Lcex;->b:Lcfa;

    sget-object v1, Lcey;->a:Lcey;

    invoke-virtual {v0, v1}, Lcfa;->a(Lcey;)V

    .line 2109
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_1

    .line 2116
    iget-object v0, p0, Lcex;->c:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2117
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2118
    iget-object v0, p0, Lcex;->b:Lcfa;

    sget-object v1, Lcey;->c:Lcey;

    invoke-virtual {v0, v1}, Lcfa;->a(Lcey;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcex;->c:Landroid/content/Context;

    iget-object v1, p0, Lcex;->d:Lcez;

    .line 2123
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2124
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2125
    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2126
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_2

    .line 2134
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public a(Lcfa;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcex;->b:Lcfa;

    .line 75
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcex;->c:Landroid/content/Context;

    iget-object v1, p0, Lcex;->d:Lcez;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    return-void
.end method
