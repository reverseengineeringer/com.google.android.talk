.class public final Lehs;
.super Laxv;
.source "SourceFile"


# static fields
.field private static final b:Z


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lehs;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Laxv;-><init>()V

    .line 22
    iput-object p1, p0, Lehs;->a:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 30
    iget-object v0, p0, Lehs;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lehs;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/hangouts/service/NetworkConnectivityChangeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 35
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lehs;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lehs;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/hangouts/service/NetworkConnectivityChangeReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 47
    return-void
.end method
