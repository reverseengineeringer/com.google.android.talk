.class public final Lctb;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lcsv;
.implements Liam;


# instance fields
.field private a:Liad;

.field private b:Lhpz;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Limg;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lctb;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 186
    invoke-virtual {p0}, Lctb;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lctb;->c:I

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 6892
    sget-boolean v2, Lbff;->a:Z

    if-eqz v2, :cond_0

    .line 6896
    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x31

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "setGmailChatArchiveEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enableArchive: true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6901
    :cond_0
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v2

    const/4 v3, 0x6

    .line 6900
    invoke-static {v2, v3, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IIZ)I

    .line 6904
    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 6905
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "chat_archive_enabled"

    .line 6906
    invoke-virtual {v0, v1, v5}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 6907
    invoke-virtual {v0}, Lhqc;->d()I

    .line 190
    iget-object v0, p0, Lctb;->b:Lhpz;

    iget v1, p0, Lctb;->c:I

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lctb;->a:Liad;

    const-string v2, "account_name"

    .line 192
    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "effective_gaia_id"

    .line 193
    invoke-interface {v0, v3}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-interface {v1, v2, v0}, Liad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 152
    iput p1, p0, Lctb;->c:I

    .line 153
    iget-object v0, p0, Lctb;->binder:Lilh;

    const-class v1, Leot;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    invoke-interface {v0, p1}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lctb;->a:Liad;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->sd:I

    invoke-virtual {p0, v1}, Lctb;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot login SMS only account"

    invoke-interface {v0, v1, v2}, Liad;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lctb;->b:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcta;->d(Lhqb;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2028
    invoke-static {v0}, Lcta;->b(Lhqb;)Z

    move-result v1

    .line 1171
    if-nez v1, :cond_2

    .line 3028
    invoke-static {v0}, Lcta;->a(Lhqb;)Z

    move-result v1

    .line 1171
    if-eqz v1, :cond_2

    .line 1173
    iget-object v0, p0, Lctb;->context:Lill;

    invoke-virtual {p0}, Lctb;->getChildFragmentManager()Lbg;

    move-result-object v1

    .line 4021
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4022
    const-string v3, "title"

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->hd:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    const-string v3, "message"

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->hb:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4024
    const-string v3, "positive"

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->hc:I

    .line 4025
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4024
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    new-instance v0, Lcsu;

    invoke-direct {v0}, Lcsu;-><init>()V

    .line 4028
    invoke-virtual {v0, v2}, Lcsu;->setArguments(Landroid/os/Bundle;)V

    .line 4029
    const-string v2, "archive_tos"

    invoke-virtual {v0, v1, v2}, Lcsu;->a(Lbg;Ljava/lang/String;)V

    .line 1175
    :cond_1
    :goto_0
    return-void

    .line 5028
    :cond_2
    invoke-static {v0}, Lcta;->a(Lhqb;)Z

    move-result v1

    .line 1174
    if-nez v1, :cond_3

    .line 1175
    iget-object v0, p0, Lctb;->context:Lill;

    invoke-virtual {p0}, Lctb;->getChildFragmentManager()Lbg;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hh:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->hg:I

    invoke-static {v0, v1, v2, v3}, Lcst;->a(Landroid/content/Context;Lbg;II)V

    goto :goto_0

    .line 6028
    :cond_3
    invoke-static {v0}, Lcta;->c(Lhqb;)Z

    move-result v0

    .line 1177
    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lctb;->context:Lill;

    invoke-virtual {p0}, Lctb;->getChildFragmentManager()Lbg;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hj:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->hi:I

    invoke-static {v0, v1, v2, v3}, Lcst;->a(Landroid/content/Context;Lbg;II)V

    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lctb;->a:Liad;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->sd:I

    invoke-virtual {p0, v1}, Lctb;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Account upgrade without OOBE"

    invoke-interface {v0, v1, v2}, Liad;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lctb;->a:Liad;

    invoke-interface {v0}, Liad;->c()V

    .line 199
    return-void
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lctb;->binder:Lilh;

    const-class v1, Lhpz;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lctb;->b:Lhpz;

    .line 125
    iget-object v0, p0, Lctb;->binder:Lilh;

    const-class v1, Liad;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liad;

    iput-object v0, p0, Lctb;->a:Liad;

    .line 127
    iget-object v0, p0, Lctb;->binder:Lilh;

    const-class v1, Lcsv;

    invoke-virtual {v0, v1, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1}, Limg;->onCreate(Landroid/os/Bundle;)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string v0, "account_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lctb;->c:I

    .line 137
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Limg;->onDestroy()V

    .line 148
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Limg;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "account_id"

    iget v1, p0, Lctb;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    return-void
.end method
