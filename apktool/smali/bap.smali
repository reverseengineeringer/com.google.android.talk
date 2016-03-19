.class public final Lbap;
.super Ldlv;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:I

.field d:Ljava/lang/String;

.field e:Landroid/widget/ProgressBar;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/content/BroadcastReceiver;

.field i:Lbba;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 70
    sget v0, Laal;->in:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Laen;->hA:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Laen;->hB:I

    aput v3, v1, v2

    invoke-direct {p0, v0, v1}, Ldlv;-><init>(I[I)V

    .line 71
    return-void
.end method

.method public static a(ZLjava/lang/String;)Lbap;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lbap;

    invoke-direct {v0}, Lbap;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v2, "callerid_from_promo_flow"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string v2, "callerid_current_sim_number"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v1}, Lbap;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    sget v0, Laal;->iN:I

    invoke-virtual {p0, v0}, Lbap;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lbap;->context:Lill;

    iget v1, p0, Lbap;->c:I

    .line 2043
    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "callerid_promo_shown"

    const/4 v2, 0x1

    .line 2044
    invoke-virtual {v0, v1, v2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 240
    invoke-super {p0, p1}, Ldlv;->a(I)V

    .line 241
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-object v0, p0, Lbap;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lbap;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 92
    iget-object v0, p0, Lbap;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iput v0, p0, Lbap;->c:I

    .line 93
    new-instance v0, Lbba;

    iget-object v1, p0, Lbap;->context:Lill;

    iget v2, p0, Lbap;->c:I

    invoke-direct {v0, v1, v2}, Lbba;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbap;->i:Lbba;

    .line 94
    iget v0, p0, Lbap;->c:I

    .line 95
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laal;->a(ILjava/lang/String;)Z

    move-result v1

    .line 97
    invoke-super {p0, p1, p2, p3}, Ldlv;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 98
    invoke-static {v2}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget v0, Laen;->hz:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbap;->f:Landroid/widget/TextView;

    .line 101
    sget v0, Laen;->hy:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbap;->g:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Lbap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "callerid_current_sim_number"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbap;->d:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lbap;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lbap;->context:Lill;

    iget-object v4, p0, Lbap;->context:Lill;

    sget v5, Laal;->iL:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lbap;->d:Ljava/lang/String;

    .line 108
    invoke-static {v7}, Lezm;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "android_caller_id"

    .line 1050
    const-string v8, "https://www.google.com/support/hangouts/?hl=%locale%"

    invoke-static {v8, v7}, Laal;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 109
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 106
    invoke-virtual {v4, v5, v6}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v0, v3, v4}, Laal;->a(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    sget v0, Laen;->hA:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbap;->a:Landroid/widget/Button;

    .line 111
    sget v0, Laen;->hB:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbap;->b:Landroid/widget/Button;

    .line 112
    sget v0, Laen;->hv:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lbap;->e:Landroid/widget/ProgressBar;

    .line 115
    iget-object v0, p0, Lbap;->b:Landroid/widget/Button;

    sget v3, Laal;->iE:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 116
    iget-object v0, p0, Lbap;->a:Landroid/widget/Button;

    sget v3, Laal;->iH:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 119
    sget v0, Laen;->hx:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    iget-object v3, p0, Lbap;->context:Lill;

    .line 121
    invoke-virtual {v3}, Lill;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laen;->hD:I

    .line 120
    invoke-static {v0, v3, v4}, Laal;->a(Landroid/widget/ImageView;Landroid/content/res/Resources;I)V

    .line 127
    invoke-virtual {p0}, Lbap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "callerid_from_promo_flow"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lbap;->i:Lbba;

    const/16 v3, 0x8cc

    invoke-virtual {v0, v3}, Lbba;->a(I)V

    .line 130
    if-eqz v1, :cond_0

    .line 131
    iget-object v0, p0, Lbap;->i:Lbba;

    const/16 v1, 0x8cd

    invoke-virtual {v0, v1}, Lbba;->a(I)V

    .line 134
    :cond_0
    iget-object v0, p0, Lbap;->b:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lbap;->a:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    invoke-virtual {p0}, Lbap;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->f()Lcj;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v3, Lbat;

    invoke-direct {v3, p0}, Lbat;-><init>(Lbap;)V

    invoke-virtual {v0, v10, v1, v3}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lfe;->u()V

    .line 146
    :goto_0
    sget v0, Laen;->hC:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    .line 147
    iget-object v3, p0, Lbap;->context:Lill;

    sget v4, Laal;->iF:I

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v1, p0, Lbap;->binder:Lilh;

    const-class v6, Lhpu;

    .line 148
    invoke-virtual {v1, v6}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpu;

    invoke-interface {v1}, Lhpu;->c()Lhqb;

    move-result-object v1

    const-string v6, "account_name"

    invoke-interface {v1, v6}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    .line 147
    invoke-virtual {v3, v4, v5}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v0, v9}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lbap;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lbap;->context:Lill;

    sget v3, Laal;->iN:I

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lbap;->d:Ljava/lang/String;

    .line 153
    invoke-static {v5}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 152
    invoke-virtual {v1, v3, v4}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lbap;->b:Landroid/widget/Button;

    new-instance v1, Lbaq;

    invoke-direct {v1, p0}, Lbaq;-><init>(Lbap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-object v2

    .line 142
    :cond_1
    iget-object v0, p0, Lbap;->a:Landroid/widget/Button;

    iget-object v1, p0, Lbap;->context:Lill;

    sget v3, Laal;->iG:I

    invoke-virtual {v1, v3}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Ldlv;->onPause()V

    .line 228
    iget-object v0, p0, Lbap;->context:Lill;

    invoke-static {v0}, Lfi;->a(Landroid/content/Context;)Lfi;

    move-result-object v0

    iget-object v1, p0, Lbap;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lfi;->a(Landroid/content/BroadcastReceiver;)V

    .line 229
    return-void
.end method
