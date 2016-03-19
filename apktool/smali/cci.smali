.class public final Lcci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcad;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/InvitationFragment;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcci;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 523
    iget-object v0, p0, Lcci;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 1071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->b:Lhpu;

    .line 524
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iget-object v1, p0, Lcci;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 2071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->c:Ljava/lang/String;

    .line 524
    const/4 v2, 0x0

    .line 523
    invoke-static {v0, v1, v2, p2, p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;ZZZ)I

    .line 525
    if-eqz p1, :cond_0

    .line 526
    iget-object v0, p0, Lcci;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 3071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->b:Lhpu;

    .line 527
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iget-object v1, p0, Lcci;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 4071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->d:Lczb;

    .line 528
    iget-object v1, v1, Lczb;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcci;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 5071
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->e:Ljava/lang/String;

    move v5, v4

    .line 526
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 534
    :cond_0
    iget-object v0, p0, Lcci;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 6071
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->a:Lccj;

    .line 534
    iget-object v1, p0, Lcci;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 7071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->c:Ljava/lang/String;

    .line 534
    invoke-interface {v0}, Lccj;->D_()V

    .line 535
    return-void
.end method
