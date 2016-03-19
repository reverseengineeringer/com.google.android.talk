.class public Lbbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liaw;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lhpz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lilh;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lbbu;->a:Landroid/content/Context;

    .line 27
    const-class v0, Lhpz;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lbbu;->b:Lhpz;

    .line 28
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    iget-object v0, p0, Lbbu;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lbbu;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 39
    const-string v1, "PAGE_NOTIFICATION_COUNT"

    invoke-interface {v0, v1, v4}, Lhqb;->a(Ljava/lang/String;I)I

    move-result v1

    .line 40
    const-string v2, "effective_gaia_id"

    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "is_business_features_eligible"

    .line 41
    invoke-interface {v0, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "business_features_promo_shown"

    .line 42
    invoke-interface {v0, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ge v1, v3, :cond_0

    .line 44
    iget-object v0, p0, Lbbu;->a:Landroid/content/Context;

    .line 1027
    new-instance v2, Lbbv;

    invoke-direct {v2, v0, p1}, Lbbv;-><init>(Landroid/content/Context;I)V

    .line 1028
    invoke-virtual {v2, v5}, Lbbv;->a(Z)V

    .line 47
    add-int/lit8 v0, v1, 0x1

    .line 48
    iget-object v1, p0, Lbbu;->b:Lhpz;

    invoke-interface {v1, p1}, Lhpz;->b(I)Lhqc;

    move-result-object v1

    const-string v2, "PAGE_NOTIFICATION_COUNT"

    .line 49
    invoke-virtual {v1, v2, v0}, Lhqc;->b(Ljava/lang/String;I)Lhqc;

    move-result-object v1

    invoke-virtual {v1}, Lhqc;->d()I

    .line 53
    if-ge v0, v3, :cond_0

    .line 54
    iget-object v0, p0, Lbbu;->a:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 2027
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/hangouts/callmemaybe/NewPlusAccountService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2028
    const-string v3, "account_id"

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2029
    invoke-static {v0, v4, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2031
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2032
    const-wide/32 v2, 0x240c8400

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
