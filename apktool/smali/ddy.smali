.class public final Lddy;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lebi;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbfb;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;Lebi;Ljava/lang/String;Lbfb;II)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lddy;->f:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    iput-object p2, p0, Lddy;->a:Lebi;

    iput-object p3, p0, Lddy;->b:Ljava/lang/String;

    iput-object p4, p0, Lddy;->c:Lbfb;

    iput p5, p0, Lddy;->d:I

    iput p6, p0, Lddy;->e:I

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILbfd;Ldwd;Leau;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 934
    iget-object v0, p0, Lddy;->a:Lebi;

    invoke-virtual {v0}, Lebi;->a()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 960
    :goto_0
    return-void

    .line 937
    :cond_0
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 938
    if-nez p3, :cond_1

    .line 939
    const-string v0, "Babel_HomeActivity"

    iget-object v1, p0, Lddy;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "creating conversation with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resulting in null ConversationResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 946
    :cond_1
    new-instance v0, Laxj;

    iget-object v1, p3, Ldwd;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Laxj;-><init>(Ljava/lang/String;I)V

    .line 950
    const/4 v1, 0x1

    iput-boolean v1, v0, Laxj;->d:Z

    .line 951
    iget-object v1, p0, Lddy;->c:Lbfb;

    iput-object v1, v0, Laxj;->f:Lbfb;

    .line 952
    iget v1, p0, Lddy;->d:I

    iput v1, v0, Laxj;->k:I

    .line 955
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 956
    const-string v2, "conversation_id"

    iget-object v3, v0, Laxj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lddy;->c:Lbfb;

    iget-object v3, v3, Lbfb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    iget-object v2, p0, Lddy;->f:Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    iget v3, p0, Lddy;->e:I

    .line 1139
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;->a(Laxj;Landroid/content/Intent;I)V

    goto :goto_0
.end method
