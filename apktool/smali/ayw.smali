.class final Layw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lebb;


# instance fields
.field private final a:Layx;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Layx;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layx;

    iput-object v0, p0, Layw;->a:Layx;

    .line 23
    iput-object p1, p0, Layw;->b:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lhqe;Ldrz;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p2}, Ldrz;->n()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v1

    .line 31
    :goto_0
    invoke-virtual {p2}, Ldrz;->n()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v2, v1

    .line 32
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_3

    .line 33
    :cond_1
    invoke-virtual {p2}, Ldrz;->o()Ljava/lang/String;

    move-result-object v2

    .line 34
    iget-object v4, p0, Layw;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 37
    :try_start_0
    iget-object v5, p0, Layw;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 38
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1041
    const-string v5, "app_upgrade_type"

    if-eqz v0, :cond_2

    move v1, v3

    :cond_2
    invoke-interface {p1, v5, v1}, Lhqe;->c(Ljava/lang/String;I)Lhqe;

    .line 1042
    const-string v0, "app_upgrade_url"

    invoke-interface {p1, v0, v2}, Lhqe;->c(Ljava/lang/String;Ljava/lang/String;)Lhqe;

    .line 1043
    const-string v0, "app_upgrade_version_code"

    invoke-interface {p1, v0, v4}, Lhqe;->c(Ljava/lang/String;I)Lhqe;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 29
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
