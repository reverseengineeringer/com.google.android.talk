.class public final Ledh;
.super Ledk;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method public constructor <init>(Legk;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ledk;-><init>()V

    .line 116
    invoke-virtual {p1}, Legk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledh;->a:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Legk;->b()I

    move-result v0

    iput v0, p0, Ledh;->b:I

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ledk;-><init>()V

    .line 121
    iput-object p1, p0, Ledh;->a:Ljava/lang/String;

    .line 122
    iput p2, p0, Ledh;->b:I

    .line 123
    return-void
.end method

.method private b(Lbfz;)V
    .locals 7

    .prologue
    .line 164
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "Babel"

    const-string v1, "updateConversationNotificationLevelLocally conversationId: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ledh;->a:Ljava/lang/String;

    iget v3, p0, Ledh;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notificationLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_0
    invoke-virtual {p1}, Lbfz;->a()V

    .line 173
    :try_start_0
    iget-object v0, p0, Ledh;->a:Ljava/lang/String;

    iget v1, p0, Ledh;->b:I

    invoke-virtual {p1, v0, v1}, Lbfz;->a(Ljava/lang/String;I)V

    .line 174
    invoke-direct {p0, p1}, Ledh;->c(Lbfz;)V

    .line 175
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {p1}, Lbfz;->c()V

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method

.method private c(Lbfz;)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Ledh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbfz;->ae(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    iget v2, p0, Ledh;->b:I

    invoke-virtual {p1, v0, v2}, Lbfz;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbfz;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Ledh;->b(Lbfz;)V

    .line 155
    return-void
.end method

.method public a(Lbfz;Ldyy;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x10

    const-wide/16 v2, 0x8

    .line 128
    invoke-direct {p0, p1}, Ledh;->b(Lbfz;)V

    .line 129
    iget-object v0, p0, Ledh;->a:Ljava/lang/String;

    invoke-static {v0}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Ledh;->b:I

    sparse-switch v0, :sswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 132
    :sswitch_0
    iget-object v0, p0, Ledh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Lbfz;->m(Ljava/lang/String;J)V

    .line 134
    iget-object v0, p0, Ledh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v4, v5}, Lbfz;->l(Ljava/lang/String;J)V

    goto :goto_0

    .line 139
    :sswitch_1
    iget-object v0, p0, Ledh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Lbfz;->l(Ljava/lang/String;J)V

    .line 141
    iget-object v0, p0, Ledh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v4, v5}, Lbfz;->m(Ljava/lang/String;J)V

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Ldph;

    iget-object v1, p0, Ledh;->a:Ljava/lang/String;

    iget v2, p0, Ledh;->b:I

    invoke-direct {v0, v1, v2}, Ldph;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Ldyy;->a(Leff;)V

    goto :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_1
    .end sparse-switch
.end method
