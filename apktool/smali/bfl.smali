.class final Lbfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqh;


# instance fields
.field final synthetic a:Lbff;


# direct methods
.method constructor <init>(Lbff;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lbfl;->a:Lbff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    const-string v0, "fix_sms_logged_off2"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lhqe;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 496
    const-string v0, "SMS"

    const-string v3, "account_name"

    invoke-interface {p2, v3}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "is_sms_account"

    .line 498
    invoke-interface {p2, v0}, Lhqe;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1660
    sget-object v0, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 499
    if-eqz v0, :cond_1

    move v0, v1

    .line 500
    :goto_0
    const-string v3, "logged_in"

    invoke-interface {p2, v3, v0}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 501
    const-string v3, "logged_out"

    if-nez v0, :cond_2

    :goto_1
    invoke-interface {p2, v3, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 503
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 499
    goto :goto_0

    :cond_2
    move v1, v2

    .line 501
    goto :goto_1
.end method
