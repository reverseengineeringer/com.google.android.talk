.class public final Ldkp;
.super Limg;
.source "SourceFile"


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private aj:Lhaw;

.field b:Landroid/view/View;

.field c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Limg;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v7, 0x0

    .line 128
    iget-object v0, p0, Ldkp;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Ldkp;->c:Ljava/lang/String;

    const-string v1, "phone_verification_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Ldkp;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Ldkp;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Ldkp;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Ldkp;->getActivity()Lba;

    move-result-object v1

    sget v2, Laal;->pa:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 133
    invoke-static {}, Lgw;->a()Lgw;

    move-result-object v4

    iget-object v5, p0, Ldkp;->d:Ljava/lang/String;

    sget v6, Lezp;->c:I

    invoke-static {v5, v6}, Lezm;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lhh;->a:Lhg;

    invoke-virtual {v4, v5, v6}, Lgw;->a(Ljava/lang/String;Lhg;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 132
    invoke-virtual {v1, v2, v3}, Lba;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Ldkp;->e:Landroid/widget/TextView;

    .line 1124
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Ldkp;->aj:Lhaw;

    const/16 v1, 0x966

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lhax;->d()V

    .line 141
    iget-object v0, p0, Ldkp;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Ldkp;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v1}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->pe:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Ldkp;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Ldkp;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v1}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->pd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Ldkp;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Ldkp;->i:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Ldkp;->i:Landroid/widget/Button;

    .line 149
    invoke-virtual {p0}, Ldkp;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v1}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->oS:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 3

    .prologue
    .line 168
    sget v0, Lgbi;->g:I

    if-ne p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Ldkp;->c:Ljava/lang/String;

    const-string v1, "phone_verification_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Ldkp;->aj:Lhaw;

    const/16 v1, 0x895

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Lhax;->d()V

    .line 1158
    :goto_0
    invoke-virtual {p0}, Ldkp;->getActivity()Lba;

    move-result-object v1

    .line 1159
    if-eqz v1, :cond_0

    .line 1160
    const-string v0, "input_method"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1162
    const v2, 0x1020002

    .line 1163
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1162
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 178
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Ldkp;->aj:Lhaw;

    const/16 v1, 0x8ec

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Lhax;->d()V

    goto :goto_0
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Ldkp;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    .line 63
    invoke-interface {v0}, Lhpu;->a()I

    move-result v1

    .line 64
    iget-object v0, p0, Ldkp;->binder:Lilh;

    const-class v2, Lhba;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    iput-object v0, p0, Ldkp;->aj:Lhaw;

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Ldkp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone_number"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldkp;->d:Ljava/lang/String;

    .line 77
    sget v0, Laal;->oQ:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldkp;->b:Landroid/view/View;

    .line 78
    iget-object v0, p0, Ldkp;->b:Landroid/view/View;

    sget v1, Lgbi;->u:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldkp;->e:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Ldkp;->b:Landroid/view/View;

    sget v1, Lgbi;->o:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldkp;->f:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Ldkp;->b:Landroid/view/View;

    sget v1, Lgbi;->s:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldkp;->g:Landroid/view/View;

    .line 81
    iget-object v0, p0, Ldkp;->b:Landroid/view/View;

    sget v1, Lgbi;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldkp;->h:Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Ldkp;->getActivity()Lba;

    move-result-object v0

    sget v1, Lgbi;->f:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ldkp;->i:Landroid/widget/Button;

    .line 83
    if-nez p3, :cond_1

    .line 85
    iget-object v0, p0, Ldkp;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Ldkp;->i:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Ldkp;->c:Ljava/lang/String;

    .line 95
    :goto_0
    iget-object v0, p0, Ldkp;->b:Landroid/view/View;

    return-object v0

    .line 91
    :cond_1
    const-string v0, "verification_outcome"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldkp;->c:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ldkp;->a()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    const-string v0, "verification_outcome"

    iget-object v1, p0, Ldkp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Limg;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Limg;->onStart()V

    .line 101
    new-instance v0, Ldkq;

    invoke-direct {v0, p0}, Ldkq;-><init>(Ldkp;)V

    iput-object v0, p0, Ldkp;->a:Landroid/content/BroadcastReceiver;

    .line 111
    invoke-virtual {p0}, Ldkp;->getActivity()Lba;

    move-result-object v0

    invoke-static {v0}, Lfi;->a(Landroid/content/Context;)Lfi;

    move-result-object v0

    .line 112
    iget-object v1, p0, Ldkp;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "phone_verification_outcome"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lfi;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 114
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Ldkp;->getActivity()Lba;

    move-result-object v0

    invoke-static {v0}, Lfi;->a(Landroid/content/Context;)Lfi;

    move-result-object v0

    iget-object v1, p0, Ldkp;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lfi;->a(Landroid/content/BroadcastReceiver;)V

    .line 119
    invoke-super {p0}, Limg;->onStop()V

    .line 120
    return-void
.end method
