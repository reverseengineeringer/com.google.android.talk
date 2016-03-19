.class public final Lehi;
.super Leht;
.source "SourceFile"


# static fields
.field private static final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lehi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z

.field final b:Leap;

.field volatile c:Z

.field final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lbfd;

.field private g:Lbfz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lehi;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Lbfd;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Leht;-><init>()V

    .line 42
    new-instance v0, Lehj;

    invoke-direct {v0, p0}, Lehj;-><init>(Lehi;)V

    iput-object v0, p0, Lehi;->b:Leap;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lehi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    iput-object p1, p0, Lehi;->f:Lbfd;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lehi;->g:Lbfz;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lehi;->c:Z

    .line 161
    return-void
.end method

.method public static a(Lbfd;)Lehi;
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    .line 88
    sget-object v0, Lehi;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehi;

    .line 90
    if-nez v0, :cond_1

    .line 91
    const-string v0, "Babel"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "Babel"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Adding contact loader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_0
    new-instance v0, Lehi;

    invoke-direct {v0, p0}, Lehi;-><init>(Lbfd;)V

    .line 100
    sget-object v2, Lehi;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lehi;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehi;

    .line 104
    :cond_1
    return-object v0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 144
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Removing conversation loader for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_0
    sget-object v0, Lehi;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "ConversationLoader"

    return-object v0
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1186
    iget-object v1, p0, Lehi;->g:Lbfz;

    if-nez v1, :cond_0

    .line 1187
    new-instance v1, Lbfz;

    .line 2036
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 1187
    iget-object v4, p0, Lehi;->f:Lbfd;

    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lbfz;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lehi;->g:Lbfz;

    .line 1189
    :cond_0
    iget-object v1, p0, Lehi;->g:Lbfz;

    invoke-virtual {v1, v0}, Lbfz;->f(Ljava/lang/String;)Lbgd;

    move-result-object v3

    .line 1190
    if-nez v3, :cond_3

    .line 2164
    iget-boolean v1, p0, Lehi;->c:Z

    if-nez v1, :cond_1

    .line 2165
    iget-object v1, p0, Lehi;->b:Leap;

    invoke-static {v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 2166
    iput-boolean v5, p0, Lehi;->c:Z

    .line 1192
    :cond_1
    const/4 v1, 0x0

    .line 1195
    iget-boolean v4, p0, Lehi;->a:Z

    if-nez v4, :cond_2

    .line 1196
    iget-object v1, p0, Lehi;->f:Lbfd;

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l(Lbfd;Ljava/lang/String;)I

    move-result v1

    .line 1197
    iput-boolean v5, p0, Lehi;->a:Z

    .line 1199
    :cond_2
    if-nez v1, :cond_4

    .line 1202
    new-instance v1, Lehk;

    invoke-direct {v1, p0, v0}, Lehk;-><init>(Lehi;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lehi;->a(Ljava/lang/Runnable;)V

    .line 1213
    :cond_3
    new-instance v1, Lehl;

    invoke-direct {v1, p0, v0, v3}, Lehl;-><init>(Lehi;Ljava/lang/String;Lbgd;)V

    invoke-virtual {p0, v1}, Lehi;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1209
    :cond_4
    iget-object v3, p0, Lehi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_5
    return-void
.end method
