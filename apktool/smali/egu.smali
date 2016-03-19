.class public final Legu;
.super Lefo;
.source "SourceFile"


# static fields
.field private static final d:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lezi;->d:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Legu;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILczb;J)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1, p3, p4, p5}, Lefo;-><init>(Ljava/lang/String;Lczb;J)V

    .line 47
    iput p2, p0, Legu;->e:I

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Legu;->f:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lkek;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 32
    iget-object v0, p1, Lkek;->a:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    iget-object v1, p1, Lkek;->b:Lkcr;

    const/4 v2, 0x0

    .line 34
    invoke-static {v1, v2}, Laal;->a(Lkcr;Ljava/lang/String;)Lczb;

    move-result-object v1

    iget-object v2, p1, Lkek;->c:Ljava/lang/Long;

    .line 1051
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 32
    invoke-direct {p0, v0, v1, v2, v3}, Lefo;-><init>(Ljava/lang/String;Lczb;J)V

    .line 36
    iget-object v0, p1, Lkek;->d:Ljava/lang/Integer;

    .line 2043
    invoke-static {v0, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 36
    iput v0, p0, Legu;->e:I

    .line 37
    iget-object v0, p1, Lkek;->e:Ljava/lang/Integer;

    .line 3043
    invoke-static {v0, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 37
    iput v0, p0, Legu;->f:I

    .line 38
    return-void
.end method


# virtual methods
.method protected a(Lbfz;Ldyy;)V
    .locals 12

    .prologue
    .line 62
    sget-boolean v0, Legu;->d:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "processFocus conversationId: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Legu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Legu;->b()Lczb;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Legu;->d()I

    move-result v3

    .line 73
    invoke-virtual {p0}, Legu;->c()J

    move-result-wide v4

    new-instance v6, Ljava/util/Date;

    .line 75
    invoke-virtual {p0}, Legu;->c()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x44

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " senderId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and timestamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    invoke-virtual {p1}, Lbfz;->a()V

    .line 81
    :try_start_0
    invoke-virtual {p0}, Legu;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 82
    const-string v0, "Babel_ConversationsData"

    const-string v1, "Received a Presence message without conversation id"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p1}, Lbfz;->c()V

    .line 97
    return-void

    .line 84
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Legu;->a()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->b()Lczb;

    move-result-object v0

    invoke-virtual {p0}, Legu;->b()Lczb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lczb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0}, Legu;->b()Lczb;

    move-result-object v2

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0}, Legu;->d()I

    move-result v3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    .line 88
    :goto_1
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ljava/lang/String;Lczb;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0

    .line 91
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public d()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Legu;->e:I

    return v0
.end method
