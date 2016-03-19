.class public final Lfbc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;)V
    .locals 0

    .prologue
    .line 9071
    iput-object p1, p0, Lfbc;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfbb;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1074
    iget-object v0, p0, Lfbc;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 2043
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->a()V

    .line 1075
    invoke-virtual {p1}, Lfbb;->b()Ljava/lang/String;

    move-result-object v3

    .line 1076
    if-nez v3, :cond_0

    .line 1077
    iget-object v0, p0, Lfbc;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 3043
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->context:Lill;

    .line 1078
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->iI:I

    .line 1077
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1100
    :goto_0
    return-void

    .line 1082
    :cond_0
    invoke-virtual {p1}, Lfbb;->a()Lczb;

    move-result-object v6

    .line 1085
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v1

    .line 1086
    iget-object v0, p0, Lfbc;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 4043
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->binder:Lilh;

    .line 1086
    const-class v2, Leot;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    iget-object v2, p0, Lfbc;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 5043
    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->a:Lbfd;

    .line 1086
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-interface {v0, v2}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 1088
    :cond_1
    iget-object v0, p0, Lfbc;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 6043
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->a:Lbfd;

    .line 1090
    :cond_2
    iget-object v0, p0, Lfbc;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 7043
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->d:Lhpu;

    .line 1092
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iget-object v1, v6, Lczb;->a:Ljava/lang/String;

    iget-object v2, v6, Lczb;->b:Ljava/lang/String;

    move v5, v4

    .line 1091
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1098
    iget-object v1, p0, Lfbc;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 8043
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->e:Lif;

    .line 1098
    new-instance v2, Lbye;

    invoke-direct {v2, v6, v3}, Lbye;-><init>(Lczb;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    iget-object v0, p0, Lfbc;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 9043
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->b:Lbyc;

    .line 1099
    invoke-virtual {v0}, Lbyc;->notifyDataSetChanged()V

    goto :goto_0
.end method
