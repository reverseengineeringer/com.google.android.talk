.class public final Ldkr;
.super Limg;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/Button;

.field d:Lbfd;

.field e:Z

.field f:Ldjw;

.field g:Lhaw;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Limg;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ldkr;->h:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 136
    sget v1, Lgbi;->g:I

    if-ne p1, v1, :cond_0

    .line 137
    iget-object v1, p0, Ldkr;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 139
    iget-object v1, p0, Ldkr;->c:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Ldkr;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    iget-object v0, p0, Ldkr;->g:Lhaw;

    const/16 v2, 0x894

    invoke-interface {v0, v2}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lhax;->d()V

    .line 146
    iget-object v0, p0, Ldkr;->f:Ldjw;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Ldkr;->f:Ldjw;

    invoke-virtual {v0, v1}, Ldjw;->a(Ljava/lang/String;)V

    .line 149
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Ldkr;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    .line 60
    invoke-interface {v0}, Lhpu;->a()I

    move-result v1

    .line 61
    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Ldkr;->d:Lbfd;

    .line 62
    iget-object v0, p0, Ldkr;->binder:Lilh;

    const-class v2, Lhba;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    iput-object v0, p0, Ldkr;->g:Lhaw;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p0}, Ldkr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "set_discoverability"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldkr;->e:Z

    .line 68
    invoke-virtual {p0}, Ldkr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone_number"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldkr;->a:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Ldkr;->binder:Lilh;

    const-class v1, Ldjw;

    invoke-virtual {v0, v1}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjw;

    iput-object v0, p0, Ldkr;->f:Ldjw;

    .line 71
    sget v0, Laal;->oR:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldkr;->h:Landroid/view/View;

    .line 1086
    iget-object v0, p0, Ldkr;->h:Landroid/view/View;

    sget v1, Lgbi;->r:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ldkr;->i:Landroid/widget/EditText;

    .line 1087
    iget-object v0, p0, Ldkr;->h:Landroid/view/View;

    sget v1, Lgbi;->p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldkr;->b:Landroid/widget/TextView;

    .line 1088
    iget-object v0, p0, Ldkr;->h:Landroid/view/View;

    sget v1, Lgbi;->t:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ldkr;->c:Landroid/widget/Button;

    .line 1090
    iget-object v0, p0, Ldkr;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1091
    iget-object v0, p0, Ldkr;->c:Landroid/widget/Button;

    new-instance v1, Ldks;

    invoke-direct {v1, p0}, Ldks;-><init>(Ldkr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    iget-object v0, p0, Ldkr;->i:Landroid/widget/EditText;

    new-instance v1, Ldkt;

    invoke-direct {v1, p0}, Ldkt;-><init>(Ldkr;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1119
    iget-object v0, p0, Ldkr;->i:Landroid/widget/EditText;

    new-instance v1, Ldku;

    invoke-direct {v1, p0}, Ldku;-><init>(Ldkr;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 73
    iget-object v0, p0, Ldkr;->h:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ldkr;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 79
    invoke-super {p0}, Limg;->onResume()V

    .line 80
    return-void
.end method
