.class public Ldou;
.super Ldor;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:J

.field public final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3417
    invoke-direct {p0, p1}, Ldor;-><init>(Ljava/lang/String;)V

    .line 3418
    iput-wide p2, p0, Ldou;->a:J

    .line 3419
    iput-object p4, p0, Ldou;->b:[Ljava/lang/String;

    .line 3420
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3450
    const-string v0, "event_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 5

    .prologue
    .line 4205
    sget-boolean v0, Ldoo;->e:Z

    .line 3425
    if-eqz v0, :cond_0

    .line 3426
    iget-object v0, p0, Ldou;->c:Ljava/lang/String;

    iget-wide v2, p0, Ldou;->a:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x29

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Delete conversation "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3428
    :cond_0
    new-instance v0, Ljyn;

    invoke-direct {v0}, Ljyn;-><init>()V

    .line 3430
    iget-object v1, p0, Ldou;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Ljyn;->requestHeader:Lkdo;

    .line 3432
    iget-object v1, p0, Ldou;->c:Ljava/lang/String;

    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v0, Ljyn;->b:Ljxw;

    .line 3433
    iget-object v1, p0, Ldou;->b:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3434
    iget-object v1, p0, Ldou;->b:[Ljava/lang/String;

    iput-object v1, v0, Ljyn;->d:[Ljava/lang/String;

    .line 3435
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljyn;->a:Ljava/lang/Integer;

    .line 3440
    :goto_0
    return-object v0

    .line 3437
    :cond_1
    iget-wide v2, p0, Ldou;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljyn;->c:Ljava/lang/Long;

    .line 3438
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljyn;->a:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 4

    .prologue
    .line 3460
    const-string v0, "Babel_RequestWriter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3461
    const-string v1, "Babel_RequestWriter"

    const-string v2, "DeleteConversationRequest: expired for "

    iget-object v0, p0, Ldou;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3463
    :cond_0
    invoke-super {p0, p1, p2}, Ldor;->a(Lbfd;Ldvn;)V

    .line 3464
    iget-boolean v0, p0, Ldou;->d:Z

    if-nez v0, :cond_1

    .line 3468
    iget-object v0, p0, Ldou;->c:Ljava/lang/String;

    iget-object v1, p0, Ldou;->b:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3470
    :cond_1
    return-void

    .line 3461
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 3455
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3445
    const-string v0, "conversations/deleteconversation"

    return-object v0
.end method
