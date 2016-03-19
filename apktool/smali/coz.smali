.class final Lcoz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcad;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcoy;


# direct methods
.method constructor <init>(Lcoy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcoz;->b:Lcoy;

    iput-object p2, p0, Lcoz;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 280
    iget-object v0, p0, Lcoz;->b:Lcoy;

    iget-object v0, v0, Lcoy;->b:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;

    iget v0, v0, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;->f:I

    iget-object v1, p0, Lcoz;->b:Lcoy;

    iget-object v1, v1, Lcoy;->b:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;

    .line 1047
    iget-object v1, v1, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;->a:Ljava/lang/String;

    .line 281
    const/4 v2, 0x0

    .line 280
    invoke-static {v0, v1, v2, p2, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;ZZZ)I

    .line 282
    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p0, Lcoz;->b:Lcoy;

    iget-object v0, v0, Lcoy;->b:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;

    iget v0, v0, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;->f:I

    iget-object v1, p0, Lcoz;->b:Lcoy;

    iget-object v1, v1, Lcoy;->b:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;

    .line 2047
    iget-object v1, v1, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;->e:Ljava/lang/String;

    .line 285
    const/4 v2, 0x0

    iget-object v3, p0, Lcoz;->a:Ljava/lang/String;

    move v5, v4

    .line 283
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 291
    :cond_0
    iget-object v0, p0, Lcoz;->b:Lcoy;

    iget-object v0, v0, Lcoy;->b:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;

    .line 3047
    iget-object v0, v0, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;->d:Lcpa;

    .line 291
    invoke-virtual {v0}, Lcpa;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "INVITE_IGNORED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcoz;->b:Lcoy;

    iget-object v1, v1, Lcoy;->b:Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/invites/conversationinvitelist/impl/InviteItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfi;->a(Landroid/content/Context;)Lfi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfi;->a(Landroid/content/Intent;)Z

    .line 296
    :cond_1
    return-void
.end method
