.class final Layq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Lios;
.implements Liov;
.implements Lioz;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/Dialog;

.field private c:Lhpu;

.field private d:Lhpz;

.field private e:Layx;

.field private f:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Liog;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Layq;->a:Landroid/app/Activity;

    .line 50
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 51
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Layq;->f:Z

    .line 80
    invoke-virtual {p0}, Layq;->c()V

    .line 81
    return-void
.end method

.method public a()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Layq;->f:Z

    .line 72
    iget-object v0, p0, Layq;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Layq;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Layq;->b:Landroid/app/Dialog;

    .line 76
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lhpu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Layq;->c:Lhpu;

    .line 55
    const-class v0, Lhpz;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Layq;->d:Lhpz;

    .line 56
    const-class v0, Layx;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layx;

    iput-object v0, p0, Layq;->e:Layx;

    .line 58
    iget-object v0, p0, Layq;->c:Lhpu;

    new-instance v1, Layr;

    invoke-direct {v1, p0}, Layr;-><init>(Layq;)V

    invoke-interface {v0, v1}, Lhpu;->a(Lhpw;)Lhpu;

    .line 68
    return-void
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-boolean v0, p0, Layq;->f:Z

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Layq;->c:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v2

    .line 89
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Layq;->d:Lhpz;

    invoke-interface {v0, v2}, Lhpz;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Layq;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 97
    :try_start_0
    iget-object v3, p0, Layq;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    iget-object v3, p0, Layq;->a:Landroid/app/Activity;

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1032
    const-class v0, Lhpz;

    invoke-static {v3, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, v2}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 1033
    const-string v3, "app_upgrade_version_code"

    invoke-interface {v0, v3, v1}, Lhqb;->a(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v4, :cond_2

    move v0, v1

    .line 104
    :goto_1
    if-eqz v0, :cond_0

    .line 105
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    .line 108
    :goto_2
    new-instance v3, Lays;

    invoke-direct {v3, p0, v2}, Lays;-><init>(Layq;I)V

    .line 119
    new-instance v2, Layt;

    invoke-direct {v2, p0, v0}, Layt;-><init>(Layq;Z)V

    .line 133
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Layq;->a:Landroid/app/Activity;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_4

    .line 134
    sget v1, Laal;->ia:I

    :goto_3
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 136
    sget v0, Laal;->ib:I

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Laal;->hZ:I

    .line 139
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Layq;->b:Landroid/app/Dialog;

    .line 141
    iget-object v0, p0, Layq;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1036
    :cond_2
    const-string v3, "app_upgrade_type"

    invoke-interface {v0, v3, v1}, Lhqb;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 105
    goto :goto_2

    .line 135
    :cond_4
    sget v1, Laal;->id:I

    goto :goto_3

    .line 137
    :cond_5
    sget v0, Laal;->ic:I

    goto :goto_4
.end method
