.class final Ldbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ldbh;


# direct methods
.method constructor <init>(Ldbh;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Ldbq;->a:Ldbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-object v0, p0, Ldbq;->a:Ldbh;

    .line 1100
    iget-object v0, v0, Ldbh;->ap:Lcqr;

    .line 454
    const-string v1, "click_contact_list"

    invoke-interface {v0, v1}, Lcqr;->a(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Ldbq;->a:Ldbh;

    .line 457
    invoke-virtual {v0}, Ldbh;->getBinder()Lilh;

    move-result-object v0

    const-class v1, Lfck;

    invoke-virtual {v0, v1}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfck;

    move-object v1, p1

    .line 458
    check-cast v1, Lfce;

    .line 459
    invoke-virtual {v1}, Lfce;->a()Lbdy;

    move-result-object v4

    .line 462
    invoke-virtual {v4}, Lbdy;->r()I

    move-result v5

    .line 463
    sget v2, Lbdz;->a:I

    if-eq v5, v2, :cond_1

    .line 464
    const/16 v2, 0xa0c

    .line 465
    sget v6, Lbdz;->c:I

    if-ne v5, v6, :cond_3

    .line 466
    const/16 v2, 0xa0b

    .line 470
    :cond_0
    :goto_0
    iget-object v5, p0, Ldbq;->a:Ldbh;

    .line 2100
    iget-object v5, v5, Ldbh;->f:Lbfd;

    .line 470
    invoke-static {v5, v2}, Laal;->a(Lbfd;I)V

    .line 473
    :cond_1
    if-eqz v0, :cond_4

    .line 474
    invoke-interface {v0, v1}, Lfck;->a(Lfce;)V

    .line 502
    :cond_2
    :goto_1
    return-void

    .line 467
    :cond_3
    sget v6, Lbdz;->d:I

    if-ne v5, v6, :cond_0

    .line 468
    const/16 v2, 0xa0a

    goto :goto_0

    .line 482
    :cond_4
    iget-object v0, p0, Ldbq;->a:Ldbh;

    invoke-virtual {v0}, Ldbh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 483
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 485
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Ldbr;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5, v4}, Ldbr;-><init>(Ldbq;Landroid/os/Handler;Lbdy;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 499
    :goto_2
    if-nez v0, :cond_2

    .line 500
    iget-object v0, p0, Ldbq;->a:Ldbh;

    invoke-static {v0, v4}, Ldbh;->a(Ldbh;Lbdy;)V

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2
.end method
