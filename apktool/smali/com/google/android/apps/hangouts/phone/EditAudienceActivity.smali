.class public Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;
.super Lcbr;
.source "SourceFile"

# interfaces
.implements Lcau;
.implements Ldvx;


# instance fields
.field private final n:Lhpu;

.field private o:Lbfd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcbr;-><init>()V

    .line 38
    new-instance v0, Lhqo;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->A:Lilh;

    .line 39
    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->n:Lhpu;

    .line 45
    new-instance v0, Lepc;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->B:Lipg;

    invoke-direct {v0, p0, v1}, Lepc;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->A:Lilh;

    invoke-virtual {v0, v1}, Lepc;->b(Lilh;)Lepc;

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->finish()V

    .line 164
    return-void
.end method

.method public a(Ljava/lang/String;IZLihb;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 105
    if-eqz p3, :cond_0

    .line 106
    new-instance v0, Lcgu;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->o:Lbfd;

    .line 107
    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcgu;-><init>(Ljava/lang/String;I)V

    const-string v1, "conversation"

    .line 108
    invoke-virtual {v0, v1}, Lcgu;->a(Ljava/lang/String;)Lcgu;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Lcgu;->b(Ljava/lang/String;)Lcgu;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcgu;->a()Lcgs;

    move-result-object v0

    .line 113
    invoke-static {p0, p4}, Laal;->a(Landroid/content/Context;Lihb;)Ljava/util/ArrayList;

    move-result-object v1

    .line 115
    const/16 v3, 0x3d

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 116
    invoke-static/range {v0 .. v5}, Laal;->a(Lcgs;Ljava/util/ArrayList;ZIJ)Landroid/content/Intent;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    const-string v1, "new_conversation_created"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->setResult(ILandroid/content/Intent;)V

    .line 148
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    const-string v1, "new_conversation_created"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->finish()V

    .line 152
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->o:Lbfd;

    .line 130
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 129
    invoke-static {v0, p1, p2}, Laal;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 131
    new-instance v0, Laxj;

    invoke-direct {v0, p1, p2}, Laxj;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-boolean v2, v0, Laxj;->d:Z

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "opened_from_impression"

    const/4 v5, 0x0

    .line 136
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Laxj;->k:I

    .line 137
    const-string v3, "conversation_parameters"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "share_intent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 142
    if-eqz v0, :cond_1

    .line 143
    const-string v3, "conversation_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "share_intent"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->finish()V

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcbr;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ldvv;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 188
    invoke-virtual {p1}, Ldvv;->b()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1134
    :goto_0
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->o:Lbfd;

    .line 1930
    new-instance v1, Landroid/content/Intent;

    .line 2036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 1930
    const-class v3, Lcom/google/android/apps/hangouts/phone/CallContactPickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1931
    const-string v2, "com.google.android.apps.hangouts.voiceCallActionMode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1933
    if-eqz v0, :cond_0

    .line 1934
    const-string v2, "account_id"

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    return-void

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcbr;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    const/16 v0, 0x13ec

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 171
    const-string v0, "com.google.android.apps.hangouts.voiceCallActionInfo"

    .line 172
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ldvv;

    .line 173
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->b(Ldvv;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->a()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcbr;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->n:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->o:Lbfd;

    .line 54
    sget v0, Laal;->fD:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->C_()Lbg;

    move-result-object v4

    .line 57
    sget v0, Laen;->bM:I

    .line 58
    invoke-virtual {v4, v0}, Lbg;->a(I)Lav;

    move-result-object v0

    check-cast v0, Lcat;

    .line 59
    if-nez v0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbkw;

    .line 1075
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "conversation_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "edit_audience_mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ldhm;

    .line 1078
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "audience"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lihb;

    .line 1079
    const-class v3, Lccu;

    invoke-static {p0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccu;

    .line 1080
    invoke-interface {v3, v0, v5, v1, v2}, Lccu;->a(Lbkw;Ljava/lang/String;Ldhm;Lihb;)Lcat;

    move-result-object v0

    .line 61
    invoke-virtual {v4}, Lbg;->a()Lbz;

    move-result-object v1

    sget v2, Laen;->bM:I

    const-class v3, Lcat;

    .line 65
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v1, v2, v0, v3}, Lbz;->a(ILav;Ljava/lang/String;)Lbz;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lbz;->b()I

    .line 68
    :cond_0
    invoke-virtual {v0, p0}, Lcat;->a(Lcau;)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcbr;->onStart()V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/EditAudienceActivity;->g()Lqe;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqe;->a(Z)V

    .line 91
    :cond_0
    return-void
.end method
