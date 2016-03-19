.class public final Lcpm;
.super Lhpj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhpj",
        "<",
        "Lhpl;",
        ">;"
    }
.end annotation


# instance fields
.field aj:Lcps;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lhpj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Lhpj;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 125
    new-instance v1, Lcpp;

    invoke-direct {v1, p0}, Lcpp;-><init>(Lcpm;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 141
    return-object v0
.end method

.method a(Lcps;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcpm;->aj:Lcps;

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lhpj;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcpm;->b(Z)V

    .line 46
    invoke-virtual {p0}, Lcpm;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lhpu;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpu;

    .line 47
    invoke-virtual {p0}, Lcpm;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lhba;

    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhba;

    .line 51
    invoke-interface {v1}, Lhpu;->a()I

    move-result v3

    invoke-interface {v2, v3}, Lhba;->a(I)Lhaw;

    move-result-object v3

    const/16 v4, 0xbd7

    .line 52
    invoke-interface {v3, v4}, Lhaw;->a(I)Lhax;

    move-result-object v3

    .line 53
    invoke-interface {v3}, Lhax;->d()V

    .line 56
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcpm;->setRetainInstance(Z)V

    .line 59
    sget v3, Laen;->kc:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p0}, Lcpm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->na:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    sget v3, Laen;->kf:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcpm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->nc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget v3, Laen;->kh:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 72
    invoke-virtual {p0}, Lcpm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->ne:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcpm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->mX:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 74
    new-instance v4, Lcpn;

    invoke-direct {v4, p0, v2, v1}, Lcpn;-><init>(Lcpm;Lhba;Lhpu;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget v3, Laen;->kb:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 92
    invoke-virtual {p0}, Lcpm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->mZ:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p0}, Lcpm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->nb:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcpm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->mY:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 95
    new-instance v4, Lcpo;

    invoke-direct {v4, p0, v2, v1}, Lcpo;-><init>(Lcpm;Lhba;Lhpu;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcpm;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcpm;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcpm;->c()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 118
    :cond_0
    invoke-super {p0}, Lhpj;->onDestroyView()V

    .line 119
    return-void
.end method

.method protected q()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x2

    return v0
.end method

.method protected r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcpm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->nd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected s()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic t()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method
