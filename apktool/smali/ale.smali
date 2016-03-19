.class final Lale;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lakj;
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lakj",
        "<TR;>;",
        "Lavy;"
    }
.end annotation


# static fields
.field private static final k:Lalf;

.field private static final l:Landroid/os/Handler;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laul;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lawa;

.field final c:Lalh;

.field d:Laiw;

.field e:Z

.field f:Lalr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalr",
            "<*>;"
        }
    .end annotation
.end field

.field g:Lair;

.field h:Z

.field i:Lalk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalk",
            "<*>;"
        }
    .end annotation
.end field

.field volatile j:Z

.field private final m:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<",
            "Lale",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final n:Lalf;

.field private final o:Lanm;

.field private final p:Lanm;

.field private q:Lalm;

.field private r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laul;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lakh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakh",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lalf;

    invoke-direct {v0}, Lalf;-><init>()V

    sput-object v0, Lale;->k:Lalf;

    .line 26
    new-instance v0, Landroid/os/Handler;

    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lalg;

    .line 1269
    invoke-direct {v2}, Lalg;-><init>()V

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lale;->l:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method constructor <init>(Lanm;Lanm;Lalh;Lic;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanm;",
            "Lanm;",
            "Lalh;",
            "Lic",
            "<",
            "Lale",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v5, Lale;->k:Lalf;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lale;-><init>(Lanm;Lanm;Lalh;Lic;Lalf;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lanm;Lanm;Lalh;Lic;Lalf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanm;",
            "Lanm;",
            "Lalh;",
            "Lic",
            "<",
            "Lale",
            "<*>;>;",
            "Lalf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lale;->a:Ljava/util/List;

    .line 1016
    new-instance v0, Lawb;

    .line 1033
    invoke-direct {v0}, Lawb;-><init>()V

    .line 36
    iput-object v0, p0, Lale;->b:Lawa;

    .line 68
    iput-object p1, p0, Lale;->o:Lanm;

    .line 69
    iput-object p2, p0, Lale;->p:Lanm;

    .line 70
    iput-object p3, p0, Lale;->c:Lalh;

    .line 71
    iput-object p4, p0, Lale;->m:Lic;

    .line 72
    iput-object p5, p0, Lale;->n:Lalf;

    .line 73
    return-void
.end method


# virtual methods
.method a(Laiw;Z)Lale;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laiw;",
            "Z)",
            "Lale",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lale;->d:Laiw;

    .line 78
    iput-boolean p2, p0, Lale;->e:Z

    .line 79
    return-object p0
.end method

.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lale;->b:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 236
    iget-boolean v0, p0, Lale;->j:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, v3}, Lale;->a(Z)V

    .line 255
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lale;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    iget-boolean v0, p0, Lale;->r:Z

    if-eqz v0, :cond_2

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lale;->r:Z

    .line 246
    iget-object v0, p0, Lale;->c:Lalh;

    iget-object v1, p0, Lale;->d:Laiw;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lalh;->a(Laiw;Lalk;)V

    .line 248
    iget-object v0, p0, Lale;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laul;

    .line 249
    invoke-virtual {p0, v0}, Lale;->c(Laul;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 250
    iget-object v2, p0, Lale;->q:Lalm;

    invoke-interface {v0, v2}, Laul;->a(Lalm;)V

    goto :goto_1

    .line 254
    :cond_4
    invoke-virtual {p0, v3}, Lale;->a(Z)V

    goto :goto_0
.end method

.method public a(Lakh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakh",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 227
    iget-boolean v0, p0, Lale;->j:Z

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lale;->l:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lale;->p:Lanm;

    invoke-virtual {v0, p1}, Lanm;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lalm;)V
    .locals 2

    .prologue
    .line 221
    iput-object p1, p0, Lale;->q:Lalm;

    .line 222
    sget-object v0, Lale;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    return-void
.end method

.method public a(Lalr;Lair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<TR;>;",
            "Lair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lale;->f:Lalr;

    .line 215
    iput-object p2, p0, Lale;->g:Lair;

    .line 216
    sget-object v0, Lale;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    return-void
.end method

.method public a(Laul;)V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lavq;->a()V

    .line 90
    iget-object v0, p0, Lale;->b:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 91
    iget-boolean v0, p0, Lale;->h:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lale;->i:Lalk;

    iget-object v1, p0, Lale;->g:Lair;

    invoke-interface {p1, v0, v1}, Laul;->a(Lalr;Lair;)V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-boolean v0, p0, Lale;->r:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lale;->q:Lalm;

    invoke-interface {p1, v0}, Laul;->a(Lalm;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lale;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-static {}, Lavq;->a()V

    .line 195
    iget-object v0, p0, Lale;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    iput-object v1, p0, Lale;->d:Laiw;

    .line 197
    iput-object v1, p0, Lale;->i:Lalk;

    .line 198
    iput-object v1, p0, Lale;->f:Lalr;

    .line 199
    iget-object v0, p0, Lale;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lale;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    :cond_0
    iput-boolean v2, p0, Lale;->r:Z

    .line 203
    iput-boolean v2, p0, Lale;->j:Z

    .line 204
    iput-boolean v2, p0, Lale;->h:Z

    .line 205
    iget-object v0, p0, Lale;->t:Lakh;

    invoke-virtual {v0, p1}, Lakh;->a(Z)V

    .line 206
    iput-object v1, p0, Lale;->t:Lakh;

    .line 207
    iput-object v1, p0, Lale;->q:Lalm;

    .line 208
    iput-object v1, p0, Lale;->g:Lair;

    .line 209
    iget-object v0, p0, Lale;->m:Lic;

    invoke-interface {v0, p0}, Lic;->a(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public b(Lakh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakh",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lale;->t:Lakh;

    .line 84
    invoke-virtual {p1}, Lakh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lale;->o:Lanm;

    .line 85
    :goto_0
    invoke-virtual {v0, p1}, Lanm;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lale;->p:Lanm;

    goto :goto_0
.end method

.method public b(Laul;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-static {}, Lavq;->a()V

    .line 102
    iget-object v0, p0, Lale;->b:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 103
    iget-boolean v0, p0, Lale;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lale;->r:Z

    if-eqz v0, :cond_3

    .line 1119
    :cond_0
    iget-object v0, p0, Lale;->s:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lale;->s:Ljava/util/List;

    .line 1122
    :cond_1
    iget-object v0, p0, Lale;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1123
    iget-object v0, p0, Lale;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_2
    :goto_0
    return-void

    .line 106
    :cond_3
    iget-object v0, p0, Lale;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lale;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1133
    iget-boolean v0, p0, Lale;->r:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lale;->h:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lale;->j:Z

    if-nez v0, :cond_2

    .line 1137
    iput-boolean v1, p0, Lale;->j:Z

    .line 1138
    iget-object v0, p0, Lale;->t:Lakh;

    invoke-virtual {v0}, Lakh;->b()V

    .line 1139
    iget-object v0, p0, Lale;->o:Lanm;

    iget-object v2, p0, Lale;->t:Lakh;

    .line 1140
    invoke-virtual {v0, v2}, Lanm;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lale;->p:Lanm;

    iget-object v2, p0, Lale;->t:Lakh;

    invoke-virtual {v0, v2}, Lanm;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 1141
    :goto_1
    iget-object v2, p0, Lale;->c:Lalh;

    iget-object v3, p0, Lale;->d:Laiw;

    invoke-virtual {v2, p0, v3}, Lalh;->a(Lale;Laiw;)V

    .line 1143
    if-eqz v0, :cond_2

    .line 1144
    invoke-virtual {p0, v1}, Lale;->a(Z)V

    goto :goto_0

    .line 1140
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(Laul;)Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lale;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lale;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i_()Lawa;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lale;->b:Lawa;

    return-object v0
.end method
