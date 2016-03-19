.class public final Lekk;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lija;


# instance fields
.field a:Lbfd;

.field b:Liip;

.field private c:Lhpu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Limg;-><init>()V

    .line 40
    new-instance v0, Liiz;

    iget-object v1, p0, Lekk;->lifecycle:Linz;

    invoke-direct {v0, p0, v1}, Liiz;-><init>(Lija;Liog;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 51
    iget-object v0, p0, Lekk;->c:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Lekk;->a:Lbfd;

    .line 52
    iget-object v0, p0, Lekk;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->R()Z

    move-result v10

    .line 54
    new-instance v2, Liji;

    iget-object v0, p0, Lekk;->context:Lill;

    invoke-direct {v2, v0}, Liji;-><init>(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lekk;->binder:Lilh;

    const-class v1, Ldty;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldty;

    .line 58
    iget-object v1, p0, Lekk;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->x()Z

    move-result v11

    .line 59
    iget-object v1, p0, Lekk;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->w()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v11, :cond_6

    :cond_0
    move v3, v7

    .line 60
    :goto_0
    iget-object v1, p0, Lekk;->context:Lill;

    iget-object v8, p0, Lekk;->a:Lbfd;

    invoke-interface {v0, v1, v8}, Ldty;->a(Landroid/content/Context;Lbfd;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lekk;->a:Lbfd;

    .line 61
    invoke-virtual {v1}, Lbfd;->t()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v8, p0, Lekk;->a:Lbfd;

    .line 1146
    iget-object v1, p0, Lekk;->context:Lill;

    const-class v9, Lawp;

    invoke-static {v1, v9}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawp;

    .line 1147
    if-eqz v1, :cond_1

    invoke-virtual {v8}, Lbfd;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lawp;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1
    move v1, v7

    .line 61
    :goto_1
    if-eqz v1, :cond_8

    move v9, v7

    .line 63
    :goto_2
    if-nez v3, :cond_2

    if-eqz v9, :cond_5

    .line 64
    :cond_2
    const-string v1, ""

    .line 65
    iget-object v8, p0, Lekk;->a:Lbfd;

    invoke-virtual {v8}, Lbfd;->v()Ljava/lang/String;

    move-result-object v8

    .line 66
    if-eqz v8, :cond_c

    .line 67
    invoke-static {v8}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 69
    :goto_3
    if-eqz v10, :cond_9

    .line 70
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->rU:I

    .line 71
    :goto_4
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v5

    .line 70
    invoke-virtual {p0, v1, v7}, Lekk;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v2, v1}, Liji;->b(Ljava/lang/CharSequence;)Lcom/google/android/libraries/social/settings/PreferenceCategory;

    move-result-object v8

    .line 74
    if-eqz v9, :cond_3

    .line 76
    invoke-virtual {p0}, Lekk;->getActivity()Lba;

    move-result-object v1

    iget-object v5, p0, Lekk;->a:Lbfd;

    invoke-interface {v0, v1, v5}, Ldty;->b(Landroid/content/Context;Lbfd;)Z

    move-result v0

    .line 77
    new-instance v1, Liip;

    iget-object v5, p0, Lekk;->context:Lill;

    iget-object v7, p0, Lekk;->c:Lhpu;

    .line 78
    invoke-interface {v7}, Lhpu;->a()I

    move-result v7

    sget v9, Lcom/google/android/apps/hangouts/hangout/StressMode;->cm:I

    .line 79
    invoke-virtual {p0, v9}, Lekk;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v5, v7, v9}, Liip;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 80
    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->cn:I

    invoke-virtual {v1, v5}, Liip;->g(I)V

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Liip;->b(Ljava/lang/Object;)V

    .line 82
    new-instance v0, Lekl;

    invoke-direct {v0, p0}, Lekl;-><init>(Lekk;)V

    invoke-virtual {v1, v0}, Liip;->a(Lijg;)V

    .line 89
    invoke-virtual {v8, v1}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 93
    :cond_3
    if-eqz v3, :cond_5

    .line 101
    invoke-virtual {p0}, Lekk;->getActivity()Lba;

    move-result-object v0

    invoke-static {v0}, Lijs;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    const-string v1, "gv_sms"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gv_sms"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    :cond_4
    new-instance v0, Liip;

    iget-object v1, p0, Lekk;->context:Lill;

    iget-object v3, p0, Lekk;->c:Lhpu;

    .line 106
    invoke-interface {v3}, Lhpu;->a()I

    move-result v3

    const-string v5, "gv_sms"

    .line 108
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v0, v1, v3, v5, v7}, Liip;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lekk;->b:Liip;

    .line 109
    iget-object v0, p0, Lekk;->b:Liip;

    const-string v1, "gv_sms"

    invoke-virtual {v0, v1}, Liip;->c(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lekk;->b:Liip;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->cp:I

    invoke-virtual {v0, v1}, Liip;->g(I)V

    .line 111
    iget-object v0, p0, Lekk;->b:Liip;

    invoke-virtual {v8, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 112
    iget-object v0, p0, Lekk;->b:Liip;

    new-instance v1, Lekm;

    invoke-direct {v1, p0}, Lekm;-><init>(Lekk;)V

    invoke-virtual {v0, v1}, Liip;->a(Lijg;)V

    .line 120
    iget-object v0, p0, Lekk;->context:Lill;

    iget-object v1, p0, Lekk;->lifecycle:Linz;

    if-eqz v10, :cond_a

    .line 122
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->sb:I

    .line 123
    :goto_5
    const-string v5, "gv_sms_sound_key"

    const-string v7, "gv_sms_vibrate_boolean_key"

    .line 121
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/hangouts/settings/NotificationSettingsActivity;->a(Landroid/content/Context;Liog;Liji;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lijc;

    move-result-object v0

    .line 128
    invoke-virtual {v8, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 129
    const-string v1, "gv_sms"

    invoke-virtual {v0, v1}, Lijc;->e(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lekk;->context:Lill;

    iget-object v1, p0, Lekk;->lifecycle:Linz;

    if-eqz v10, :cond_b

    .line 133
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->sc:I

    .line 134
    :goto_6
    const-string v5, "gv_voicemail_sound_key"

    const-string v7, "gv_voicemail_vibrate_boolean_key"

    .line 132
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/hangouts/settings/NotificationSettingsActivity;->a(Landroid/content/Context;Liog;Liji;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lijc;

    move-result-object v0

    .line 139
    invoke-virtual {v8, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 140
    const-string v1, "gv_sms"

    invoke-virtual {v0, v1}, Lijc;->e(Ljava/lang/String;)V

    .line 143
    :cond_5
    return-void

    :cond_6
    move v3, v5

    .line 59
    goto/16 :goto_0

    :cond_7
    move v1, v5

    .line 1147
    goto/16 :goto_1

    :cond_8
    move v9, v5

    .line 61
    goto/16 :goto_2

    .line 71
    :cond_9
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->cq:I

    goto/16 :goto_4

    .line 123
    :cond_a
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->cr:I

    goto :goto_5

    .line 134
    :cond_b
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->cs:I

    goto :goto_6

    :cond_c
    move-object v8, v1

    goto/16 :goto_3
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lekk;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lekk;->c:Lhpu;

    .line 47
    return-void
.end method
