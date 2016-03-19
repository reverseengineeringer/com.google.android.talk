.class public final Leju;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lija;


# instance fields
.field a:Lbfd;

.field b:Lejr;

.field private c:Lhpu;

.field private d:Lelm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Limg;-><init>()V

    .line 56
    new-instance v0, Liiz;

    iget-object v1, p0, Leju;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Liiz;-><init>(Lija;Liog;)V

    .line 57
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 117
    new-instance v1, Liji;

    iget-object v0, p0, Leju;->context:Lill;

    invoke-direct {v1, v0}, Liji;-><init>(Landroid/content/Context;)V

    .line 118
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ch:I

    .line 119
    invoke-virtual {v1, v0}, Liji;->a(I)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v2

    .line 122
    iget-object v0, p0, Leju;->a:Lbfd;

    sget-object v3, Lbhh;->e:Lbhh;

    invoke-static {v0, v3}, Laal;->a(Lbfd;Lbhh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lejr;

    iget-object v3, p0, Leju;->context:Lill;

    invoke-direct {v0, v3}, Lejr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leju;->b:Lejr;

    .line 124
    iget-object v0, p0, Leju;->b:Lejr;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->aa:I

    invoke-virtual {v0, v3}, Lejr;->g(I)V

    .line 125
    iget-object v0, p0, Leju;->b:Lejr;

    new-instance v3, Lejx;

    invoke-direct {v3, p0}, Lejx;-><init>(Leju;)V

    invoke-virtual {v0, v3}, Lejr;->a(Lijh;)V

    .line 134
    iget-object v0, p0, Leju;->b:Lejr;

    iget-object v3, p0, Leju;->a:Lbfd;

    invoke-virtual {v3}, Lbfd;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leju;->a:Lbfd;

    invoke-virtual {v0, v3, v4}, Lejr;->a(Ljava/lang/String;Lbfd;)V

    .line 135
    iget-object v0, p0, Leju;->b:Lejr;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 136
    iget-object v0, p0, Leju;->b:Lejr;

    invoke-virtual {v0}, Lejr;->C()Lijs;

    move-result-object v0

    new-instance v3, Lejz;

    .line 2188
    invoke-direct {v3, p0}, Lejz;-><init>(Leju;)V

    .line 137
    invoke-virtual {v0, v3}, Lijs;->a(Liju;)V

    .line 142
    :cond_0
    iget-object v0, p0, Leju;->binder:Lilh;

    const-class v3, Leot;

    invoke-virtual {v0, v3}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 143
    iget-object v3, p0, Leju;->c:Lhpu;

    invoke-interface {v3}, Lhpu;->a()I

    move-result v3

    .line 144
    iget-object v4, p0, Leju;->context:Lill;

    const-string v5, "babel_richstatus"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    invoke-interface {v0, v3}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Leju;->context:Lill;

    const-class v5, Lcom/google/android/apps/hangouts/settings/RichStatusSettingsActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v0, "account_id"

    iget-object v5, p0, Leju;->c:Lhpu;

    invoke-interface {v5}, Lhpu;->a()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jb:I

    invoke-virtual {p0, v0}, Leju;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 153
    iget-object v0, p0, Leju;->d:Lelm;

    invoke-virtual {v0, v3}, Lelm;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leju;->d:Lelm;

    .line 154
    invoke-virtual {v0, v3}, Lelm;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    :cond_1
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->kg:I

    invoke-virtual {p0, v0}, Leju;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    invoke-virtual {v1, v5, v0, v4}, Liji;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)Lijc;

    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 165
    :cond_2
    iget-object v0, p0, Leju;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leju;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const-string v0, "is_business_features_enabled"

    .line 167
    new-instance v4, Liip;

    iget-object v5, p0, Leju;->context:Lill;

    invoke-direct {v4, v5, v3, v0}, Liip;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 168
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->L:I

    invoke-virtual {v4, v3}, Like;->g(I)V

    .line 169
    iget-object v3, p0, Leju;->c:Lhpu;

    invoke-interface {v3}, Lhpu;->c()Lhqb;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Like;->b(Ljava/lang/Object;)V

    .line 170
    new-instance v0, Lejy;

    invoke-direct {v0, p0}, Lejy;-><init>(Leju;)V

    invoke-virtual {v4, v0}, Like;->a(Lijg;)V

    .line 178
    invoke-virtual {v2, v4}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 180
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->K:I

    .line 181
    invoke-virtual {p0, v0}, Leju;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0}, Leju;->getActivity()Lba;

    move-result-object v4

    invoke-static {v4}, Laal;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v4

    .line 180
    invoke-virtual {v1, v0, v3, v4}, Liji;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)Lijc;

    move-result-object v0

    .line 184
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 186
    :cond_3
    return-void

    .line 157
    :cond_4
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->kf:I

    invoke-virtual {p0, v0}, Leju;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b()Landroid/app/AlertDialog;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v4, 0x43200000    # 160.0f

    .line 76
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    const/high16 v1, 0x41200000    # 10.0f

    iget-object v2, p0, Leju;->context:Lill;

    invoke-virtual {v2}, Lill;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 79
    const/high16 v2, 0x41c80000    # 25.0f

    iget-object v3, p0, Leju;->context:Lill;

    invoke-virtual {v3}, Lill;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 80
    invoke-virtual {v0, v2, v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Leju;->context:Lill;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Leju;->context:Lill;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    const-string v3, "https://support.google.com/hangouts/?p=profile_photo"

    const-string v4, "profile_photo"

    invoke-static {v3, v4}, Laal;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 85
    iget-object v4, p0, Leju;->context:Lill;

    iget-object v5, p0, Leju;->context:Lill;

    sget v6, Lcom/google/android/apps/hangouts/hangout/StressMode;->Y:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 89
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    .line 88
    invoke-virtual {v5, v6, v7}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v2, v4, v3}, Laal;->a(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Leju;->context:Lill;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->aa:I

    .line 92
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->X:I

    new-instance v2, Lejw;

    invoke-direct {v2, p0}, Lejw;-><init>(Leju;)V

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->Z:I

    new-instance v2, Lejv;

    invoke-direct {v2, p0}, Lejv;-><init>(Leju;)V

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Leju;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Leju;->c:Lhpu;

    .line 63
    iget-object v0, p0, Leju;->binder:Lilh;

    const-class v1, Lelm;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lelm;

    iput-object v0, p0, Leju;->d:Lelm;

    .line 64
    iget-object v0, p0, Leju;->lifecycle:Linz;

    new-instance v1, Lejz;

    .line 1188
    invoke-direct {v1, p0}, Lejz;-><init>(Leju;)V

    .line 64
    invoke-virtual {v0, v1}, Linz;->a(Lioz;)Lioz;

    .line 66
    iget-object v0, p0, Leju;->c:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Leju;->a:Lbfd;

    .line 67
    return-void
.end method
