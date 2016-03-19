.class final Lcqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcqb;


# direct methods
.method constructor <init>(Lcqb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcqd;->b:Lcqb;

    iput-object p2, p0, Lcqd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcqd;->b:Lcqb;

    invoke-virtual {v0}, Lcqb;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcqd;->b:Lcqb;

    invoke-virtual {v0}, Lcqb;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcqd;->b:Lcqb;

    .line 1043
    iget-object v0, v0, Lcqb;->an:Lilh;

    .line 179
    const-class v2, Lawo;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lawo;

    .line 180
    iget-object v0, p0, Lcqd;->b:Lcqb;

    .line 2043
    iget-object v0, v0, Lcqb;->aj:Lhpu;

    .line 180
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 181
    invoke-interface {v2, v0}, Lawo;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lcqd;->a:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v1

    .line 183
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    :goto_0
    iget-object v1, p0, Lcqd;->b:Lcqb;

    invoke-virtual {v1}, Lcqb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcqd;->b:Lcqb;

    .line 188
    invoke-virtual {v0}, Lcqb;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcqd;->a:Ljava/lang/String;

    .line 187
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/invites/offnetwork/impl/OffnetworkInviteActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
