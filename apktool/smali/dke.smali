.class public final Ldke;
.super Ldlv;
.source "SourceFile"


# instance fields
.field a:Ldkj;

.field private aj:Z

.field private ak:Ljava/lang/String;

.field private al:Lbfd;

.field b:Ldkr;

.field c:Ldkp;

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 50
    sget v0, Laal;->oM:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lgbi;->f:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lgbi;->g:I

    aput v3, v1, v2

    invoke-direct {p0, v0, v1}, Ldlv;-><init>(I[I)V

    .line 52
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 118
    invoke-virtual {p0}, Ldke;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->C_()Lbg;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    .line 121
    iget v1, p0, Ldke;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 122
    iget-boolean v1, p0, Ldke;->h:Z

    iget-boolean v2, p0, Ldke;->aj:Z

    .line 2067
    new-instance v3, Ldkj;

    invoke-direct {v3}, Ldkj;-><init>()V

    .line 2068
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2069
    const-string v5, "from_settings"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2070
    const-string v1, "set_discoverability"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2071
    invoke-virtual {v3, v4}, Ldkj;->setArguments(Landroid/os/Bundle;)V

    .line 122
    iput-object v3, p0, Ldke;->a:Ldkj;

    .line 123
    sget v1, Lgbi;->j:I

    iget-object v2, p0, Ldke;->a:Ldkj;

    invoke-virtual {v0, v1, v2}, Lbz;->b(ILav;)Lbz;

    .line 132
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lbz;->b()I

    .line 133
    invoke-direct {p0}, Ldke;->c()V

    .line 134
    return-void

    .line 124
    :cond_1
    iget v1, p0, Ldke;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 125
    iget-object v1, p0, Ldke;->i:Ljava/lang/String;

    iget-boolean v2, p0, Ldke;->aj:Z

    .line 3048
    new-instance v3, Ldkr;

    invoke-direct {v3}, Ldkr;-><init>()V

    .line 3049
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3050
    const-string v5, "set_discoverability"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3051
    const-string v2, "phone_number"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    invoke-virtual {v3, v4}, Ldkr;->setArguments(Landroid/os/Bundle;)V

    .line 125
    iput-object v3, p0, Ldke;->b:Ldkr;

    .line 126
    sget v1, Lgbi;->j:I

    iget-object v2, p0, Ldke;->b:Ldkr;

    invoke-virtual {v0, v1, v2}, Lbz;->b(ILav;)Lbz;

    goto :goto_0

    .line 127
    :cond_2
    iget v1, p0, Ldke;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Ldke;->i:Ljava/lang/String;

    .line 4052
    new-instance v2, Ldkp;

    invoke-direct {v2}, Ldkp;-><init>()V

    .line 4053
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4054
    const-string v4, "phone_number"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4055
    invoke-virtual {v2, v3}, Ldkp;->setArguments(Landroid/os/Bundle;)V

    .line 128
    iput-object v2, p0, Ldke;->c:Ldkp;

    .line 129
    sget v1, Lgbi;->j:I

    iget-object v2, p0, Ldke;->c:Ldkp;

    invoke-virtual {v0, v1, v2}, Lbz;->b(ILav;)Lbz;

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 161
    iget-object v0, p0, Ldke;->e:Landroid/view/View;

    sget v1, Lgbi;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    .line 162
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->setVisibility(I)V

    .line 164
    iget v1, p0, Ldke;->d:I

    if-ne v1, v3, :cond_2

    .line 166
    invoke-virtual {p0}, Ldke;->getActivity()Lba;

    move-result-object v1

    sget v2, Laal;->pb:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ldke;->ak:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lba;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v0, v5}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->setVisibility(I)V

    .line 168
    iget-boolean v0, p0, Ldke;->h:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Ldke;->g:Landroid/widget/Button;

    sget v1, Laal;->oS:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 173
    :goto_0
    iget-object v0, p0, Ldke;->f:Landroid/widget/Button;

    sget v1, Laal;->oU:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 180
    :cond_0
    :goto_1
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Ldke;->g:Landroid/widget/Button;

    sget v1, Laal;->pc:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 174
    :cond_2
    iget v0, p0, Ldke;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 175
    iget-object v0, p0, Ldke;->g:Landroid/widget/Button;

    sget v1, Laal;->oS:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 176
    iget-object v0, p0, Ldke;->f:Landroid/widget/Button;

    sget v1, Laal;->pf:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 177
    :cond_3
    iget v0, p0, Ldke;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Ldke;->f:Landroid/widget/Button;

    sget v1, Laal;->oX:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Ldke;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 185
    sget v0, Laal;->oY:I

    invoke-virtual {p0, v0}, Ldke;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget v0, p0, Ldke;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 187
    sget v0, Laal;->oT:I

    invoke-virtual {p0, v0}, Ldke;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    iget v0, p0, Ldke;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 189
    sget v0, Laal;->pg:I

    invoke-virtual {p0, v0}, Ldke;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method protected a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 195
    iget v0, p0, Ldke;->d:I

    if-ne v0, v2, :cond_4

    .line 4205
    sget v0, Lgbi;->g:I

    if-ne p1, v0, :cond_2

    .line 4206
    iget-object v0, p0, Ldke;->a:Ldkj;

    invoke-virtual {v0, p1}, Ldkj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4207
    iget-object v0, p0, Ldke;->a:Ldkj;

    invoke-virtual {v0}, Ldkj;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldke;->i:Ljava/lang/String;

    .line 4208
    iput v1, p0, Ldke;->d:I

    .line 4210
    :cond_0
    invoke-direct {p0}, Ldke;->b()V

    .line 4249
    :cond_1
    :goto_0
    return-void

    .line 4211
    :cond_2
    sget v0, Lgbi;->f:I

    if-ne p1, v0, :cond_1

    .line 4213
    invoke-virtual {p0}, Ldke;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldke;->al:Lbfd;

    invoke-static {v0, v1}, Lbff;->d(Landroid/content/Context;Lbfd;)V

    .line 4214
    iget-boolean v0, p0, Ldke;->h:Z

    if-eqz v0, :cond_3

    .line 4215
    invoke-virtual {p0}, Ldke;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->finish()V

    goto :goto_0

    .line 4217
    :cond_3
    iget-object v0, p0, Ldke;->al:Lbfd;

    const/16 v1, 0xa7c

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 4219
    invoke-super {p0, p1}, Ldlv;->a(I)V

    goto :goto_0

    .line 197
    :cond_4
    iget v0, p0, Ldke;->d:I

    if-ne v0, v1, :cond_6

    .line 4225
    sget v0, Lgbi;->g:I

    if-ne p1, v0, :cond_5

    .line 4226
    iget-object v0, p0, Ldke;->b:Ldkr;

    invoke-virtual {v0, p1}, Ldkr;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4228
    invoke-virtual {p0}, Ldke;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldke;->al:Lbfd;

    invoke-static {v0, v1}, Lbff;->d(Landroid/content/Context;Lbfd;)V

    .line 4229
    iput v3, p0, Ldke;->d:I

    .line 4230
    invoke-direct {p0}, Ldke;->b()V

    goto :goto_0

    .line 4232
    :cond_5
    sget v0, Lgbi;->f:I

    if-ne p1, v0, :cond_1

    .line 4233
    iget-object v0, p0, Ldke;->al:Lbfd;

    const/16 v1, 0x967

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 4235
    iput v2, p0, Ldke;->d:I

    .line 4236
    invoke-direct {p0}, Ldke;->b()V

    goto :goto_0

    .line 199
    :cond_6
    iget v0, p0, Ldke;->d:I

    if-ne v0, v3, :cond_1

    .line 4241
    sget v0, Lgbi;->g:I

    if-ne p1, v0, :cond_8

    .line 4242
    iget-object v0, p0, Ldke;->c:Ldkp;

    invoke-virtual {v0, p1}, Ldkp;->a(I)V

    .line 4245
    iput v2, p0, Ldke;->d:I

    .line 4246
    iget-boolean v0, p0, Ldke;->h:Z

    if-eqz v0, :cond_7

    .line 4247
    invoke-virtual {p0}, Ldke;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->finish()V

    goto :goto_0

    .line 4249
    :cond_7
    invoke-super {p0, p1}, Ldlv;->a(I)V

    goto :goto_0

    .line 4251
    :cond_8
    sget v0, Lgbi;->f:I

    if-ne p1, v0, :cond_1

    .line 4252
    iput v1, p0, Ldke;->d:I

    .line 4253
    invoke-direct {p0}, Ldke;->b()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 78
    if-eqz p3, :cond_1

    move-object v0, p3

    .line 79
    :goto_0
    const-string v1, "current_step"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ldke;->d:I

    .line 80
    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldke;->i:Ljava/lang/String;

    .line 81
    const-string v1, "from_settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Ldke;->h:Z

    .line 82
    const-string v1, "set_discoverability"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ldke;->aj:Z

    .line 84
    iget-object v0, p0, Ldke;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    .line 85
    invoke-interface {v0}, Lhpu;->a()I

    move-result v1

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    iput-object v1, p0, Ldke;->al:Lbfd;

    .line 86
    invoke-interface {v0}, Lhpu;->c()Lhqb;

    move-result-object v0

    const-string v1, "account_name"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldke;->ak:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Ldke;->binder:Lilh;

    const-class v1, Ldjw;

    invoke-virtual {v0, v1}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjw;

    .line 91
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldjw;->b()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    if-nez p3, :cond_0

    .line 93
    iput v3, p0, Ldke;->d:I

    .line 94
    invoke-virtual {v0}, Ldjw;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldke;->i:Ljava/lang/String;

    .line 97
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldlv;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldke;->e:Landroid/view/View;

    .line 98
    iget-object v0, p0, Ldke;->e:Landroid/view/View;

    sget v1, Lgbi;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ldke;->g:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Ldke;->e:Landroid/view/View;

    sget v1, Lgbi;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ldke;->f:Landroid/widget/Button;

    .line 104
    if-nez p3, :cond_2

    .line 105
    invoke-direct {p0}, Ldke;->b()V

    .line 110
    :goto_1
    iget-object v0, p0, Ldke;->e:Landroid/view/View;

    return-object v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Ldke;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 1141
    :cond_2
    invoke-virtual {p0}, Ldke;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->C_()Lbg;

    move-result-object v0

    .line 1143
    iget v1, p0, Ldke;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1144
    sget v1, Lgbi;->j:I

    .line 1145
    invoke-virtual {v0, v1}, Lbg;->a(I)Lav;

    move-result-object v0

    check-cast v0, Ldkj;

    iput-object v0, p0, Ldke;->a:Ldkj;

    .line 1154
    :cond_3
    :goto_2
    invoke-direct {p0}, Ldke;->c()V

    goto :goto_1

    .line 1146
    :cond_4
    iget v1, p0, Ldke;->d:I

    if-ne v1, v3, :cond_5

    .line 1147
    sget v1, Lgbi;->j:I

    .line 1148
    invoke-virtual {v0, v1}, Lbg;->a(I)Lav;

    move-result-object v0

    check-cast v0, Ldkr;

    iput-object v0, p0, Ldke;->b:Ldkr;

    goto :goto_2

    .line 1149
    :cond_5
    iget v1, p0, Ldke;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1150
    sget v1, Lgbi;->j:I

    .line 1151
    invoke-virtual {v0, v1}, Lbg;->a(I)Lav;

    move-result-object v0

    check-cast v0, Ldkp;

    iput-object v0, p0, Ldke;->c:Ldkp;

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    const-string v0, "current_step"

    iget v1, p0, Ldke;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v0, "phone_number"

    iget-object v1, p0, Ldke;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "from_settings"

    iget-boolean v1, p0, Ldke;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    const-string v0, "set_discoverability"

    iget-boolean v1, p0, Ldke;->aj:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    invoke-super {p0, p1}, Ldlv;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
