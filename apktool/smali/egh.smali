.class public final Legh;
.super Lefo;
.source "SourceFile"


# static fields
.field private static final d:Z


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Legi;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lezi;->d:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Legh;->d:Z

    return-void
.end method

.method public constructor <init>(Lkbt;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v0, v2, v3}, Lefo;-><init>(Ljava/lang/String;Lczb;J)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Legh;->e:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Legh;->f:Ljava/util/List;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v4, p1, Lkbt;->a:[Lkcm;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 58
    iget-object v6, v0, Lkcm;->a:Ljxw;

    if-nez v6, :cond_1

    .line 59
    const-string v0, "Babel_ConversationsData"

    const-string v6, "Empty conversationId in ClientMarkEventObservedNotification from the server."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 64
    :cond_1
    iget-object v6, v0, Lkcm;->a:Ljxw;

    iget-object v6, v6, Ljxw;->a:Ljava/lang/String;

    .line 65
    const-string v7, "conid: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v7, v0, Lkcm;->b:[Lkcn;

    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_0

    aget-object v9, v7, v0

    .line 68
    iget-object v10, v9, Lkcn;->a:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 69
    const-string v9, "Babel_ConversationsData"

    const-string v10, "Empty eventId in ClientMarkEventObservedNotification from the server."

    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_2
    iget-object v10, v9, Lkcn;->a:Ljava/lang/String;

    .line 73
    iget-object v9, v9, Lkcn;->c:Ljava/lang/Integer;

    .line 1043
    invoke-static {v9, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v9

    .line 74
    iget-object v11, p0, Legh;->e:Ljava/util/List;

    new-instance v12, Legi;

    invoke-direct {v12, v6, v10, v9}, Legi;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v9, p0, Legh;->f:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v9, "msgid: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Legh;->g:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method protected a(Lbfz;Ldyy;)V
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 1319
    sget-object v1, Ldvp;->v:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    .line 101
    if-nez v0, :cond_1

    .line 121
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p1}, Lbfz;->a()V

    .line 2135
    :try_start_0
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 2319
    sget-object v1, Ldvp;->v:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v1

    .line 2136
    if-eqz v1, :cond_2

    .line 2345
    sget-object v1, Ldvp;->x:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v1

    .line 2137
    if-eqz v1, :cond_2

    .line 2138
    invoke-virtual {p2, v0}, Ldyy;->a(I)V

    .line 2140
    :cond_2
    invoke-virtual {p0}, Legh;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbfz;->a(Ljava/util/List;)V

    .line 2633
    sget-object v1, Ldvp;->V:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v1

    .line 2144
    if-eqz v1, :cond_3

    .line 2145
    const/16 v1, 0xa76

    .line 2148
    invoke-virtual {p0}, Legh;->d()Ljava/lang/String;

    move-result-object v2

    .line 2145
    invoke-static {v0, v1, v2}, Laal;->a(IILjava/lang/String;)V

    .line 112
    :cond_3
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {p1}, Lbfz;->c()V

    .line 117
    invoke-virtual {p0}, Legh;->f()Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-static {p1, v0}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Legh;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Legi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Legh;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Legh;->f:Ljava/util/List;

    return-object v0
.end method
