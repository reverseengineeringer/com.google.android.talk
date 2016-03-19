.class public final Legv;
.super Lefo;
.source "SourceFile"


# static fields
.field private static final d:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lezi;->d:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Legv;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lczb;JI)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lefo;-><init>(Ljava/lang/String;Lczb;J)V

    .line 46
    iput p5, p0, Legv;->e:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lker;)V
    .locals 6

    .prologue
    .line 32
    iget-object v0, p1, Lker;->a:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    iget-object v1, p1, Lker;->b:Lkcr;

    const/4 v2, 0x0

    .line 34
    invoke-static {v1, v2}, Laal;->a(Lkcr;Ljava/lang/String;)Lczb;

    move-result-object v1

    iget-object v2, p1, Lker;->c:Ljava/lang/Long;

    .line 1051
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 32
    invoke-direct {p0, v0, v1, v2, v3}, Lefo;-><init>(Ljava/lang/String;Lczb;J)V

    .line 36
    iget-object v0, p1, Lker;->d:Ljava/lang/Integer;

    .line 2043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 36
    iput v0, p0, Legv;->e:I

    .line 37
    return-void
.end method


# virtual methods
.method protected a(Lbfz;Ldyy;)V
    .locals 12

    .prologue
    .line 56
    sget-boolean v0, Legv;->d:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "processTyping senderId: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Legv;->b()Lczb;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Legv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Legv;->d()I

    move-result v3

    .line 67
    invoke-virtual {p0}, Legv;->c()J

    move-result-wide v4

    new-instance v6, Ljava/util/Date;

    .line 69
    invoke-virtual {p0}, Legv;->c()J

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

    add-int/lit8 v8, v8, 0x46

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

    const-string v1, " conversationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp "

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

    .line 72
    :cond_0
    invoke-virtual {p1}, Lbfz;->a()V

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lbfd;->b()Lczb;

    move-result-object v1

    invoke-virtual {p0}, Legv;->b()Lczb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lczb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    invoke-virtual {p0}, Legv;->a()Ljava/lang/String;

    move-result-object v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    const-string v0, "Babel_ConversationsData"

    const-string v1, "attempt to process typing for a nonexistent conversation id [null]"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p1}, Lbfz;->c()V

    .line 94
    return-void

    .line 81
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Legv;->b()Lczb;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbfz;->a(Lczb;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {p0}, Legv;->b()Lczb;

    move-result-object v2

    .line 87
    invoke-virtual {p0}, Legv;->c()J

    move-result-wide v4

    .line 88
    invoke-virtual {p0}, Legv;->d()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    .line 82
    :goto_1
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Lczb;Ljava/lang/String;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0

    .line 88
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public d()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Legv;->e:I

    return v0
.end method
