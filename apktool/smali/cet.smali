.class final Lcet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lceq;


# instance fields
.field public a:I

.field public b:Landroid/content/Context;

.field public c:Lawp;

.field public d:Lhba;

.field public e:Lhpu;

.field public f:Lhpz;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcet;->f:Lhpz;

    iget v1, p0, Lcet;->a:I

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "gv_sms_promo_seen_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 128
    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 8

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 63
    sget v1, Laal;->lH:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 66
    sget v0, Laal;->lE:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcet;->b:Landroid/content/Context;

    .line 70
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->lI:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fi_sms_integration"

    .line 1050
    const-string v7, "https://www.google.com/support/hangouts/?hl=%locale%"

    invoke-static {v7, v6}, Laal;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 73
    aput-object v6, v4, v5

    .line 71
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 76
    sget v0, Laal;->lF:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    new-instance v2, Lceu;

    invoke-direct {v2, p0, v1}, Lceu;-><init>(Lcet;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Laal;->lG:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    new-instance v2, Lcev;

    invoke-direct {v2, p0, v1}, Lcev;-><init>(Lcet;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 103
    iget v0, p0, Lcet;->a:I

    .line 104
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 103
    invoke-static {p1, v0, v4}, Lbff;->b(Landroid/content/Context;Lbfd;Z)V

    .line 105
    invoke-static {p1}, Lijs;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    const-string v1, "gv_sms"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gv_sms"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    :cond_0
    new-instance v0, Liin;

    iget v1, p0, Lcet;->a:I

    const-string v2, "gv_sms"

    const/4 v3, 0x0

    .line 110
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Liin;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V

    .line 111
    invoke-virtual {v0, v4}, Liin;->a(Z)V

    .line 112
    return-void
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcet;->b:Landroid/content/Context;

    .line 52
    const-class v0, Lawp;

    invoke-virtual {p2, v0}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawp;

    iput-object v0, p0, Lcet;->c:Lawp;

    .line 53
    const-class v0, Lhba;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iput-object v0, p0, Lcet;->d:Lhba;

    .line 54
    const-class v0, Lhpu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lcet;->e:Lhpu;

    .line 55
    const-class v0, Lhpz;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lcet;->f:Lhpz;

    .line 56
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcet;->e:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    iput v1, p0, Lcet;->a:I

    .line 142
    iget-object v1, p0, Lcet;->b:Landroid/content/Context;

    iget v2, p0, Lcet;->a:I

    invoke-static {v1, v2}, Ldvd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcet;->c:Lawp;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcet;->c:Lawp;

    invoke-interface {v2, v1}, Lawp;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iget v1, p0, Lcet;->a:I

    .line 1568
    sget-object v2, Ldvp;->S:Ldml;

    invoke-virtual {v2, v1}, Ldml;->b(I)Z

    move-result v1

    .line 146
    if-eqz v1, :cond_0

    .line 149
    iget v1, p0, Lcet;->a:I

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->x()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1660
    sget-object v1, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v1

    .line 152
    if-eqz v1, :cond_0

    .line 2118
    iget-object v1, p0, Lcet;->f:Lhpz;

    iget v2, p0, Lcet;->a:I

    .line 2119
    invoke-interface {v1, v2}, Lhpz;->a(I)Lhqb;

    move-result-object v1

    const-string v2, "gv_sms_promo_seen_status"

    .line 2120
    invoke-interface {v1, v2, v0}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 155
    if-nez v1, :cond_0

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method
