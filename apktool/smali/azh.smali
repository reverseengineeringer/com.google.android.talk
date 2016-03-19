.class public final Lazh;
.super Ldlv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    sget v0, Laal;->ik:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Laal;->ih:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Laal;->ii:I

    aput v3, v1, v2

    invoke-direct {p0, v0, v1}, Ldlv;-><init>(I[I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lazh;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->c()Lhqb;

    move-result-object v0

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lazh;->binder:Lilh;

    const-class v2, Lhpu;

    .line 71
    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 70
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 72
    if-nez v2, :cond_0

    .line 73
    const-string v0, "Babel"

    const-string v2, "[BusinessFeaturesPromo.setBusinessPromo] Account changed?"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :goto_0
    invoke-super {p0, p1}, Ldlv;->a(I)V

    .line 80
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lazh;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v0, Laal;->ii:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 75
    :goto_1
    invoke-static {v3, v2, v0}, Lbff;->c(Landroid/content/Context;Lbfd;Z)V

    .line 77
    invoke-virtual {p0}, Lazh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lbff;->c(Landroid/content/Context;Lbfd;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 76
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 35
    invoke-super {p0, p1, p2, p3}, Ldlv;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 36
    invoke-static {v1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lazh;->binder:Lilh;

    const-class v2, Lhpu;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    .line 39
    invoke-interface {v0}, Lhpu;->c()Lhqb;

    move-result-object v0

    const-string v2, "display_name"

    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    sget v0, Laal;->ig:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    iget-object v3, p0, Lazh;->context:Lill;

    sget v4, Laen;->hs:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    .line 43
    invoke-virtual {v3, v4, v5}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    sget v0, Laal;->if:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    const-string v2, "https://support.google.com/business/?hl=%locale%"

    const-string v3, "hangouts_business"

    invoke-static {v2, v3}, Laal;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lazh;->context:Lill;

    sget v4, Laen;->hq:I

    new-array v5, v7, [Ljava/lang/Object;

    .line 48
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    .line 47
    invoke-virtual {v3, v4, v5}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lazh;->context:Lill;

    invoke-static {v0, v3, v2}, Laal;->a(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    sget v0, Laal;->ih:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    sget v2, Laen;->hr:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 53
    sget v0, Laal;->ii:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    sget v2, Laen;->hp:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 56
    sget v0, Laal;->ij:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 57
    iget-object v2, p0, Lazh;->context:Lill;

    invoke-virtual {v2}, Lill;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->il:I

    invoke-static {v0, v2, v3}, Laal;->a(Landroid/widget/ImageView;Landroid/content/res/Resources;I)V

    .line 59
    return-object v1
.end method
